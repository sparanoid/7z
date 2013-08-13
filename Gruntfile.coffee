"use strict"
module.exports = (grunt) ->

  # Load all grunt tasks
  matchdep = require("matchdep")
  matchdep.filterDev("grunt-*").forEach grunt.loadNpmTasks

  # Configurable paths
  coreConfig =
    cfg: grunt.file.readYAML("_config.yml")
    pkg: grunt.file.readJSON("package.json")
    app: "<%= core.cfg.source %>"
    dist: "<%= core.cfg.destination %>"
    banner: do ->
      banner = "/*!\n"
      banner += " * (c) <%= core.pkg.author %>.\n *\n"
      banner += " * <%= core.pkg.name %> - v<%= core.pkg.version %> (<%= grunt.template.today('mm-dd-yyyy') %>)\n"
      banner += " * <%= core.pkg.homepage %>\n"
      banner += " * <%= core.pkg.licenses.type %> - <%= core.pkg.licenses.url %>\n"
      banner += " */"
      banner

  # Project configurations
  grunt.initConfig
    core: coreConfig

    coffeelint:
      options:
        indentation: 2
        no_stand_alone_at:
          level: "error"
        no_empty_param_list:
          level: "error"
        max_line_length:
          level: "ignore"

      test:
        files:
          src: ["Gruntfile.coffee"]

    recess:
      test:
        files:
          src: ["<%= core.app %>/css/a.less"]

    watch:
      coffee:
        files: ["<%= coffeelint.test.files.src %>"]
        tasks: ["coffeelint"]

      less:
        files: ["<%= recess.test.files.src %>"]
        tasks: ["less:server", "recess"]

    less:
      server:
        options:
          paths: ["<%= core.app %>/css"]
          dumpLineNumbers: "all"

        files:
          "<%= core.app %>/css/a.css": ["<%= core.app %>/css/a.less"]

      dist:
        options:
          paths: ["<%= core.app %>/css"]

        files:
          "<%= core.app %>/css/a.css": ["<%= core.app %>/css/a.less"]

    htmlmin:
      dist:
        options:
          removeComments: true
          removeCommentsFromCDATA: true
          removeCDATASectionsFromCDATA: true
          collapseWhitespace: true
          collapseBooleanAttributes: true
          removeAttributeQuotes: true
          removeRedundantAttributes: true
          useShortDoctype: false
          removeEmptyAttributes: true
          removeOptionalTags: false
          removeEmptyElements: false

        files: [
          expand: true
          cwd: "<%= core.dist %>"
          src: "**/*.html"
          dest: "<%= core.dist %>/"
        ]

    xmlmin:
      dist:
        files: [
          expand: true
          cwd: "<%= core.dist %>"
          src: "**/*.xml"
          dest: "<%= core.dist %>/"
        ]

    cssmin:
      dist:
        options:
          banner: "<%= core.banner %>"
          report: "gzip"

        files:
          "<%= core.dist %>/css/a.css": ["<%= core.dist %>/css/*.css"]

      # html:
      #   expand: true
      #   cwd: "<%= core.dist %>"
      #   src: "**/*.html"
      #   dest: "<%= core.dist %>"

    shell:
      options:
        stdout: true

      server:
        command: "jekyll serve --watch --future"

      dist:
        command: "jekyll build"

      archive:
        command: "jekyll build --baseurl <%= core.cfg.base %>/ -d <%= core.cfg.destination %><%= core.cfg.base %>/"

      sync:
        command: "rsync -avz --delete --progress <%= core.cfg.ignore_files %> <%= core.dist %>/ <%= core.cfg.remote_host %>:<%= core.cfg.remote_dir %> > rsync.log"

      s3:
        command: "s3cmd sync -rP --guess-mime-type --delete-removed --no-preserve --cf-invalidate --exclude '.DS_Store' <%= core.cfg.static_files %> <%= core.cfg.s3_bucket %>"

      log:
        command: "git log v<%= core.pkg.version %>..HEAD --reverse --format=%B | sed '/^$/d' | sed 's/^/- /'"

    concurrent:
      options:
        logConcurrentOutput: true

      server:
        tasks: ["shell:server", "watch"]

      dist:
        tasks: ["htmlmin", "xmlmin", "cssmin"]


    clean: [".tmp", "<%= core.dist %>/*"]

  # Fire up a server on local machine for development
  grunt.registerTask "server", ["less:server", "concurrent"]

  # Test task
  grunt.registerTask "test", ["coffeelint", "recess"]

  # Build site with `jekyll`
  grunt.registerTask "build", ["clean", "test", "less:dist", "shell:dist", "concurrent:dist"]

  # Archive old version with specific URL prefix, all old versions goes to http://sparanoid.com/lab/version/
  grunt.registerTask "archive", ["build", "shell:archive", "concurrent:dist"]

  # Build site + rsync static files to remote server
  grunt.registerTask "sync", ["build", "shell:sync"]

  # Sync image assets with `s3cmd`
  grunt.registerTask "s3", ["shell:s3"]

  # Dump git log
  grunt.registerTask "log", ["shell:log"]

  # Default task aka. build task
  grunt.registerTask "default", ["build"]

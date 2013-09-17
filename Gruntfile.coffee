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
      options:
        noUniversalSelectors: false

      test:
        files:
          src: ["<%= core.app %>/assets/less/app.less"]

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
          dumpLineNumbers: "all"

        files:
          "<%= core.app %>/assets/css/app.css": ["<%= recess.test.files.src %>"]

      dist:
        files:
          "<%= core.app %>/assets/css/app.css": ["<%= recess.test.files.src %>"]

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
          removeEmptyAttributes: false
          removeOptionalTags: false
          removeEmptyElements: false

        files: [
          expand: true
          cwd: "<%= core.dist %>"
          src: "**/*.html"
          dest: "<%= core.dist %>/"
        ]

    cssmin:
      dist:
        options:
          banner: "<%= core.banner %>"
          report: "gzip"

        files:
          "<%= core.dist %>/assets/css/app.css": ["<%= core.dist %>/assets/css/*.css"]

    rev:
      options:
        encoding: "utf8"
        algorithm: "md5"
        length: 6

      files:
        src: ["<%= core.dist %>/assets/css/*.css"]

    useminPrepare:
      html: "<%= core.dist %>/index.html"

    usemin:
      options:
        dirs: ["<%= core.dist %>"]

      html: ["<%= core.dist %>/**/*.html"]
      css: ["<%= core.dist %>/assets/css/**/*.css"]

    shell:
      options:
        stdout: true

      server:
        command: "jekyll serve --watch --future"

      dist:
        command: "jekyll build"

      sync:
        command: "rsync -avz --delete --progress <%= core.cfg.ignore_files %> <%= core.dist %>/ <%= core.cfg.remote_host %>:<%= core.cfg.remote_dir %> > rsync.log"

    copy:
      sync:
        files: [
          expand: true
          dot: true
          cwd: "<%= core.dist %>/"
          src: ["**"]
          dest: "/Users/sparanoid/Dropbox/Sites/sparanoid.com/lab/<%= core.pkg.name %>/"
        ]

    clean:
      dist:
        files: [
          dot: true
          src: [".tmp", "<%= core.dist %>/*"]
        ]

      sync:
        options:
          force: true

        files: [
          src: "/Users/sparanoid/Dropbox/Sites/sparanoid.com/lab/<%= core.pkg.name %>/"
        ]

    concurrent:
      options:
        logConcurrentOutput: true

      server:
        tasks: ["shell:server", "watch"]

      dist:
        # `htmlmin` doens't work well with 7z's old table-layout template
        # tasks: ["htmlmin", "cssmin"]
        tasks: ["cssmin"]

  # Fire up a server on local machine for development
  grunt.registerTask "server", ["less:server", "concurrent"]

  # Test task
  grunt.registerTask "test", ["coffeelint", "recess"]

  # Build site with `jekyll`
  grunt.registerTask "build", ["clean:dist", "test", "less:dist", "shell:dist", "useminPrepare", "concurrent:dist", "rev", "usemin"]

  # Build site + rsync static files to remote server
  grunt.registerTask "sync", ["build", "clean:sync", "copy:sync"]

  # Default task aka. build task
  grunt.registerTask "default", ["build"]

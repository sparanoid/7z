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
      banner += " * <%= core.pkg.license.type %> - <%= core.pkg.license.url %>\n"
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
          src: ["<%= core.app %>/a.less"]

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
          paths: ["<%= core.app %>"]
          dumpLineNumbers: "all"

        files:
          "<%= core.app %>/a.css": ["<%= core.app %>/a.less"]

      dist:
        options:
          paths: ["<%= core.app %>"]

        files:
          "<%= core.app %>/a.css": ["<%= core.app %>/a.less"]

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

    cssmin:
      dist:
        options:
          banner: "<%= core.banner %>"
          report: "gzip"

        files:
          "<%= core.dist %>/a.css": ["<%= core.dist %>/*.css"]

    shell:
      options:
        stdout: true

      server:
        command: "jekyll serve --watch"

      dist:
        command: "jekyll build"

      sync:
        command: "rsync -avz --delete <%= core.cfg.ignore_files %> <%= core.dist %>/ <%= core.cfg.remote_user %>:<%= core.cfg.remote_dir %> > rsync.log"

      log:
        command: "git log <%= core.pkg.version %>..HEAD --reverse --format=%B | sed '/^$/d' | sed 's/^/- /'"

    concurrent:
      options:
        logConcurrentOutput: true

      server:
        tasks: ["shell:server", "watch"]

      dist:
        # tasks: ["htmlmin", "cssmin"]
        tasks: ["cssmin"]


    clean: [".tmp", "<%= core.dist %>/*"]

  grunt.registerTask "server", ["less:server", "concurrent:server"]
  grunt.registerTask "test", ["coffeelint", "recess"]
  grunt.registerTask "build", ["clean", "test", "less:dist", "shell:dist", "concurrent:dist"]
  grunt.registerTask "sync", ["build", "shell:sync"]
  grunt.registerTask "log", ["shell:log"]
  grunt.registerTask "default", ["build"]

"use strict"
module.exports = (grunt) ->

  # Load all grunt tasks
  require("matchdep").filterDev("grunt-*").forEach grunt.loadNpmTasks

  # Project configurations
  grunt.initConfig
    config:
      cfg: grunt.file.readYAML("_config.yml")
      pkg: grunt.file.readJSON("package.json")
      app: "<%= config.cfg.source %>"
      dist: "<%= config.cfg.destination %>"
      banner: do ->
        banner = "/*!\n"
        banner += " * (c) <%= config.pkg.author %>.\n *\n"
        banner += " * <%= config.pkg.name %> - v<%= config.pkg.version %> (<%= grunt.template.today('mm-dd-yyyy') %>)\n"
        banner += " * <%= config.pkg.homepage %>\n"
        banner += " * <%= config.pkg.licenses.type %> - <%= config.pkg.licenses.url %>\n"
        banner += " */"
        banner

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
        src: ["Gruntfile.coffee"]

    watch:
      coffee:
        files: ["<%= coffeelint.test.src %>"]
        tasks: ["coffeelint"]

      less:
        files: ["<%= config.app %>/assets/less/**/*.less"]
        tasks: ["less:server"]

    less:
      server:
        options:
          strictMath: true
          sourceMap: true
          outputSourceFiles: true
          sourceMapURL: "app.css.map"
          sourceMapFilename: "<%= config.app %>/assets/css/app.css.map"

        src: ["<%= config.app %>/assets/less/app.less"]
        dest: "<%= config.app %>/assets/css/app.css"

      dist:
        src: ["<%= less.server.src %>"]
        dest: "<%= less.server.dest %>"

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
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>/"
        ]

    cssmin:
      dist:
        options:
          banner: "<%= config.banner %>"
          report: "gzip"

        files: [
          expand: true
          cwd: "<%= config.dist %>/assets/css/"
          src: ["*.css", "!*.min.css"]
          dest: "<%= config.dist %>/assets/css/"
        ]

    rev:
      options:
        encoding: "utf8"
        algorithm: "md5"
        length: 6

      files:
        src: ["<%= config.dist %>/assets/css/*.css"]

    useminPrepare:
      html: "<%= config.dist %>/index.html"

    usemin:
      options:
        dirs: ["<%= config.dist %>"]

      html: ["<%= config.dist %>/**/*.html"]
      css: ["<%= config.dist %>/assets/css/**/*.css"]

    smoosher:
      options:
        jsDir: "<%= config.dist %>"
        cssDir: "<%= config.dist %>"

      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>/"
        ]

    shell:
      options:
        stdout: true

      server:
        command: "jekyll serve --watch --future"

      dist:
        command: "jekyll build"

      sync:
        command: "rsync -avz --delete --progress <%= config.cfg.ignore_files %> <%= config.dist %>/ <%= config.cfg.remote_host %>:<%= config.cfg.remote_dir %> > rsync.log"

    copy:
      sync:
        files: [
          expand: true
          dot: true
          cwd: "<%= config.dist %>/"
          src: ["**"]
          dest: "/Users/sparanoid/Dropbox/Sites/sparanoid.com/lab/<%= config.pkg.name %>/"
        ]

    clean:
      dist:
        files: [
          dot: true
          src: [".tmp", "<%= config.dist %>/*"]
        ]

      sync:
        options:
          force: true

        files: [
          src: "/Users/sparanoid/Dropbox/Sites/sparanoid.com/lab/<%= config.pkg.name %>/"
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
  grunt.registerTask "serve", [
    "less:server"
    "concurrent"
  ]

  # Test task
  grunt.registerTask "test", ["coffeelint"]

  # Build site with `jekyll`
  grunt.registerTask "build", [
    "clean:dist"
    "test"
    "less:dist"
    "shell:dist"
    "useminPrepare"
    "rev"
    "usemin"
    "concurrent:dist"
  ]

  # Build site + rsync static files to remote server
  grunt.registerTask "sync", [
    "build"
    "clean:sync"
    "copy:sync"
  ]

  # Default task aka. build task
  grunt.registerTask "default", ["build"]

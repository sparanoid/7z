"use strict"
module.exports = (grunt) ->

  # Load all grunt tasks
  require("matchdep").filterDev("grunt-*").forEach grunt.loadNpmTasks

  # Track tasks load time
  require("time-grunt") grunt

  # Project configurations
  grunt.initConfig
    config:
      cfg: grunt.file.readYAML("_config.yml")
      pkg: grunt.file.readJSON("package.json")
      app: "<%= config.cfg.source %>"
      dist: "<%= config.cfg.destination %>"
      banner: do ->
        banner = "<!--\n"
        banner += " © <%= config.pkg.author %>.\n\n"
        banner += " <%= config.pkg.name %> - v<%= config.pkg.version %> (<%= grunt.template.today('mm-dd-yyyy') %>)\n"
        # banner += " <%= config.pkg.homepage %>\n"
        banner += " <%= config.pkg.licenses.type %> - <%= config.pkg.licenses.url %>\n"
        banner += " -->"
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

      gruntfile:
        src: ["Gruntfile.coffee"]

    lesslint:
      options:
        csslint:
          csslintrc: "<%= config.app %>/assets/_less/.csslintrc"

      test:
        src: ["<%= less.serve.src %>"]

    validation:
      options:
        reset: true
        charset: "utf-8"
        doctype: "HTML5"
        relaxerror: [
          "Bad value X-UA-Compatible for attribute http-equiv on element meta."
          "An img element must have an alt attribute, except under certain conditions. For details, consult guidance on providing text alternatives for images."
        ]

      dist:
        src: ["<%= config.dist %>/**/*.html"]

    watch:
      options:
        spawn: false

      coffee:
        files: ["<%= coffeelint.gruntfile.src %>"]
        tasks: ["coffeelint:gruntfile"]

      js:
        files: ["<%= config.app %>/assets/_js/**/*.js"]
        tasks: ["uglify:serve"]
        options:
          interrupt: true

      less:
        files: ["<%= config.app %>/assets/_less/**/*.less"]
        tasks: [
          "less:serve"
          "autoprefixer:serve"
        ]
        options:
          interrupt: true

      jekyll:
        files: ["<%= config.app %>/**/*", "!_*"]
        tasks: ['jekyll:serve']

    uglify:
      serve:
        options:
          sourceMap: true

        files: [
          expand: true
          cwd: "<%= config.app %>/assets/_js/"
          src: ["**/*.js", "!*.min.js"]
          dest: "<%= config.app %>/assets/js/"
        ]

      dist:
        options:
          report: "gzip"

        files: [
          expand: true
          cwd: "<%= config.app %>/assets/_js/"
          src: ["**/*.js", "!*.min.js"]
          dest: "<%= config.app %>/assets/js/"
        ]

    less:
      serve:
        options:
          strictMath: true
          sourceMap: true
          outputSourceFiles: true
          sourceMapURL: "app.css.map"
          sourceMapFilename: "<%= config.app %>/assets/css/app.css.map"

        src: ["<%= config.app %>/assets/_less/app.less"]
        dest: "<%= config.app %>/assets/css/app.css"

      dist:
        src: ["<%= less.serve.src %>"]
        dest: "<%= less.serve.dest %>"

    autoprefixer:
      serve:
        src: ["<%= less.serve.dest %>"]
        dest: "<%= less.serve.dest %>"
        options:
          map: true

      dist:
        src: ["<%= less.serve.dest %>"]
        dest: "<%= less.serve.dest %>"

    csscomb:
      options:
        config: "<%= config.app %>/assets/_less/.csscomb.json"

      dist:
        src: ["<%= less.serve.dest %>"]
        dest: "<%= less.serve.dest %>"

    htmlmin:
      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>/"
        ]
        options:
          removeComments: true
          removeCommentsFromCDATA: true
          removeCDATASectionsFromCDATA: true
          collapseWhitespace: true
          conservativeCollapse: true
          collapseBooleanAttributes: true
          removeAttributeQuotes: false
          removeRedundantAttributes: true
          useShortDoctype: false
          removeEmptyAttributes: true
          removeOptionalTags: true
          removeEmptyElements: false
          lint: false
          keepClosingSlash: true
          caseSensitive: true
          minifyJS: true
          minifyCSS: true

    xmlmin:
      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.xml"
          dest: "<%= config.dist %>/"
        ]

    cssmin:
      dist:
        options:
          report: "gzip"

        files: [
          expand: true
          cwd: "<%= config.dist %>/assets/css/"
          src: ["**/*.css", "!*.min.css"]
          dest: "<%= config.dist %>/assets/css/"
        ]

      # html:
      #   expand: true
      #   cwd: "<%= config.dist %>"
      #   src: "**/*.html"
      #   dest: "<%= config.dist %>"

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

    usebanner:
      options:
        position: "bottom"
        banner: "<%= config.banner %>"

      dist:
        files:
          src: ["<%= config.dist %>/**/*.html"]

    jekyll:
      options:
        bundleExec: true

      serve:
        options:
          config: "_config.yml,_config.dev.yml"
          drafts: true
          future: true

      dist:
        options:
          config: "_config.yml"

    shell:
      options:
        stdout: true

      sync:
        command: "rsync -avz --delete --progress <%= config.cfg.ignore_files %> <%= config.dist %>/ <%= config.cfg.remote_host %>:<%= config.cfg.remote_dir %> > rsync.log"

      s3:
        command: "s3cmd sync -rP --guess-mime-type --delete-removed --no-preserve --cf-invalidate --exclude '.DS_Store' <%= config.cfg.static_files %> <%= config.cfg.s3_bucket %>"

    copy:
      sync:
        files: [
          expand: true
          dot: true
          cwd: "<%= config.dist %>/"
          src: ["**"]
          dest: "~/Dropbox/Sites/sparanoid.com/lab/<%= config.pkg.name %>/"
        ]

    concurrent:
      options:
        logConcurrentOutput: true

      dist:
        tasks: [
          "htmlmin"
          "xmlmin"
          "cssmin"
        ]

    clean:
      dist:
        src: [
          ".tmp"
        ]

      postDist:
        src: [
          "<%= config.dist %>/assets/css/"
          "<%= config.dist %>/assets/js/"
        ]

    cleanempty:
      dist:
        src: ["<%= config.dist %>/**/*"]

    replace:
      availability:
        src: ["<%= config.app %>/_data/availability.yml"]
        dest: "<%= config.app %>/_data/availability.yml"
        replacements: [
          {
            from: /(free:)(.+)/g
            to: "$1 true"
          }
        ]

    browserSync:
      bsFiles:
        src: ["<%= config.dist %>/**"]
      options:
        watchTask: true
        server:
          baseDir: "<%= config.dist %>"
        port: "<%= config.cfg.port %>"
        ghostMode:
          clicks: true
          scroll: true
          location: true
          forms: true
        logFileChanges: false
        snippetOptions:
          rule:
            match: /<!-- BS_INSERT -->/i
            fn: (snippet, match) ->
              match + snippet
        # Uncomment the following options for client presentation
        # tunnel: "<%= config.pkg.name %>"
        # online: true
        open: true
        browser: [
          "safari"
          "google chrome"
          "firefox"
        ]
        notify: true

  grunt.registerTask "reset", "Reset user availability", (target) ->
    grunt.config.set "replace.availability.replacements.0.to", "$1 true"
    grunt.task.run [
      "replace"
    ]

  grunt.registerTask "serve", "Fire up a server on local machine for development", [
    "clean"
    "uglify:serve"
    "less:serve"
    "autoprefixer:serve"
    "jekyll:serve"
    "browserSync"
    "watch"
  ]

  grunt.registerTask "test", "Build test task", [
    "build"
    "lesslint"
    "validation"
  ]

  grunt.registerTask "build", "Build site with `jekyll`, use `--busy` to set availability to false", (target) ->
    grunt.config.set "replace.availability.replacements.0.to", "$1 false" if grunt.option("busy")
    if grunt.option("fast")
      grunt.task.run [
        "replace"
        "clean"
        "coffeelint"
        "uglify:dist"
        "less:dist"
        "autoprefixer:dist"
        "csscomb"
        "jekyll:dist"
        "usebanner"
        "reset"
      ]
    else
      grunt.task.run [
        "replace"
        "clean"
        "coffeelint"
        "uglify:dist"
        "less:dist"
        "autoprefixer:dist"
        "csscomb"
        "jekyll:dist"
        "concurrent:dist"
        # "smoosher"
        "usebanner"
        # "clean:postDist"
        "reset"
      ]

  grunt.registerTask "sync", "Build site + rsync static files to remote server", [
    "build"
    "copy:sync"
  ]

  grunt.registerTask "s3", "Sync image assets with `s3cmd`", [
    "shell:s3"
  ]

  grunt.registerTask "default", "Default task aka. build task", [
    "build"
  ]

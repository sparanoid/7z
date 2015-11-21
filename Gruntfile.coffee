"use strict"
module.exports = (grunt) ->

  # Load all grunt tasks
  require("jit-grunt") grunt,
    "bump-commit": "grunt-bump"
    "bump-only": "grunt-bump"
    gitclean: "grunt-git"
    gitclone: "grunt-git"
    gitpull: "grunt-git"
    gitreset: "grunt-git"
    replace: "grunt-text-replace"
    usebanner: "grunt-banner"

  # Track tasks load time
  require("time-grunt") grunt

  # Project configurations
  grunt.initConfig
    config:
      cfg: grunt.file.readYAML("_config.yml")
      pkg: grunt.file.readJSON("package.json")
      amsf: grunt.file.readYAML("_amsf/_config.yml")
      deploy: grunt.file.readYAML("_deploy.yml")
      app: "<%= config.cfg.source %>"
      dist: "<%= config.cfg.destination %>"
      base: "<%= config.cfg.base %>"
      banner: do ->
        banner = "<!--\n"
        banner += " © <%= config.pkg.author %>.\n"
        banner += " <%= config.pkg.name %> - v<%= config.pkg.version %>\n"
        banner += " -->"
        banner

    amsf:
      base: "_amsf"
      core: "<%= amsf.base %>/core"
      user:
        assets: "<%= config.app %>/assets"
      theme:
        assets: "<%= amsf.user.assets %>/themes/<%= amsf.theme.current %>"
        current: "<%= config.amsf.theme %>"
        new_name: grunt.option("theme") or "<%= amsf.theme.current %>"
        new_author: grunt.option("user") or "amsf"

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
          csslintrc: "<%= amsf.theme.assets %>/_less/.csslintrc"

      test:
        src: ["<%= amsf.theme.assets %>/_less/**/app*.less"]

    watch:
      options:
        spawn: false

      coffee:
        files: ["<%= coffeelint.gruntfile.src %>"]
        tasks: ["coffeelint:gruntfile"]

      js:
        files: ["<%= config.app %>/**/_js/*.js"]
        tasks: ["copy:serve"]
        options:
          interrupt: true

      less:
        files: ["<%= config.app %>/**/_less/*.less"]
        tasks: [
          "less:serve"
          "postcss:serve"
        ]
        options:
          interrupt: true

      jekyll:
        files: ["<%= config.app %>/**/*", "!_*", "_config*.yml"]
        tasks: [
          "jekyll:serve"
          "newer:leading_quotes"
        ]

    uglify:
      dist:
        options:
          report: "gzip"
          compress:
            drop_console: true

        files: [
          {
            expand: true
            cwd: "<%= amsf.user.assets %>/_js/"
            src: ["**/*.js", "!*.min.js"]
            dest: "<%= amsf.user.assets %>/js/"
          }
          {
            expand: true
            cwd: "<%= amsf.theme.assets %>/_js/"
            src: ["**/*.js", "!*.min.js"]
            dest: "<%= amsf.theme.assets %>/js/"
          }
        ]

    less:
      options:
        strictMath: true

      serve:
        options:
          sourceMap: true
          sourceMapFileInline: true
          outputSourceFiles: true

        files: [
          expand: true
          cwd: "<%= amsf.theme.assets %>/_less/"
          src: ["**/app*.less"]
          dest: "<%= amsf.theme.assets %>/css/"
          ext: ".css"
        ]

      dist:
        files: "<%= less.serve.files %>"

    postcss:
      serve:
        src: "<%= amsf.theme.assets %>/css/*.css"
        options:
          map:
            inline: true
          processors: [
            require("autoprefixer")(browsers: "last 1 versions")
          ]

      dist:
        src: "<%= postcss.serve.src %>"
        options:
          processors: [
            require("autoprefixer")(browsers: "last 2 versions")
          ]

    csscomb:
      options:
        config: "<%= amsf.theme.assets %>/_less/.csscomb.json"

      dist:
        files: [
          expand: true
          cwd: "<%= less.serve.files.0.dest %>"
          src: ["*.css"]
          dest: "<%= less.serve.files.0.dest %>"
          ext: ".css"
        ]

    htmlmin:
      dist:
        options:
          removeComments: true
          removeCommentsFromCDATA: true
          removeCDATASectionsFromCDATA: true
          collapseWhitespace: true
          conservativeCollapse: true
          collapseBooleanAttributes: true
          removeAttributeQuotes: true
          removeRedundantAttributes: true
          useShortDoctype: false
          removeEmptyAttributes: true
          removeOptionalTags: true
          removeEmptyElements: false
          lint: false
          keepClosingSlash: false
          caseSensitive: true
          minifyJS: true
          minifyCSS: true

        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>"
        ]

    xmlmin:
      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.xml"
          dest: "<%= config.dist %>"
        ]

    minjson:
      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.json"
          dest: "<%= config.dist %>"
        ]

    cssmin:
      dist:
        options:
          report: "gzip"

        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: ["**/*.css", "!*.min.css"]
          dest: "<%= config.dist %>"
        ]

      # html:
      #   expand: true
      #   cwd: "<%= config.dist %>"
      #   src: "**/*.html"
      #   dest: "<%= config.dist %>"

    assets_inline:
      options:
        jsDir: "<%= config.dist %>"
        cssDir: "<%= config.dist %>"
        assetsDir: "<%= config.dist %>"
        includeTag: "?assets-inline"
        inlineImg: false
        inlineSvg: true
        inlineSvgBase64: false
        assetsUrlPrefix: "<%= config.base %>/assets/"
        deleteOriginals: true

      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>"
        ]

    leading_quotes:
      options:
        elements: "p, li, h1, h2, h3, h4, h5, h6"
        class: "leading-indent-fix"
        verbose: true

      main:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>"
        ]

    cacheBust:
      options:
        encoding: "utf8"
        filters: {
          "link[rel*=icon]": ->
            @attribs.href
        }
        algorithm: "md5"
        length: 8
        deleteOriginals: true

      dist:
        files: [
          expand: true
          baseDir: "<%= config.dist %>"
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>"
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
          config: "_config.yml,_amsf/_config.yml,<%= config.app %>/_data/<%= amsf.theme.current %>.yml,_config.dev.yml"
          drafts: true
          future: true

      dist:
        options:
          config: "_config.yml,_amsf/_config.yml,<%= config.app %>/_data/<%= amsf.theme.current %>.yml"
          dest: "<%= config.dist %><%= config.base %>"

    shell:
      options:
        stdout: true

      # Direct sync compiled static files to remote server
      sync_server:
        command: "rsync -avz --delete --progress <%= config.deploy.ignore_files %> <%= config.dist %>/ <%= config.deploy.sftp.host %>:<%= config.deploy.sftp.dest %> > rsync-sftp.log"

      # Copy compiled static files to local directory for further post-process
      sync_local:
        command: "rsync -avz --delete --progress <%= config.deploy.ignore_files %> <%= jekyll.dist.options.dest %>/ <%= config.deploy.s3_website.dest %>/site/<%= config.base %> > rsync-s3_website.log"

      # Auto commit untracked files sync'ed from sync_local
      sync_commit:
        command: "sh <%= config.deploy.s3_website.dest %>/auto-commit '<%= config.pkg.name %>'"

      amsf__core__update_deps:
        command: [
          "bundle update"
          "bundle install"
          "npm install"
        ].join("&&")

      amsf__theme__to_app:
        command: [
          "rsync -avz --delete --progress <%= amsf.base %>/themes/<%= amsf.theme.new_name %>/config.yml <%= config.app %>/_data/<%= amsf.theme.new_name %>.yml"
          "rsync -avz --delete --progress <%= amsf.base %>/themes/<%= amsf.theme.new_name %>/includes/  <%= config.app %>/_includes/themes/<%= amsf.theme.new_name %>/includes/"
          "rsync -avz --delete --progress <%= amsf.base %>/themes/<%= amsf.theme.new_name %>/layouts/   <%= config.app %>/_includes/themes/<%= amsf.theme.new_name %>/layouts/"
          "rsync -avz --delete --progress <%= amsf.base %>/themes/<%= amsf.theme.new_name %>/assets/    <%= config.app %>/assets/themes/<%= amsf.theme.new_name %>/"
          "rsync -avz --delete --progress <%= amsf.base %>/themes/<%= amsf.theme.new_name %>/pages/     <%= config.app %>/_pages/themes/<%= amsf.theme.new_name %>/"
        ].join("&&")

      amsf__theme__to_cache:
        command: [
          "rsync -avz --delete --progress <%= config.app %>/_data/<%= amsf.theme.current %>.yml                  <%= amsf.base %>/themes/<%= amsf.theme.current %>/config.yml"
          "rsync -avz --delete --progress <%= config.app %>/_includes/themes/<%= amsf.theme.current %>/includes/ <%= amsf.base %>/themes/<%= amsf.theme.current %>/includes/"
          "rsync -avz --delete --progress <%= config.app %>/_includes/themes/<%= amsf.theme.current %>/layouts/  <%= amsf.base %>/themes/<%= amsf.theme.current %>/layouts/"
          "rsync -avz --delete --progress <%= config.app %>/assets/themes/<%= amsf.theme.current %>/             <%= amsf.base %>/themes/<%= amsf.theme.current %>/assets/"
          "rsync -avz --delete --progress <%= config.app %>/_pages/themes/<%= amsf.theme.current %>/             <%= amsf.base %>/themes/<%= amsf.theme.current %>/pages/"
        ].join("&&")

      amsf__theme__to_dev_repo:
        command: "rsync -avz --delete --progress --exclude=.git --exclude=node_modules <%= amsf.base %>/themes/<%= amsf.theme.current %>/ /Users/sparanoid/Git/amsf-<%= amsf.theme.current %> > rsync-theme-dev.log"

    concurrent:
      options:
        logConcurrentOutput: true

      dist:
        tasks: [
          "htmlmin"
          "xmlmin"
          "minjson"
        ]

    copy:
      serve:
        files: [
          {
            expand: true
            dot: true
            cwd: "<%= amsf.user.assets %>/_js/"
            src: ["**/*.js"]
            dest: "<%= amsf.user.assets %>/js/"
          }
          {
            expand: true
            dot: true
            cwd: "<%= amsf.theme.assets %>/_js/"
            src: ["**/*.js"]
            dest: "<%= amsf.theme.assets %>/js/"
          }
        ]

      amsf__core__to_app:
        files: [
          {
            expand: true
            dot: true
            cwd: "<%= amsf.core %>"
            src: [
              ".*"
              "*.json"
              "*.md"
              "*.yml"
              "Gemfile"
              "Gruntfile*" # Comment this when debugging this task
              "LICENSE"
              "package.json"
              "!.DS_Store"
              "!TODOS.md"
            ]
            dest: "./"
          }
          {
            expand: true
            dot: true
            cwd: "<%= amsf.core %>/_app/"
            src: [
              "*.json"
              "*.txt"
              "*.xml"
            ]
            dest: "<%= config.app %>"
          }
          {
            expand: true
            dot: true
            cwd: "<%= amsf.core %>/_app/_includes/"
            src: [
              "_amsf.html"
            ]
            dest: "<%= config.app %>/_includes/"
          }
          {
            expand: true
            dot: true
            cwd: "<%= amsf.core %>/_app/_layouts/"
            src: ["**"]
            dest: "<%= config.app %>/_layouts/"
          }
        ]

    gitclone:
      amsf__core__add_remote:
        options:
          repository: "https://github.com/sparanoid/almace-scaffolding.git"
          branch: "master"
          directory: "<%= amsf.base %>/core/"

      amsf__theme__add_remote:
        options:
          repository: "https://github.com/<%= amsf.theme.new_author %>/amsf-<%= amsf.theme.new_name %>.git"
          branch: "master"
          directory: "<%= amsf.base %>/themes/<%= amsf.theme.new_name %>/"

    gitpull:
      amsf__core__update_remote:
        options:
          cwd: "<%= amsf.base %>/core/"

      amsf__theme__update_remote:
        options:
          cwd: "<%= amsf.base %>/themes/<%= amsf.theme.current %>/"

    gitclean:
      options:
        nonstandard: true
        directories: true

      amsf__core__clean_git:
        options:
          cwd: "<%= gitpull.amsf__core__update_remote.options.cwd %>"

      amsf__theme__clean_git:
        options:
          cwd: "<%= gitpull.amsf__theme__update_remote.options.cwd %>"

    gitreset:
      options:
        mode: "hard"

      amsf__core__reset_git:
        options:
          cwd: "<%= gitpull.amsf__core__update_remote.options.cwd %>"

      amsf__theme__reset_git:
        options:
          cwd: "<%= gitpull.amsf__theme__update_remote.options.cwd %>"

    clean:
      main:
        src: [
          ".tmp"
          "<%= config.dist %>"
          "<%= config.app %>/.jekyll-metadata"
          "<%= amsf.theme.assets %>/css/"
          "<%= amsf.theme.assets %>/js/"
          "<%= amsf.user.assets %>/css/"
          "<%= amsf.user.assets %>/js/"
        ]

    cleanempty:
      dist:
        src: ["<%= config.dist %>/**/*"]

    replace:
      amsf__theme__update_config:
        src: ["<%= amsf.base %>/_config.yml"]
        dest: "<%= amsf.base %>/_config.yml"
        replacements: [
          {
            from: /(theme:)( +)(.+)/g
            to: "$1$2<%= amsf.theme.new_name %>"
          }
        ]

      amsf__site__update_version:
        src: ["<%= config.app %>/_pages/index.html"]
        dest: "<%= config.app %>/_pages/index.html"
        replacements: [
          {
            from: /("amsf-version">)\d+\.\d+\.\d+/g
            to: "$1<%= config.pkg.version %>"
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

    conventionalChangelog:
      options:
        changelogOpts:
          preset: "angular"

      dist:
        src: "CHANGELOG.md"

    bump:
      options:
        files: ["package.json"]
        updateConfigs: ["config.pkg"]
        commitMessage: "chore: release v%VERSION%"
        commitFiles: ["-a"]
        tagMessage: "chore: create tag %VERSION%"
        push: false

  grunt.registerTask "theme-upgrade", "Upgrade specific theme from AMSF cache to app", [
    "shell:amsf__theme__to_app"
  ]

  grunt.registerTask "theme-save", "Save current (previously activated) theme to AMSF cache", ->
    grunt.task.run [
      "shell:amsf__theme__to_cache"
    ]
    if grunt.option("dev")
      grunt.task.run [
        "shell:amsf__theme__to_dev_repo"
      ]

  grunt.registerTask "theme-activate", "Activate specific theme", [
    "theme-upgrade"
    "theme-save"
    "replace:amsf__theme__update_config"
  ]

  grunt.registerTask "theme-add", "Add new theme from a GitHub repo", [
    "gitclone:amsf__theme__add_remote"
    "theme-activate"
  ]

  grunt.registerTask "theme-update", "Update current theme from GitHub", [
    "gitreset:amsf__theme__reset_git"
    "gitclean:amsf__theme__clean_git"
    "gitpull:amsf__theme__update_remote"
    "theme-upgrade"
  ]

  grunt.registerTask "amsf-update", "Update ASMF", ->
    # TODO: need better implement
    if grunt.file.exists("_amsf/core/")
      grunt.task.run [
        "gitreset:amsf__core__reset_git"
        "gitclean:amsf__core__clean_git"
        "gitpull:amsf__core__update_remote"
      ]
    else
      grunt.task.run [
        "gitclone:amsf__core__add_remote"
      ]
    grunt.task.run [
      "copy:amsf__core__to_app"
      "shell:amsf__core__update_deps"
    ]

  grunt.registerTask "init", "Initialize new project", [
    "theme-add"
  ]

  grunt.registerTask "update", "Update AMSF and the activated theme", [
    "amsf-update"
    "theme-update"
  ]

  grunt.registerTask "serve", "Fire up a server on local machine for development", [
    "clean:main"
    "copy:serve"
    "less:serve"
    "postcss:serve"
    "jekyll:serve"
    "leading_quotes:main"
    "browserSync"
    "watch"
  ]

  grunt.registerTask "test", "Build test task", ->
    grunt.task.run [
      "build"
    ]
    if !grunt.option("local")
      grunt.task.run [
        "theme-add"
        "theme-update"
        "theme-save"
        "amsf-update"
      ]

  grunt.registerTask "build", "Build site with jekyll", [
    "clean:main"
    "coffeelint"
    "uglify"
    "lesslint"
    "less:dist"
    "postcss:dist"
    "csscomb"
    "jekyll:dist"
    "leading_quotes:main"
    "cssmin"
    "assets_inline"
    "cacheBust"
    "concurrent:dist"
    "usebanner"
    "cleanempty"
  ]

  # Release new version
  grunt.registerTask "release", "Build, bump and commit", (type) ->
    grunt.task.run [
      "bump-only:#{type or 'patch'}"
      "conventionalChangelog"
      "replace:amsf__site__update_version"
      "bump-commit"
    ]

  grunt.registerTask "sync", "Build site + rsync static files to remote server",  ->
    grunt.task.run [
      "build"
      "shell:sync_local"
    ]
    if grunt.option("deploy")
      grunt.task.run [
        "shell:sync_commit"
      ]

  grunt.registerTask "default", "Default task aka. build task", [
    "build"
  ]

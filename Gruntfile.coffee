"use strict"
module.exports = (grunt) ->

  # Load all grunt tasks
  require("jit-grunt") grunt,
    "bump-commit": "grunt-bump"
    "bump-only": "grunt-bump"
    gitclone: "grunt-git"
    replace: "grunt-text-replace"
    usebanner: "grunt-banner"

  # Track tasks load time
  require("time-grunt") grunt

  # Get deploy target, run `$ grunt rsync --env=server01` to deploy to your
  # `server01`, server info stored in `_deploy.yml`.
  deploy_env = grunt.option("env") or "default"

  # Project configurations
  grunt.initConfig
    config:
      cfg: grunt.file.readYAML("_config.yml")
      pkg: grunt.file.readJSON("package.json")
      amsf: grunt.file.readYAML("_amsf.yml")
      deploy: grunt.file.readYAML("_deploy.yml")
      app: "<%= config.cfg.source %>"
      dist: "<%= config.cfg.destination %>"
      base: "<%= config.cfg.base %>"
      banner: "<!-- <%= config.pkg.name %> v<%= config.pkg.version %> | © <%= config.pkg.author %> | <%= config.pkg.license %> -->\n"

    amsf:
      base: ".amsf-cache"
      branch: grunt.option("branch") or "release"
      core: "<%= amsf.base %>/core"
      user:
        assets: "<%= config.app %>/assets"
      theme:
        branch: "master"
        assets: "<%= amsf.user.assets %>/themes/<%= amsf.theme.current %>"
        current: "<%= config.amsf.amsf_theme %>"
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
        files: ["<%= config.app %>/**/_js/**/*.js"]
        tasks: ["copy:serve"]
        options:
          interrupt: true

      less:
        files: ["<%= config.app %>/**/_less/**/*.less"]
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
            src: ["**/*.js"]
            dest: "<%= amsf.user.assets %>/js/"
          }
          {
            expand: true
            cwd: "<%= amsf.theme.assets %>/_js/"
            src: ["**/*.js"]
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

    uncss_inline:
      options:
        htmlroot: "<%= config.dist %>"
        stylesheets: []

      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>"
        ]

    leading_quotes:
      options:
        elements: "p, h1, h2, h3, h4, h5, h6"
        regex: /「|『|“|‘|（/
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
        algorithm: "md5"
        assets: ["<%= amsf.user.assets %>/**/*"]
        baseDir: "<%= config.dist %>"
        deleteOriginals: true
        encoding: "utf8"
        length: 8

      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
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
          config: "_config.yml,_amsf.yml,<%= config.app %>/_data/<%= amsf.theme.current %>.yml,_config.dev.yml"
          drafts: true
          future: true

      dist:
        options:
          config: "_config.yml,_amsf.yml,<%= config.app %>/_data/<%= amsf.theme.current %>.yml"
          dest: "<%= config.dist %><%= config.base %>"

    shell:
      options:
        stdout: true

      # Direct rsync compiled static files to remote server
      amsf__deploy__rsync:
        command: "rsync -avz -e 'ssh -p <%= config.deploy.rsync.#{deploy_env}.port %>' --delete --progress <%= config.deploy.rsync.#{deploy_env}.params %> <%= config.dist %>/ <%= config.deploy.rsync.#{deploy_env}.user %>@<%= config.deploy.rsync.#{deploy_env}.host %>:<%= config.deploy.rsync.#{deploy_env}.dest %> > deploy-rsync-#{deploy_env}.log"

      # Copy compiled static files to local directory for further post-process
      amsf__deploy__sparanoid__copy_to_local:
        command: "rsync -avz --delete --progress <%= config.deploy.rsync.params %> <%= jekyll.dist.options.dest %>/ <%= config.deploy.s3_website.#{deploy_env}.dest %>/site/<%= config.base %> > deploy-s3_website-#{deploy_env}.log"

      # Auto commit untracked files sync'ed from sync_local
      amsf__deploy__sparanoid__auto_commit:
        command: "bash <%= config.deploy.s3_website.#{deploy_env}.dest %>/auto-commit '<%= config.pkg.name %>'"

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

      amsf__release:
        command: "git checkout release && git pull && git merge master --no-edit && git push && git checkout master && git push"

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

      amsf__config__to_app:
        files: [
          {
            expand: true
            dot: true
            cwd: "<%= amsf.core %>"
            src: [
              "_amsf.yml"
            ]
            dest: "./"
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
              "!_amsf.yml"
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
          branch: "<%= amsf.branch %>"
          directory: "<%= amsf.core %>"

      amsf__theme__add_remote:
        options:
          repository: "https://github.com/<%= amsf.theme.new_author %>/amsf-<%= amsf.theme.new_name %>.git"
          branch: "<%= amsf.theme.branch %>"
          directory: "<%= amsf.base %>/themes/<%= amsf.theme.new_name %>/"

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

      amsf__core__remove_repo:
        src: "<%= amsf.core %>"

      amsf__theme__remove_repo:
        src: "<%= amsf.base %>/themes/<%= amsf.theme.current %>"

    cleanempty:
      options:
        files: false

      dist:
        src: ["<%= config.dist %>/**/*"]

    replace:
      amsf__theme__update_config:
        src: ["_amsf.yml"]
        dest: "_amsf.yml"
        replacements: [
          {
            from: /(amsf_theme: +)(.+)/g
            to: "$1<%= amsf.theme.new_name %>"
          }
        ]

      amsf__core__update_version:
        src: ["_amsf.yml"]
        dest: "_amsf.yml"
        replacements: [
          {
            from: /(version: +)(.+)/g
            to: "$1<%= config.pkg.version %>"
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

  # Custom tasks
  grunt.registerTask "amsf-func-mkdir", "Initialize AMSF working directory", ->
    grunt.file.mkdir '.amsf-cache'

  grunt.registerTask "amsf-func-preupdate", "Update ASMF (preprocess)", ->
    # Check if config exists
    if !grunt.file.exists("_amsf.yml")
      if grunt.file.exists("_amsf/_config.yml")
        grunt.file.copy("_amsf/_config.yml", "_amsf.yml")
      else
        grunt.task.run [
          "copy:amsf__config__to_app"
        ]

  grunt.registerTask "amsf-func-postupdate", "Update ASMF (postprocess)", ->
    # Remove deprecated directory
    if grunt.file.exists("_amsf")
      grunt.file.delete("_amsf")

  # Defined tasks
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
    "clean:amsf__theme__remove_repo"
    "gitclone:amsf__theme__add_remote"
    "theme-upgrade"
  ]

  grunt.registerTask "amsf-update", "Update ASMF", [
    "amsf-func-preupdate"
    "clean:amsf__core__remove_repo"
    "gitclone:amsf__core__add_remote"
    "copy:amsf__core__to_app"
    "shell:amsf__core__update_deps"
    "replace:amsf__core__update_version"
    "amsf-func-postupdate"
  ]

  grunt.registerTask "init", "Initialize new project", [
    "amsf-func-mkdir"
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
    "leading_quotes"
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
    "leading_quotes"
    "cssmin"
    "assets_inline"
    "uncss_inline"
    "cacheBust"
    "concurrent:dist"
    "cleanempty"
  ]

  grunt.registerTask "release", "Build, bump and commit", (type) ->
    grunt.task.run [
      "bump-only:#{type or 'patch'}"
      "conventionalChangelog"
      "replace:amsf__core__update_version"
      "replace:amsf__site__update_version"
      "bump-commit"
    ]
    if grunt.option("publish")
      grunt.task.run [
        "shell:amsf__release"
      ]

  grunt.registerTask "deploy-rsync", "Deploy to remote server via rsync",  [
    "shell:amsf__deploy__rsync"
  ]

  grunt.registerTask "deploy-sparanoid", "Deploy to remote server (for sparanoid.com)",  ->
    if grunt.option("no-commit")
      grunt.task.run [
        "shell:amsf__deploy__sparanoid__copy_to_local"
      ]
    else
      grunt.task.run [
        "shell:amsf__deploy__sparanoid__copy_to_local"
        "shell:amsf__deploy__sparanoid__auto_commit"
      ]

  grunt.registerTask "deploy", "Deploy to remote server", (type) ->
    grunt.task.run [
      "deploy-#{type or 'rsync'}"
    ]

  grunt.registerTask "default", "Default task aka. build task",  ->
    grunt.task.run [
      "build"
    ]

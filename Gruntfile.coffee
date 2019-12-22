"use strict"

module.exports = (grunt) ->

  # Load Sass deps
  sass = require('node-sass')

  # Load all grunt tasks
  require("jit-grunt") grunt,
    "bump-commit": "grunt-bump"
    "bump-only": "grunt-bump"
    gitclone: "grunt-git"
    replace: "grunt-text-replace"

  # Track tasks load time
  require("@lodder/time-grunt") grunt

  # Get deploy target, see `_deploy.yml` for more info
  deploy_env = grunt.option("env") or "default"

  # Project configurations
  grunt.initConfig
    config:
      cfg: grunt.file.readYAML("_config.yml")
      cfg_dev: grunt.file.readYAML("_config.dev.yml")
      pkg: grunt.file.readJSON("package.json")
      amsf: grunt.file.readYAML("_amsf.yml")
      deploy: grunt.file.readYAML("_deploy.yml")
      app: "<%= config.cfg.source %>"
      dist: "<%= config.cfg.destination %>"
      base: "<%= config.cfg.baseurl %>"
      base_dev: "<%= config.cfg_dev.baseurl %>"
      flatten_base: "<%= config.cfg.flatten_base %>"
      assets: "<%= config.cfg.assets %>"
      banner: "<!-- <%= config.pkg.name %> v<%= config.pkg.version %> | © <%= config.pkg.author %> | <%= config.pkg.license %> -->\n"

    amsf:
      base: ".amsf-cache"
      branch: grunt.option("branch") or "release"
      core: "<%= amsf.base %>/core"
      user:
        assets: "<%= config.app %><%= config.assets %>"
      theme:
        branch: "master"
        assets: "<%= amsf.user.assets %>/themes/<%= amsf.theme.current %>"
        current: "<%= config.amsf.amsf_theme %>"
        current_url: "<%= config.amsf.amsf_theme_url %>"
        new_name: grunt.option("theme") or "<%= amsf.theme.current %>"
        new_url: grunt.option("url") or "<%= amsf.theme.current_url %>"

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

    watch:
      options:
        spawn: true

      coffee:
        files: ["<%= coffeelint.gruntfile.src %>"]
        tasks: ["coffeelint:gruntfile"]
        options:
          reload: true

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

      sass:
        files: ["<%= config.app %>/**/_scss/**/*.scss"]
        tasks: [
          "sass:serve"
          "postcss:serve"
        ]
        options:
          interrupt: true

    terser:
      options:
        compress:
          drop_console: true

      dist:
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

      sw:
        files: "<%= config.dist %><%= config.base %>/<%= service_worker.dist.options.workerFile %>": [ "<%= config.dist %><%= config.base %>/<%= service_worker.dist.options.workerFile %>" ]

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

    sass:
      options:
        implementation: sass
        precision: 10

      serve:
        options:
          outputStyle: "nested"
          sourceMapContents: true
          sourceMapEmbed: true

        files: [
          expand: true
          cwd: "<%= amsf.theme.assets %>/_scss/"
          src: ["**/app*.scss"]
          dest: "<%= amsf.theme.assets %>/css/"
          ext: ".css"
        ]

      dist:
        options:
          outputStyle: "compressed"

        files: "<%= sass.serve.files %>"

    postcss:
      options:
        processors: [
          require("autoprefixer")
        ]

      serve:
        src: "<%= amsf.theme.assets %>/css/*.css"
        options:
          map:
            inline: true

      dist:
        src: "<%= postcss.serve.src %>"

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

    html_trim:
      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: ["**/*.html"]
          dest: "<%= config.dist %>"
        ]

    assets_inline:
      options:
        jsDir: "<%= config.dist %>"
        cssDir: "<%= config.dist %>"
        assetsDir: "<%= config.dist %>"
        includeTag: "?assets-inline"
        inlineImg: false
        inlineSvg: true
        inlineSvgBase64: false
        inlineLinkTags: true
        assetsUrlPrefix: "<%= config.base %><%= config.assets %>"
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
        uncssrc: ".uncssrc"
        htmlroot: "<%= config.dist %>"

      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>"
        ]

    cacheBust:
      options:
        algorithm: "md5"
        assets: ["**/*.css", "**/*.js"]
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

    service_worker:
      dist:
        options:
          cacheId: "<%= config.pkg.name %>"
          baseDir: "<%= config.dist %>"
          workerFile: "service-worker.js"
          workerDir: "<%= config.dist %><%= config.base %>"
          maximumFileSizeToCacheInBytes: "<%= config.cfg.service_worker.max_size %>"
          staticFileGlobs: "<%= config.cfg.service_worker.files %>"

    sri_hash:
      options:
        assetsDir: "<%= config.dist %>"

      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>"
        ]

    doctype:
      dist:
        files: [
          expand: true
          cwd: "<%= config.dist %>"
          src: "**/*.html"
          dest: "<%= config.dist %>"
        ]

    jekyll:
      options:
        bundleExec: true

      serve:
        options:
          serve: true
          incremental: true
          livereload: true
          config: "_config.yml,_amsf.yml,<%= config.app %>/_data/<%= amsf.theme.current %>.yml,_config.dev.yml"
          dest: "<%= config.dist %><%= config.base_dev %>"
          drafts: true
          future: true

      dist:
        options:
          config: "_config.yml,_amsf.yml,<%= config.app %>/_data/<%= amsf.theme.current %>.yml"
          dest: "<%= config.dist %><%= config.base %>"

    shell:
      options:
        stdout: true

      # Sync compiled static files via `rsync`
      amsf__deploy__rsync:
        command: "rsync -avz -e 'ssh -p <%= config.deploy.rsync.#{deploy_env}.port %>' --delete --progress <%= config.deploy.rsync.#{deploy_env}.params %> <%= config.dist %>/ <%= config.deploy.rsync.#{deploy_env}.user %>@<%= config.deploy.rsync.#{deploy_env}.host %>:<%= config.deploy.rsync.#{deploy_env}.dest %> > deploy-rsync-#{deploy_env}.log"

      # Sync compiled static files via `s3_website`
      amsf__deploy__s3:
        command: "s3_website push --site=<%= config.dist %>/ > deploy-s3-#{deploy_env}.log"

      # Copy compiled static files to local directory for further post-process
      amsf__deploy__sparanoid__copy_to_local:
        command: "rsync -avz --delete --progress <%= config.deploy.rsync.#{deploy_env}.params %> <%= jekyll.dist.options.dest %>/ <%= config.deploy.sparanoid.#{deploy_env}.dest %>/site/<%= config.base %> > deploy-sparanoid-#{deploy_env}.log"

      # Auto commit untracked files sync'ed from sync_local
      amsf__deploy__sparanoid__auto_commit:
        command: "bash <%= config.deploy.sparanoid.#{deploy_env}.dest %>/auto-commit '<%= config.pkg.name %>'"

      amsf__core__update_deps:
        command: [
          "bundle update"
          "bundle install"
          "yarn install"
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

      amsf__staging:
        command: "git checkout staging && git pull && git merge master --no-edit && git push && git checkout master && git push"

      amsf__release:
        command: "git checkout release && git pull && git merge master --no-edit && git push && git checkout master && git push"

      move_flatten_base:
        command: "mv <%= config.dist %><%= config.base %>/* <%= config.dist %>/"

    concurrent:
      options:
        logConcurrentOutput: true

      serve:
        tasks: [
          "jekyll:serve"
          "watch"
        ]

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
            cwd: "<%= amsf.core %>/.circleci/"
            src: [
              "config.example.yml"
            ]
            dest: ".circleci/"
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
            cwd: "<%= amsf.core %>/_app/_includes/amsf/"
            src: ["**"]
            dest: "<%= config.app %>/_includes/amsf/"
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
          repository: "<%= amsf.theme.new_url %>.git"
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
          {
            from: /(amsf_theme_url: +)(.+)/g
            to: "$1<%= amsf.theme.new_url %>"
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
        gitCommitOptions: "-S"
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
    "sass:serve"
    "postcss:serve"
    "concurrent:serve"
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

  grunt.registerTask "flatten_check", "Build site with jekyll", ->
    if grunt.config.get(['config']).flatten_base
      grunt.task.run [
        "shell:move_flatten_base"
      ]

  grunt.registerTask "build", "Build site with jekyll", [
    "clean:main"
    "coffeelint"
    "terser:dist"
    "sass:dist"
    "postcss:dist"
    "jekyll:dist"
    "cssmin"
    "assets_inline"
    "uncss_inline"
    "concurrent:dist"
    "cacheBust"
    "html_trim"
    "service_worker"
    "terser:sw"
    "sri_hash:dist"
    "doctype"
    "flatten_check"
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

  grunt.registerTask "publish", "Publish new release", (branch) ->
    grunt.task.run [
      "shell:amsf__#{branch or 'staging'}"
    ]

  grunt.registerTask "deploy-rsync", "Deploy to remote server via rsync",  [
    "shell:amsf__deploy__rsync"
  ]

  grunt.registerTask "deploy-s3", "Deploy to AWS S3",  [
    "shell:amsf__deploy__s3"
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

<a name="2.0.12"></a>
## [2.0.12](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.11...v2.0.12) (2019-02-19)


### Features

* **css:** simpler fontstack ([48f9446](https://github.com/sparanoid/almace-scaffolding/commit/48f9446))
* **docs:** update “Customizing Styles” ([8579b04](https://github.com/sparanoid/almace-scaffolding/commit/8579b04))
* **package:** avoid deprecated package ([61b410f](https://github.com/sparanoid/almace-scaffolding/commit/61b410f))



<a name="2.0.11"></a>
## [2.0.11](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.10...v2.0.11) (2019-02-14)


### Features

* **grunt:** use terser for es6+ uglifier ([0037e2d](https://github.com/sparanoid/almace-scaffolding/commit/0037e2d))



<a name="2.0.10"></a>
## [2.0.10](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.9...v2.0.10) (2019-02-06)


### Bug Fixes

* **grunt:** wrong task condition for flatten option ([2740b78](https://github.com/sparanoid/almace-scaffolding/commit/2740b78))



<a name="2.0.9"></a>
## [2.0.9](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.8...v2.0.9) (2019-02-06)


### Features

* **config:** add new option `flatten_base` for easier setup fpr GitHub Pages (for projects) ([8f41221](https://github.com/sparanoid/almace-scaffolding/commit/8f41221))
* **css:** add `halt` support ([bb2fe6c](https://github.com/sparanoid/almace-scaffolding/commit/bb2fe6c))
* switch from npm to yarn ([6020fbf](https://github.com/sparanoid/almace-scaffolding/commit/6020fbf))



<a name="2.0.8"></a>
## [2.0.8](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.7...v2.0.8) (2018-12-01)


### Bug Fixes

* **amsf:** no page/post title fallback ([176d3a0](https://github.com/sparanoid/almace-scaffolding/commit/176d3a0))


### Features

* **footer:** add dynamic footer links support ([b64617f](https://github.com/sparanoid/almace-scaffolding/commit/b64617f))
* **pages:** hide error page in sitemap ([ad72fda](https://github.com/sparanoid/almace-scaffolding/commit/ad72fda))
* **robots.txt:** better output ([fd3fd55](https://github.com/sparanoid/almace-scaffolding/commit/fd3fd55))


### BREAKING CHANGES

* **footer:** If you already defined your custom footer links in `footer.html`, you need to remove them and defined them in `footer.yml` for further compatibility



<a name="2.0.7"></a>
## [2.0.7](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.6...v2.0.7) (2018-11-09)


### Bug Fixes

* **css:** image position overwritten with `:not` pseudo selector ([4f7e623](https://github.com/sparanoid/almace-scaffolding/commit/4f7e623))
* **css:** list decorations not aligned to the baseline ([9d2ee52](https://github.com/sparanoid/almace-scaffolding/commit/9d2ee52))


### Features

* **css:** reimplement `no-resize` separately ([752b521](https://github.com/sparanoid/almace-scaffolding/commit/752b521))



<a name="2.0.6"></a>
## [2.0.6](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.5...v2.0.6) (2018-11-09)


### Bug Fixes

* **css:** wrong mixin order ([4c26c69](https://github.com/sparanoid/almace-scaffolding/commit/4c26c69))
* **css:** wrong variable definition ([4057f9e](https://github.com/sparanoid/almace-scaffolding/commit/4057f9e))
* **grunt:** `uncss_inline` v1.2.4 causes `cacheBust` not triggered anymore, reorder task ([d2672c8](https://github.com/sparanoid/almace-scaffolding/commit/d2672c8))


### Features

* rebrand description ([7362fe5](https://github.com/sparanoid/almace-scaffolding/commit/7362fe5))
* rebrand logo to v2 ([4eb9a46](https://github.com/sparanoid/almace-scaffolding/commit/4eb9a46))
* **amsf:** fallback to site name if page title not defined ([725521b](https://github.com/sparanoid/almace-scaffolding/commit/725521b))
* **config:** revert back to original analytics.js instead of ga.js for better performance ([54c826f](https://github.com/sparanoid/almace-scaffolding/commit/54c826f))
* **css:** add a simple way to avoid default image resizing ([cd66a6c](https://github.com/sparanoid/almace-scaffolding/commit/cd66a6c))
* **grunt:** add `grunt-doctype` support ([092b498](https://github.com/sparanoid/almace-scaffolding/commit/092b498))



<a name="2.0.5"></a>
## [2.0.5](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.4...v2.0.5) (2018-09-23)


### Bug Fixes

* **css:** wrong summary appearance in firefox ([9ba87cb](https://github.com/sparanoid/almace-scaffolding/commit/9ba87cb))


### Features

* **css:** add opentype feature modifier ([333afb0](https://github.com/sparanoid/almace-scaffolding/commit/333afb0))
* **css:** better details > summary deco appearance ([3dc4fe4](https://github.com/sparanoid/almace-scaffolding/commit/3dc4fe4))
* **css:** remove typography detect hack for windows ([000339a](https://github.com/sparanoid/almace-scaffolding/commit/000339a))
* **css:** simplify list decoration font size ([cf109a3](https://github.com/sparanoid/almace-scaffolding/commit/cf109a3))
* **css:** update blockquote cite margin ([5df8803](https://github.com/sparanoid/almace-scaffolding/commit/5df8803))
* **css:** update list style ([5a4aef9](https://github.com/sparanoid/almace-scaffolding/commit/5a4aef9))
* **gem:** preload jekyll plugins ([cf7ab9d](https://github.com/sparanoid/almace-scaffolding/commit/cf7ab9d))
* **template:** update lang attribute ([0d518d0](https://github.com/sparanoid/almace-scaffolding/commit/0d518d0))


### BREAKING CHANGES

* **template:** old `languages` is now depreacted, in place of a more common attribute `lang`



<a name="2.0.4"></a>
## [2.0.4](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.3...v2.0.4) (2018-09-01)


### Bug Fixes

* **css:** missing varibles ([0865587](https://github.com/sparanoid/almace-scaffolding/commit/0865587))
* **css:** wrong list deco position ([5225640](https://github.com/sparanoid/almace-scaffolding/commit/5225640))
* **css:** wrong summary position on small screens ([89ece87](https://github.com/sparanoid/almace-scaffolding/commit/89ece87))


### Features

* **css:** add summary support ([781c5dc](https://github.com/sparanoid/almace-scaffolding/commit/781c5dc))
* **css:** apply font features to `:root` ([6831f2b](https://github.com/sparanoid/almace-scaffolding/commit/6831f2b))
* **css:** better font-feature-settings ([17804b8](https://github.com/sparanoid/almace-scaffolding/commit/17804b8))
* **css:** refine header, footer appearance ([94ca740](https://github.com/sparanoid/almace-scaffolding/commit/94ca740))
* **css:** update footer font size and decos ([53cb2ce](https://github.com/sparanoid/almace-scaffolding/commit/53cb2ce))
* **docs:** update quick start guide ([753b9ec](https://github.com/sparanoid/almace-scaffolding/commit/753b9ec))
* **getting-started:** use https clone by default ([0692b3e](https://github.com/sparanoid/almace-scaffolding/commit/0692b3e))



<a name="2.0.3"></a>
## [2.0.3](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.2...v2.0.3) (2018-08-21)


### Bug Fixes

* **grunt:** wrong hash generated ([52a6ff1](https://github.com/sparanoid/almace-scaffolding/commit/52a6ff1))


### Features

* **docs:** brand badge first ([dbe9cb0](https://github.com/sparanoid/almace-scaffolding/commit/dbe9cb0))
* **grunt:** add  support ([3eb03a8](https://github.com/sparanoid/almace-scaffolding/commit/3eb03a8))



<a name="2.0.2"></a>
## [2.0.2](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.1...v2.0.2) (2018-08-20)


### Features

* **google_analytics:** enable ip anonymization by default ([b361f1f](https://github.com/sparanoid/almace-scaffolding/commit/b361f1f))
* **grunt:** remove deprecated csscomb support ([70bd4b2](https://github.com/sparanoid/almace-scaffolding/commit/70bd4b2))
* **post:** use lighter arrow for “Welcome” ([6d0d843](https://github.com/sparanoid/almace-scaffolding/commit/6d0d843))



<a name="2.0.1"></a>
## [2.0.1](https://github.com/sparanoid/almace-scaffolding/compare/v2.0.0...v2.0.1) (2018-07-23)


### Bug Fixes

* **css:** invalid font stack when `--fontstack-prefix` is empty ([6757818](https://github.com/sparanoid/almace-scaffolding/commit/6757818))
* **css:** wrong variable ([0ba92a0](https://github.com/sparanoid/almace-scaffolding/commit/0ba92a0))


### Features

* **css:** update color variables ([02110f2](https://github.com/sparanoid/almace-scaffolding/commit/02110f2))



<a name="2.0.0"></a>
# [2.0.0](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.10...v2.0.0) (2018-07-23)


### Bug Fixes

* wrong color manipulation ([4212591](https://github.com/sparanoid/almace-scaffolding/commit/4212591))
* **css:** user override not working ([23944c3](https://github.com/sparanoid/almace-scaffolding/commit/23944c3))
* **deploy:** rsync `s3_website` config ([7c6855c](https://github.com/sparanoid/almace-scaffolding/commit/7c6855c))
* **grunt:** wrong sass dist output ([c943b14](https://github.com/sparanoid/almace-scaffolding/commit/c943b14))


### Features

* **amsf:** basic i18n support ([be880b5](https://github.com/sparanoid/almace-scaffolding/commit/be880b5))
* **config:** expose site to local network ([7b5e418](https://github.com/sparanoid/almace-scaffolding/commit/7b5e418))
* **css:** basic css variables and scss support ([0128020](https://github.com/sparanoid/almace-scaffolding/commit/0128020))
* **css:** remove less leftovers ([6b62668](https://github.com/sparanoid/almace-scaffolding/commit/6b62668))
* **css:** sassy randomized ([33bccf9](https://github.com/sparanoid/almace-scaffolding/commit/33bccf9))
* **css:** simplify variables ([5ab37ca](https://github.com/sparanoid/almace-scaffolding/commit/5ab37ca))
* **css:** update default code color ([1f486b1](https://github.com/sparanoid/almace-scaffolding/commit/1f486b1))
* larger favicon ([955461c](https://github.com/sparanoid/almace-scaffolding/commit/955461c))
* **docs:** update feature stack [ci skip] ([0215318](https://github.com/sparanoid/almace-scaffolding/commit/0215318))
* **grunt:** esify uglify ([207fb28](https://github.com/sparanoid/almace-scaffolding/commit/207fb28))
* **grunt:** switch to ([2d07dc3](https://github.com/sparanoid/almace-scaffolding/commit/2d07dc3))
* **index:** simplify index title handling ([a687398](https://github.com/sparanoid/almace-scaffolding/commit/a687398))
* **post:** Upgrading Guide from v1 to v2 [skip ci] ([18744f4](https://github.com/sparanoid/almace-scaffolding/commit/18744f4))
* **template:** better output with liquid v4 whitespace control ([9520109](https://github.com/sparanoid/almace-scaffolding/commit/9520109))
* **template:** refine whitespace ([dbe1a41](https://github.com/sparanoid/almace-scaffolding/commit/dbe1a41))
* **themes:** atom link removed, not that important nowadays ([974968f](https://github.com/sparanoid/almace-scaffolding/commit/974968f))



<a name="1.1.10"></a>
## [1.1.10](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.9...v1.1.10) (2018-02-01)


### Features

* **jekyll:** use native livereload for better performance ([5a75298](https://github.com/sparanoid/almace-scaffolding/commit/5a75298))



<a name="1.1.9"></a>
## [1.1.9](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.8...v1.1.9) (2018-01-24)


### Bug Fixes

* **css:** uninherited input text color ([eddba33](https://github.com/sparanoid/almace-scaffolding/commit/eddba33))
* **css:** wrong syntax highlight scope ([745603b](https://github.com/sparanoid/almace-scaffolding/commit/745603b))
* **curtana:** wrong ruby appearance for asian language ([da6ef36](https://github.com/sparanoid/almace-scaffolding/commit/da6ef36))
* **feed-json:** wrong rendered content output ([a55f662](https://github.com/sparanoid/almace-scaffolding/commit/a55f662))
* **index:** wrong og image ([acfd4fc](https://github.com/sparanoid/almace-scaffolding/commit/acfd4fc))
* **tempalte:** empty not pass through correctly with liquid version 4 ([fe7aa57](https://github.com/sparanoid/almace-scaffolding/commit/fe7aa57))


### Features

* **grunt:** open default browser only ([304dbe8](https://github.com/sparanoid/almace-scaffolding/commit/304dbe8))
* use google analytics gtag script ([c8ef051](https://github.com/sparanoid/almace-scaffolding/commit/c8ef051))
* **license:** bump year ([07fc737](https://github.com/sparanoid/almace-scaffolding/commit/07fc737))
* **site:** use SVG for homepage ([13dc144](https://github.com/sparanoid/almace-scaffolding/commit/13dc144))
* **style:** match link space in header and footer ([9286c63](https://github.com/sparanoid/almace-scaffolding/commit/9286c63))
* **style:** simplify default user styles ([ea6392f](https://github.com/sparanoid/almace-scaffolding/commit/ea6392f))
* **template:** iphone x support ([4e4d067](https://github.com/sparanoid/almace-scaffolding/commit/4e4d067))
* **template:** remove `grunt-leading-quotes` support, use native `hanging-punctuation` CSS feature ([9a86786](https://github.com/sparanoid/almace-scaffolding/commit/9a86786))



<a name="1.1.8"></a>
## [1.1.8](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.7...v1.1.8) (2017-03-13)


### Bug Fixes

* **curtana:** avoid applying `font-feature-settings` for non-Apple devices ([2f1f6fa](https://github.com/sparanoid/almace-scaffolding/commit/2f1f6fa))
* **header:** extra whitespace for links in header ([ebd2241](https://github.com/sparanoid/almace-scaffolding/commit/ebd2241))
* **style:** script generated styles been removed by `uncss` ([5e78d47](https://github.com/sparanoid/almace-scaffolding/commit/5e78d47))


### Features

* **curtana:** global font smoothing ([57bd509](https://github.com/sparanoid/almace-scaffolding/commit/57bd509))
* **curtana:** simplify code wrapping using `overflow-wrap` ([3f9d0f8](https://github.com/sparanoid/almace-scaffolding/commit/3f9d0f8))
* **grunt:** more aggressive autoprefixer config ([ba74276](https://github.com/sparanoid/almace-scaffolding/commit/ba74276))
* **header:** use `slugify` name for header link state comparison ([fe98930](https://github.com/sparanoid/almace-scaffolding/commit/fe98930))
* **script:** use minified script ([c83b5d2](https://github.com/sparanoid/almace-scaffolding/commit/c83b5d2))
* **template:** unify `header` naming ([48cf486](https://github.com/sparanoid/almace-scaffolding/commit/48cf486))
* **template:** use inline css option for error page ([303d873](https://github.com/sparanoid/almace-scaffolding/commit/303d873))



<a name="1.1.7"></a>
## [1.1.7](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.6...v1.1.7) (2017-02-16)


### Bug Fixes

* **grunt:** missing core files update ([99e3004](https://github.com/sparanoid/almace-scaffolding/commit/99e3004))
* **post:** wrong donate URL ([c3e51fe](https://github.com/sparanoid/almace-scaffolding/commit/c3e51fe))
* **template:** external feed URL not correctly parseed ([432371c](https://github.com/sparanoid/almace-scaffolding/commit/432371c))


### Features

* **favicon:** add border for Chrome Web App design ([cd48b62](https://github.com/sparanoid/almace-scaffolding/commit/cd48b62))
* **footer:** simplify condition ([a137df6](https://github.com/sparanoid/almace-scaffolding/commit/a137df6))
* **grunt:** add `html_trim` support ([72e0f35](https://github.com/sparanoid/almace-scaffolding/commit/72e0f35))
* **jekyll:** update support for v3.4.0 ([a886418](https://github.com/sparanoid/almace-scaffolding/commit/a886418))
* **template:** inline `favicon.svg` ([c22daac](https://github.com/sparanoid/almace-scaffolding/commit/c22daac))
* **template:** migrate from home-made `site.base` and `amsf_theme_base` to Jekyll built-in `relative_url` and `absolute_url` ([777929e](https://github.com/sparanoid/almace-scaffolding/commit/777929e))
* **template:** update helper structure ([90f6d0f](https://github.com/sparanoid/almace-scaffolding/commit/90f6d0f))


### BREAKING CHANGES

* template: To migrate from old URL structure. You should simply replace the following:
  - `site.base` in your templates to `relative_url`, examples:
    - `{{ site.base }}/my-post.html` to `{{ "my-post.html" | relative_url }}`
    - `{{ "my-post.html" | prepend: site.base }}` to `{{ "my-post.html" | relative_url }}`
  - `amsf_theme_base` in your templates to `absolute_url`, examples:
    - `{{ amsf_theme_base }}/my-post.html` to `{{ "my-post.html" | absolute_url }}`
    - `{{ "my-post.html" | prepend: amsf_theme_base }}` to `{{ "my-post.html" | absolute_url }}`



<a name="1.1.6"></a>
## [1.1.6](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.5...v1.1.6) (2017-01-19)


### Features

* **curtana:** image size helpers ([3df01f7](https://github.com/sparanoid/almace-scaffolding/commit/3df01f7))
* **curtana:** layout minor tweaks ([dfd1e41](https://github.com/sparanoid/almace-scaffolding/commit/dfd1e41))
* **curtana:** simply offset calculation ([020c34e](https://github.com/sparanoid/almace-scaffolding/commit/020c34e))
* **grunt:** add `publish` task support ([c43dbb7](https://github.com/sparanoid/almace-scaffolding/commit/c43dbb7))
* **post:** use kramdown syntax ([d79f2a2](https://github.com/sparanoid/almace-scaffolding/commit/d79f2a2))
* **style:** update syntax highlighter styles ([f0807db](https://github.com/sparanoid/almace-scaffolding/commit/f0807db))


### BREAKING CHANGES

* style: I've remove Redcarpet config to enforce using Rouge as default highlighter, it's also recommended to switch to Rouge over Redcarpet as your default highlighter.

More work still need to be done to simplify the stylesheets, ref https://github.com/jekyll/jekyll/pull/4053



<a name="1.1.5"></a>
## [1.1.5](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.4...v1.1.5) (2017-01-17)


### Bug Fixes

* **manifest:** wrong variable ([8e6111c](https://github.com/sparanoid/almace-scaffolding/commit/8e6111c))
* **post:** wrong internal post link ([f6c8184](https://github.com/sparanoid/almace-scaffolding/commit/f6c8184))
* **service-worker:** too aggressive image caching ([05fd453](https://github.com/sparanoid/almace-scaffolding/commit/05fd453))


### Features

* **amsf:** add `colors` config ([5ba1094](https://github.com/sparanoid/almace-scaffolding/commit/5ba1094))
* **amsf:** basic Chrome Web App manifest support ([28e5d67](https://github.com/sparanoid/almace-scaffolding/commit/28e5d67))
* **amsf:** better Safari mask icon support ([ba286ca](https://github.com/sparanoid/almace-scaffolding/commit/ba286ca))
* **amsf:** remove deplicated assigns ([623a4f3](https://github.com/sparanoid/almace-scaffolding/commit/623a4f3))
* **amsf:** system-wide snippet import support ([4c531c9](https://github.com/sparanoid/almace-scaffolding/commit/4c531c9))
* **config:** better comments for init config ([f8ec113](https://github.com/sparanoid/almace-scaffolding/commit/f8ec113))
* **curtana:** update Lightense Images ([55ea836](https://github.com/sparanoid/almace-scaffolding/commit/55ea836))
* **grunt:** move `service_worker` file globs option to config ([7c94736](https://github.com/sparanoid/almace-scaffolding/commit/7c94736))
* **grunt:** use `workerFile` variable ([fa43158](https://github.com/sparanoid/almace-scaffolding/commit/fa43158))
* **manifest:** add `theme_color` and `background_color` support ([c0c23ce](https://github.com/sparanoid/almace-scaffolding/commit/c0c23ce))
* **service-worker:** limit max size to cache ([6074a00](https://github.com/sparanoid/almace-scaffolding/commit/6074a00))
* **service-worker:** make sure Service Worker works only when hostname matches ([3edeffc](https://github.com/sparanoid/almace-scaffolding/commit/3edeffc))


### BREAKING CHANGES

* amsf: Now the `primary_color` is deprecated, please replace all `site.primary_color` to `site.colors.theme` in your templates.



<a name="1.1.4"></a>
## [1.1.4](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.3...v1.1.4) (2017-01-14)


### Bug Fixes

* **config:** wrong Service Worker init key ([4583fb9](https://github.com/sparanoid/almace-scaffolding/commit/4583fb9))
* **curtana:** wrong word wrapping in `pre` codeblocks ([8962aac](https://github.com/sparanoid/almace-scaffolding/commit/8962aac))
* **posts:** deprecated `sitemap` usage ([e41944d](https://github.com/sparanoid/almace-scaffolding/commit/e41944d))
* **s3_website:** wrong cache value for `*service-worker.js` ([705a34b](https://github.com/sparanoid/almace-scaffolding/commit/705a34b))


### Features

* **grunt:** `cacheBust` only css and js ([70568ac](https://github.com/sparanoid/almace-scaffolding/commit/70568ac))
* **grunt:** remove `lesslint` support ([3677115](https://github.com/sparanoid/almace-scaffolding/commit/3677115))
* **grunt:** update Service Worker glob pattern ([18712f8](https://github.com/sparanoid/almace-scaffolding/commit/18712f8))
* **grunt:** use `grunt-service-worker` ([3bc06f1](https://github.com/sparanoid/almace-scaffolding/commit/3bc06f1))
* **package:** remove deprecated package ([8ae3700](https://github.com/sparanoid/almace-scaffolding/commit/8ae3700))
* **post:** brand Service Worker in post “Welcome” ([2685690](https://github.com/sparanoid/almace-scaffolding/commit/2685690))



<a name="1.1.3"></a>
## [1.1.3](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.2...v1.1.3) (2017-01-13)


### Features

* init Service Worker support ([553e91a](https://github.com/sparanoid/almace-scaffolding/commit/553e91a))
* **amsf:** make Service Worker system feature ([8da2494](https://github.com/sparanoid/almace-scaffolding/commit/8da2494))
* **curtana:** less aggressive word breaking (wrapping) for codes ([8451012](https://github.com/sparanoid/almace-scaffolding/commit/8451012))
* **grunt:** uglify `service-worker.js` ([a202fd9](https://github.com/sparanoid/almace-scaffolding/commit/a202fd9))
* **post:** add testing guide for “Getting Started” ([6ea1fad](https://github.com/sparanoid/almace-scaffolding/commit/6ea1fad))
* **post:** update content for “Deployment Methods” ([4933c42](https://github.com/sparanoid/almace-scaffolding/commit/4933c42))



<a name="1.1.2"></a>
## [1.1.2](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.1...v1.1.2) (2017-01-09)


### Features

* **post:** new post “Upgrade Guide: v1.1.0” ([9bd2ab1](https://github.com/sparanoid/almace-scaffolding/commit/9bd2ab1))
* **posts:** docs minor tweaks ([b43002b](https://github.com/sparanoid/almace-scaffolding/commit/b43002b))
* **template:** make custom heading image and background available for pages ([5951b7b](https://github.com/sparanoid/almace-scaffolding/commit/5951b7b))
* **template:** no longer support `favicon.ico` ([fb6de93](https://github.com/sparanoid/almace-scaffolding/commit/fb6de93))



<a name="1.1.1"></a>
## [1.1.1](https://github.com/sparanoid/almace-scaffolding/compare/v1.1.0...v1.1.1) (2017-01-06)


### Bug Fixes

* **posts:** wrong post linking ([1d9463c](https://github.com/sparanoid/almace-scaffolding/commit/1d9463c))


### Features

* **template:** smarter way to handle favicons ([48b4b22](https://github.com/sparanoid/almace-scaffolding/commit/48b4b22))



<a name="1.1.0"></a>
# [1.1.0](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.9...v1.1.0) (2017-01-06)


### Bug Fixes

* **config:** wrong comment ([89f36b3](https://github.com/sparanoid/almace-scaffolding/commit/89f36b3))
* **curtanta:** wrong style define for external indicator in post list ([dc9831c](https://github.com/sparanoid/almace-scaffolding/commit/dc9831c))
* **post:** syntax highlight causes codes unreadable on custom color scheme ([c5c71f2](https://github.com/sparanoid/almace-scaffolding/commit/c5c71f2))
* **template:** wrong Open Graph image URL ([a12bc15](https://github.com/sparanoid/almace-scaffolding/commit/a12bc15))


### Features

* **curtana:** better list item link color ([2868761](https://github.com/sparanoid/almace-scaffolding/commit/2868761))
* **curtana:** heading background customization support (finally) ([753e4c1](https://github.com/sparanoid/almace-scaffolding/commit/753e4c1))
* **curtana:** remove custom `::selection` styles ([1a3d468](https://github.com/sparanoid/almace-scaffolding/commit/1a3d468))
* **grunt:** basic `s3_website` support ([06df93c](https://github.com/sparanoid/almace-scaffolding/commit/06df93c))
* **post:** more info for “Jekyll Theme Compatibility” ([a072542](https://github.com/sparanoid/almace-scaffolding/commit/a072542))
* **post:** new post “Open Graph” ([9e64bc6](https://github.com/sparanoid/almace-scaffolding/commit/9e64bc6))
* **post:** update heading background ([0c99a0a](https://github.com/sparanoid/almace-scaffolding/commit/0c99a0a))
* **template:** refactor thumbnail support ([92cbd7b](https://github.com/sparanoid/almace-scaffolding/commit/92cbd7b))
* **template:** simplify thumbnail logic ([bb811b0](https://github.com/sparanoid/almace-scaffolding/commit/bb811b0))


### BREAKING CHANGES

* template: In this update the `svg-headline*` and `img-headline*` are deprecated and no longer available. You should use the new syntax `heading-img` for this feature, more info available on our project site.



<a name="1.0.9"></a>
## [1.0.9](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.8...v1.0.9) (2016-12-29)


### Features

* **amsf:** update site title separator ([419f5cd](https://github.com/sparanoid/almace-scaffolding/commit/419f5cd))
* **curtana:** more specific decoration color ([4c6f164](https://github.com/sparanoid/almace-scaffolding/commit/4c6f164))
* **curtana:** smaller inline codes to match general text ([d53d715](https://github.com/sparanoid/almace-scaffolding/commit/d53d715))
* **curtana:** visual align tweak for list decorations ([4c3db6b](https://github.com/sparanoid/almace-scaffolding/commit/4c3db6b))
* **theme:** smaller header for small screens ([ccbb1f2](https://github.com/sparanoid/almace-scaffolding/commit/ccbb1f2))
* **theme:** update Lightense Images ([9cdf6d1](https://github.com/sparanoid/almace-scaffolding/commit/9cdf6d1))



<a name="1.0.8"></a>
## [1.0.8](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.7...v1.0.8) (2016-12-12)


### Features

* simplify push arg ([616ce2a](https://github.com/sparanoid/almace-scaffolding/commit/616ce2a))
* **amsf:** `thumb_force_logo` to force using site logo regardless first image of a post ([dec56bc](https://github.com/sparanoid/almace-scaffolding/commit/dec56bc))
* **curtana:** add description list styles ([27feb67](https://github.com/sparanoid/almace-scaffolding/commit/27feb67))
* **grunt:** support ignore js generated styles via `grunt-uncss-inline` ([ccf4428](https://github.com/sparanoid/almace-scaffolding/commit/ccf4428))
* **post:** update “Configuration” list ([e1072b8](https://github.com/sparanoid/almace-scaffolding/commit/e1072b8))



<a name="1.0.7"></a>
## [1.0.7](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.6...v1.0.7) (2016-11-29)


### Bug Fixes

* **amsf:** missing `match_regex` gem ([8c1ba3a](https://github.com/sparanoid/almace-scaffolding/commit/8c1ba3a))
* **curtana:** wrong condition for detecting favicon ([ba60f33](https://github.com/sparanoid/almace-scaffolding/commit/ba60f33))


### Features

* **amsf:** a simpler and more reliable way to get first image ([5c131b2](https://github.com/sparanoid/almace-scaffolding/commit/5c131b2))
* **amsf:** add `logo.png` for Open Graph and Twitter Cards ([c3c8591](https://github.com/sparanoid/almace-scaffolding/commit/c3c8591))
* **amsf:** vanity Google Analytics code ([8cb6e54](https://github.com/sparanoid/almace-scaffolding/commit/8cb6e54))
* **config:** enable large image for Twitter Cards by default ([056e455](https://github.com/sparanoid/almace-scaffolding/commit/056e455))
* **curtana:** better meddia detection for Twitter Cards and Open Graph ([0594582](https://github.com/sparanoid/almace-scaffolding/commit/0594582))
* **curtana:** link style button ([e923d8b](https://github.com/sparanoid/almace-scaffolding/commit/e923d8b))
* **curtana:** remove donate variables ([345d1ac](https://github.com/sparanoid/almace-scaffolding/commit/345d1ac))
* **template:** better Twitter Cards and Open Graph support ([fec052b](https://github.com/sparanoid/almace-scaffolding/commit/fec052b))



<a name="1.0.6"></a>
## [1.0.6](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.5...v1.0.6) (2016-11-10)


### Bug Fixes

* **grunt:** missing deploy environment variable ([bb3d6a7](https://github.com/sparanoid/almace-scaffolding/commit/bb3d6a7))



<a name="1.0.5"></a>
## [1.0.5](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.4...v1.0.5) (2016-11-09)


### Features

* **grunt:** signed release commit ([f9999f3](https://github.com/sparanoid/almace-scaffolding/commit/f9999f3))



<a name="1.0.4"></a>
## [1.0.4](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.3...v1.0.4) (2016-11-08)


### Bug Fixes

* **grunt:** removing `.uncssrc` causes upgrading errors and missing stylesheets got uncssed, need a better solution, just add it back for now for backward compatibility ([acc75e9](https://github.com/sparanoid/almace-scaffolding/commit/acc75e9))



<a name="1.0.3"></a>
## [1.0.3](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.2...v1.0.3) (2016-11-08)


### Bug Fixes

* **grunt:** bump `grunt-uncss-inline` to avoid unrelated css files inlined ([2777eed](https://github.com/sparanoid/almace-scaffolding/commit/2777eed))


### Features

* **docs:** better update guide ([0cd3a66](https://github.com/sparanoid/almace-scaffolding/commit/0cd3a66))
* **post:** add new post "Jekyll Theme Compatibility" ([4f76f56](https://github.com/sparanoid/almace-scaffolding/commit/4f76f56))



<a name="1.0.2"></a>
## [1.0.2](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.1...v1.0.2) (2016-11-07)


### Features

* **grunt:** add custom theme URL support ([5d2efc6](https://github.com/sparanoid/almace-scaffolding/commit/5d2efc6))
* **theme:** use latest Lightense Images ([4a2c6a1](https://github.com/sparanoid/almace-scaffolding/commit/4a2c6a1))


### BREAKING CHANGES

* grunt: Then you can simply run `grunt update` to process the update. But after upgrading, you need to set `amsf_theme_url` in `_amsf.yml` to support the latest version of Almace Scaffolding:

```yaml
amsf_theme_url: https://github.com/amsf/amsf-curtana # or your own if you've already using a custom theme from me)
```

This could be more complex for end users but it also allows users to use custom theme hosted wherever they want.



<a name="1.0.1"></a>
## [1.0.1](https://github.com/sparanoid/almace-scaffolding/compare/v1.0.0...v1.0.1) (2016-11-07)


### Bug Fixes

* **grunt:** external `.uncssrc` causes unexpected result when `raw` is empty ([e26088a](https://github.com/sparanoid/almace-scaffolding/commit/e26088a))
* **grunt:** missing `htmlroot` for `uncss_inline` ([7f98e12](https://github.com/sparanoid/almace-scaffolding/commit/7f98e12))


### Features

* **grunt:** disable `removeEmptyElements` by default since it causes too much troble in the past, also props [@Cee](https://github.com/Cee), should fix https://github.com/sparanoid/almace-scaffolding/issues/56 ([c541844](https://github.com/sparanoid/almace-scaffolding/commit/c541844))



<a name="1.0.0"></a>
# [1.0.0](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.12...v1.0.0) (2016-10-08)


### Features

* **jekyll:** compatible with latest jekyll ([3e7421c](https://github.com/sparanoid/almace-scaffolding/commit/3e7421c))


### BREAKING CHANGES

* jekyll: Now AMSF is updated with latest version of Jekyll, with native theme support.

So the  in AMSF is now conflicted with Jekyll's theme directive. I have to rename it to  in order to compatible with built-in theme feature.



<a name="0.1.12"></a>
## [0.1.12](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.11...v0.1.12) (2016-10-08)


### Bug Fixes

* **deploy:** wrong prod deploy path ([a61535e](https://github.com/sparanoid/almace-scaffolding/commit/a61535e))
* **grunt:** avoid cleaning empty files ([32c7d4c](https://github.com/sparanoid/almace-scaffolding/commit/32c7d4c))
* **package:**  causes task hanging in macOS Sierra (also potentially in other platforms), should fix https://github.com/sparanoid/almace-scaffolding/issues/54 ([f7b4b8a](https://github.com/sparanoid/almace-scaffolding/commit/f7b4b8a))
* **post:** typo ([e87bf30](https://github.com/sparanoid/almace-scaffolding/commit/e87bf30))
* **travis:** remove node v0.12 support (lack of ES6) ([42ce9d9](https://github.com/sparanoid/almace-scaffolding/commit/42ce9d9))


### Features

* **config:** go HTTPS ([d2c4d5a](https://github.com/sparanoid/almace-scaffolding/commit/d2c4d5a))
* **grunt:** add custom envrionment deployment ([0b460bc](https://github.com/sparanoid/almace-scaffolding/commit/0b460bc))
* **grunt:** add user  support ([e775595](https://github.com/sparanoid/almace-scaffolding/commit/e775595))
* **style:** tweak typography for San Francisco for macOS with OpenType features support ([dde96bc](https://github.com/sparanoid/almace-scaffolding/commit/dde96bc))



<a name="0.1.11"></a>
## [0.1.11](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.10...v0.1.11) (2016-06-13)


### Bug Fixes

* **grunt:** config not corectly checked before upgrading ([60ef187](https://github.com/sparanoid/almace-scaffolding/commit/60ef187))



<a name="0.1.10"></a>
## [0.1.10](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.9...v0.1.10) (2016-06-13)


### Bug Fixes

* **grunt:** version confg not updated ([bfe15af](https://github.com/sparanoid/almace-scaffolding/commit/bfe15af))



<a name="0.1.9"></a>
## [0.1.9](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.8...v0.1.9) (2016-06-13)


### Features

* **feed:** add  tag for Atom output ([6ee388e](https://github.com/sparanoid/almace-scaffolding/commit/6ee388e))
* **grunt:** remove banner support for minified HTMLs ([dfed2be](https://github.com/sparanoid/almace-scaffolding/commit/dfed2be))
* **theme:** remove CSS comments ([6c04f11](https://github.com/sparanoid/almace-scaffolding/commit/6c04f11))
* update AMSF config structure ([542a59b](https://github.com/sparanoid/almace-scaffolding/commit/542a59b))


### BREAKING CHANGES

* Now the `./_amsf/` directory is obsolete, config `_amsf.yml` and cache directory `.amsf-cache` are introduced, if you see errors when update the AMSF, try create `_amsf.yml` from the AMSF source code



<a name="0.1.8"></a>
## [0.1.8](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.7...v0.1.8) (2016-06-06)


### Features

* **config:** update comment for better readability ([16911d8](https://github.com/sparanoid/almace-scaffolding/commit/16911d8))
* **style:** remove obsoleted option ([9110848](https://github.com/sparanoid/almace-scaffolding/commit/9110848))
* **style:** remove site specific styles ([6617343](https://github.com/sparanoid/almace-scaffolding/commit/6617343))



<a name="0.1.7"></a>
## [0.1.7](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.6...v0.1.7) (2016-06-03)


### Bug Fixes

* **config:** wrong URL ([3493955](https://github.com/sparanoid/almace-scaffolding/commit/3493955))
* **post:** typo post name ([9c0677d](https://github.com/sparanoid/almace-scaffolding/commit/9c0677d))


### Features

* **grunt:** auto release task ([6c33090](https://github.com/sparanoid/almace-scaffolding/commit/6c33090))
* **grunt:** update deploy script ([a519d61](https://github.com/sparanoid/almace-scaffolding/commit/a519d61))



<a name="0.1.6"></a>
## [0.1.6](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.5...v0.1.6) (2016-06-01)


### Features

* **config:** update default timezone ([0489949](https://github.com/sparanoid/almace-scaffolding/commit/0489949))
* **deploy:** update rsync deploy parameter ([a63ae8e](https://github.com/sparanoid/almace-scaffolding/commit/a63ae8e))
* **grunt:** add  support for better minified output ([1934283](https://github.com/sparanoid/almace-scaffolding/commit/1934283))
* **grunt:** add project specific deploy task ([69766fb](https://github.com/sparanoid/almace-scaffolding/commit/69766fb))
* **post:** introducing theme Curtana ([b91aea6](https://github.com/sparanoid/almace-scaffolding/commit/b91aea6))


### BREAKING CHANGES

* deploy: now the original  are removed, all additional  parameters should be passed through  option, you can view  for more information about this change.



<a name="0.1.5"></a>
## [0.1.5](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.4...v0.1.5) (2016-05-16)


### Features

* **docs:** semantic file name ([d123853](https://github.com/sparanoid/almace-scaffolding/commit/d123853))
* **style:** add header background image example ([dab7482](https://github.com/sparanoid/almace-scaffolding/commit/dab7482))
* **style:** merge  into ([de33477](https://github.com/sparanoid/almace-scaffolding/commit/de33477))
* **theme:** useful comment for site specific styles ([07f2f96](https://github.com/sparanoid/almace-scaffolding/commit/07f2f96))



<a name="0.1.4"></a>
## [0.1.4](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.3...v0.1.4) (2016-05-12)


### Bug Fixes

* **grunt:** cannot enter passphrase for GPG signing script ([5a6ee76](https://github.com/sparanoid/almace-scaffolding/commit/5a6ee76))
* **theme:** adjust header height ([e644cdd](https://github.com/sparanoid/almace-scaffolding/commit/e644cdd))



<a name="0.1.3"></a>
## [0.1.3](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.2...v0.1.3) (2016-05-04)


### Features

* **theme:** update header height ([cad3c1c](https://github.com/sparanoid/almace-scaffolding/commit/cad3c1c))



<a name="0.1.2"></a>
## [0.1.2](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.1...v0.1.2) (2016-04-15)


### Bug Fixes

* **styles:** wrong logo width on larger screens ([31fa168](https://github.com/sparanoid/almace-scaffolding/commit/31fa168))
* **traivs:** try force npm@3 to avoid hard errors ([4823ddc](https://github.com/sparanoid/almace-scaffolding/commit/4823ddc))
* **travis:** update deps ([300b0e1](https://github.com/sparanoid/almace-scaffolding/commit/300b0e1))

### Features

* **styles:** optimize for iPad Pro portrait direction ([edd776b](https://github.com/sparanoid/almace-scaffolding/commit/edd776b))
* **template:** add `data-title` for later use ([b673e72](https://github.com/sparanoid/almace-scaffolding/commit/b673e72))
* **travis:** simplify build process ([68537f7](https://github.com/sparanoid/almace-scaffolding/commit/68537f7))



<a name="0.1.1"></a>
## [0.1.1](https://github.com/sparanoid/almace-scaffolding/compare/v0.1.0...v0.1.1) (2016-03-31)


### Bug Fixes

* **template:** use custom variable for “Home” placeholder ([8eaa29b](https://github.com/sparanoid/almace-scaffolding/commit/8eaa29b))

### Features

* **styles:** better heading space for small screens ([e56fcc1](https://github.com/sparanoid/almace-scaffolding/commit/e56fcc1))



<a name="0.1.0"></a>
# [0.1.0](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.58...v0.1.0) (2016-03-30)


### Bug Fixes

* **grunt:** disable `leading_quotes` for list, this could help avoid unwanted list style off ([ff19591](https://github.com/sparanoid/almace-scaffolding/commit/ff19591))
* **styles:** missing monospace for Windows ([d547628](https://github.com/sparanoid/almace-scaffolding/commit/d547628))

### Features

* **script:** update LIghtense Images ([5cb16c9](https://github.com/sparanoid/almace-scaffolding/commit/5cb16c9))
* **styles:** brand-new headings ([442d46f](https://github.com/sparanoid/almace-scaffolding/commit/442d46f))
* **styles:** visual aligin tweak ([d6240a4](https://github.com/sparanoid/almace-scaffolding/commit/d6240a4))


### BREAKING CHANGES

* styles: I've redesigned the site headings this time, and also introduces some new variables for you to customize them, you can use your favorite color site-wide or specific post in post front-matter field:

```yaml
scheme-hero-text: "#00ebff"
scheme-hero-link: "#00ebff"
scheme-hero-bg: "#0029ff"
```



<a name="0.0.58"></a>
## [0.0.58](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.57...v0.0.58) (2016-03-18)


### Features

* **grunt:** better deploy options ([59ffbe3](https://github.com/sparanoid/almace-scaffolding/commit/59ffbe3))


### BREAKING CHANGES

* grunt: Original `sftp` directive has been changed to `rsync` due to new grunt task deployment method changes.



<a name="0.0.57"></a>
## [0.0.57](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.56...v0.0.57) (2016-03-18)


### Bug Fixes

* **grunt:** assets in subdirectories are not correctly watched ([cfd273e](https://github.com/sparanoid/almace-scaffolding/commit/cfd273e))
* **styles:** "double" scroller issue on some platforms with codeblocks ([b4a608c](https://github.com/sparanoid/almace-scaffolding/commit/b4a608c))

### Features

* **styles:** tweak leading quote indents ([f7a810e](https://github.com/sparanoid/almace-scaffolding/commit/f7a810e))



<a name="0.0.56"></a>
## [0.0.56](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.55...v0.0.56) (2016-03-17)


### Bug Fixes

* **styles:** avoid override custom list style ([01c3b24](https://github.com/sparanoid/almace-scaffolding/commit/01c3b24))
* **styles:** wrong table stripes on mobile devices ([edca9fc](https://github.com/sparanoid/almace-scaffolding/commit/edca9fc))
* **template:** avoid link indicators being removed by `html-minifier` ([07ef24f](https://github.com/sparanoid/almace-scaffolding/commit/07ef24f))

### Features

* **grunt:** use custom regex for leading quotes fix ([917639c](https://github.com/sparanoid/almace-scaffolding/commit/917639c))
* **styles:** better leading quote indent with custom `letter-spacing` support ([5d19263](https://github.com/sparanoid/almace-scaffolding/commit/5d19263))
* **styles:** better list styles ([792fdf3](https://github.com/sparanoid/almace-scaffolding/commit/792fdf3))
* **styles:** smaller splitter ([66ca21c](https://github.com/sparanoid/almace-scaffolding/commit/66ca21c))
* **styles:** update leading quotes indent based on characters ([ea82707](https://github.com/sparanoid/almace-scaffolding/commit/ea82707))



<a name="0.0.55"></a>
## [0.0.55](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.54...v0.0.55) (2016-03-11)


### Bug Fixes

* **grunt:** avoid excluding minified scripts, it causes errors when building the site ([6b271d0](https://github.com/sparanoid/almace-scaffolding/commit/6b271d0))
* **script:** missing box sizing reset for Lightense ([088995a](https://github.com/sparanoid/almace-scaffolding/commit/088995a))
* **script:** update default image styles reset ([b5adce4](https://github.com/sparanoid/almace-scaffolding/commit/b5adce4))
* **template:** use `amsf_user_assets` variable ([ad87e86](https://github.com/sparanoid/almace-scaffolding/commit/ad87e86))

### Features

* **docs:** update library URL ([0588039](https://github.com/sparanoid/almace-scaffolding/commit/0588039))
* **grunt:** it's safe to remove empty elements ([e93ee80](https://github.com/sparanoid/almace-scaffolding/commit/e93ee80))
* **grunt:** simplify update process ([1866305](https://github.com/sparanoid/almace-scaffolding/commit/1866305))
* **script:** allow arbitrary element for Lightense ([488683c](https://github.com/sparanoid/almace-scaffolding/commit/488683c))
* **script:** inline Lightense ([3a58b97](https://github.com/sparanoid/almace-scaffolding/commit/3a58b97))
* **script:** update Lightense Images ([13300b2](https://github.com/sparanoid/almace-scaffolding/commit/13300b2))
* **styles:** darker codeblock background ([6da2f98](https://github.com/sparanoid/almace-scaffolding/commit/6da2f98))
* **styles:** lighter blockquotes ([53b49da](https://github.com/sparanoid/almace-scaffolding/commit/53b49da))
* **template:** simplifed banners ([3e264d3](https://github.com/sparanoid/almace-scaffolding/commit/3e264d3))



<a name="0.0.54"></a>
## [0.0.54](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.53...v0.0.54) (2016-03-09)


### Features

* **docs:** cleanup todos ([62240db](https://github.com/sparanoid/almace-scaffolding/commit/62240db))
* **scripts:** replace `intense.js` with `lightense.js` ([d66189c](https://github.com/sparanoid/almace-scaffolding/commit/d66189c))


### BREAKING CHANGES

* scripts: I've rewrote the `intense.js` from the ground up and rebranded it as `lightense.js`, a minimalism “lightbox” script less than 2 KB (not gzipped!).

If you have used Intensed Images, you have to change the plugin keyword in your front-matter fields from:

```yml
plugin: intense
```

to:

```yml
plugin: lightense
```



<a name="0.0.53"></a>
## [0.0.53](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.52...v0.0.53) (2016-03-05)


### Features

* **grunt:** checkout relase branch for AMSF update ([294594d](https://github.com/sparanoid/almace-scaffolding/commit/294594d))



<a name="0.0.52"></a>
## [0.0.52](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.51...v0.0.52) (2016-03-01)


### Bug Fixes

* **styles:** missing top navbar ([3dc6d04](https://github.com/sparanoid/almace-scaffolding/commit/3dc6d04))

### Features

* **jekyll:** update jekyll, this fix https://github.com/sparanoid/almace-scaffolding/commit/d ([87a8f06](https://github.com/sparanoid/almace-scaffolding/commit/87a8f06))



<a name="0.0.51"></a>
## [0.0.51](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.50...v0.0.51) (2016-03-01)


### Bug Fixes

* **grunt:** update config for new version ([3dd888c](https://github.com/sparanoid/almace-scaffolding/commit/3dd888c))
* **package:** wrong version fails test ([533a1a2](https://github.com/sparanoid/almace-scaffolding/commit/533a1a2))
* **styles:** error page not shown correct in Chrome (possibly browser bug) ([aed0d4e](https://github.com/sparanoid/almace-scaffolding/commit/aed0d4e))
* **styles:** missing custom `hr` css scope ([0ef9579](https://github.com/sparanoid/almace-scaffolding/commit/0ef9579))
* **styles:** missing placeholder styles for Firefox and other browsers ([784112b](https://github.com/sparanoid/almace-scaffolding/commit/784112b))

### Features

* **styles:** update scope for text styles ([057fbe2](https://github.com/sparanoid/almace-scaffolding/commit/057fbe2))


### BREAKING CHANGES

* grunt: Now it will no longer bust favicons and other assets outside the `<%= amsf.user.assets %>`.



<a name="0.0.50"></a>
## [0.0.50](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.49...v0.0.50) (2016-02-02)


### Bug Fixes

* **jekyll:** lock jekyll version https://github.com/jekyll/jekyll/issues/4427 ([dec98b3](https://github.com/sparanoid/almace-scaffolding/commit/dec98b3))
* **jekyll:** reset config with empty strings ([c0cb69a](https://github.com/sparanoid/almace-scaffolding/commit/c0cb69a))
* **styles:** missing padding variable for offset elements ([f83f2cb](https://github.com/sparanoid/almace-scaffolding/commit/f83f2cb))

### Features

* **deploy:** use traditional rsync command ([1ec5dda](https://github.com/sparanoid/almace-scaffolding/commit/1ec5dda))
* **style:** update `::selection` style ([d721226](https://github.com/sparanoid/almace-scaffolding/commit/d721226))


### BREAKING CHANGES

* deploy: Now you have to define your SSH user, port, and host in `_deploy.yml` in order to use `rsync` deployment. It no longer uses predefined hosts in your SSH config file, however this should work for most CI/DI services.



<a name="0.0.49"></a>
## [0.0.49](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.48...v0.0.49) (2015-12-20)


### Bug Fixes

* **style:** add missing variables for splitter ([410b94d](https://github.com/sparanoid/almace-scaffolding/commit/410b94d))
* **style:** avoid redundant classes ([760bbf6](https://github.com/sparanoid/almace-scaffolding/commit/760bbf6))
* **styles:** missing custom footnote decorations color ([03d6841](https://github.com/sparanoid/almace-scaffolding/commit/03d6841))
* **template:** avoid extra meta for non-post page ([68a2071](https://github.com/sparanoid/almace-scaffolding/commit/68a2071))

### Features

* **docs:** add new variables for templates ([5a48662](https://github.com/sparanoid/almace-scaffolding/commit/5a48662))
* **docs:** add notice for “Unique Post Styling via Custom CSS” ([b74d109](https://github.com/sparanoid/almace-scaffolding/commit/b74d109))
* **grunt:** add ignore patterns for cache busting ([f454547](https://github.com/sparanoid/almace-scaffolding/commit/f454547))
* **styles:** add position offset for `pre` and `table` ([1217e01](https://github.com/sparanoid/almace-scaffolding/commit/1217e01))
* **styles:** brand new spliter for `hr` and `.footnotes` ([d3a4864](https://github.com/sparanoid/almace-scaffolding/commit/d3a4864))
* **styles:** break Less into files ([1b993ab](https://github.com/sparanoid/almace-scaffolding/commit/1b993ab))
* **styles:** CSS cleanup ([fad460b](https://github.com/sparanoid/almace-scaffolding/commit/fad460b))
* **styles:** use CSS comments for branding ([edca955](https://github.com/sparanoid/almace-scaffolding/commit/edca955))
* **template:** add `article:published_time` and `article:modified_time` support ([8f64b24](https://github.com/sparanoid/almace-scaffolding/commit/8f64b24))
* **template:** experiments with custom data (Words and Reading time Open Graph support) ([0ff110b](https://github.com/sparanoid/almace-scaffolding/commit/0ff110b))


### BREAKING CHANGES

* template: Open Graph support with `article:published_time` and `article:modified_time` allow your site to gain better embedding support for third-party platforms. For example users will be able to see your post date in Slack chat log.



<a name="0.0.48"></a>
## [0.0.48](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.47...v0.0.48) (2015-12-04)


### Bug Fixes

* **deps:** Add peer dependency for grunt-coffeelint ([3132689](https://github.com/sparanoid/almace-scaffolding/commit/3132689))
* **jekyll:** avoid `footnote_backlink` conversion to an Emoji graphic on iOS ([170dd42](https://github.com/sparanoid/almace-scaffolding/commit/170dd42))
* **style:** avoid unwanted scrollers for `pre` blocks ([82f25e2](https://github.com/sparanoid/almace-scaffolding/commit/82f25e2))
* **styles:** make line numbers not selectable ([8f28573](https://github.com/sparanoid/almace-scaffolding/commit/8f28573))

### Features

* **config:** remove `_config.user.yml` support ([64ee055](https://github.com/sparanoid/almace-scaffolding/commit/64ee055))
* **docs:** better highlighting examples ([f93d80a](https://github.com/sparanoid/almace-scaffolding/commit/f93d80a))
* **gem:** use jekyll 3.0.0 stable ([4475503](https://github.com/sparanoid/almace-scaffolding/commit/4475503))
* **style:** gapless border for blockquotes, fixes https://github.com/amsf/amsf-curtana/issue ([9aeb5df](https://github.com/sparanoid/almace-scaffolding/commit/9aeb5df))
* **styles:** add basic `lineno` support ([9b09e93](https://github.com/sparanoid/almace-scaffolding/commit/9b09e93))
* **styles:** avoid calculating code color ([4273000](https://github.com/sparanoid/almace-scaffolding/commit/4273000))
* **styles:** update default code color ([dc290bb](https://github.com/sparanoid/almace-scaffolding/commit/dc290bb))
* **styles:** use brand-new fully automatic generated syntax highlighting ([426c09d](https://github.com/sparanoid/almace-scaffolding/commit/426c09d))
* **template:** add `site.robots` support ([0ddab1b](https://github.com/sparanoid/almace-scaffolding/commit/0ddab1b))
* **template:** update base urls for feeds ([3c13efe](https://github.com/sparanoid/almace-scaffolding/commit/3c13efe))
* **travis:** test node.js 4 ([ccd2399](https://github.com/sparanoid/almace-scaffolding/commit/ccd2399))


### BREAKING CHANGES

* style: Now paragraphs in a blockquote will get a single gapless border on the left side, you don't need special markup to achieve this now:

```markdown
> … these mean that in many fields the rule will be: Build it, and they will come.
>
> Paul Graham
```
* jekyll: Appending &#xfe0e; to the Unicode-represenation of the reversed arrow will prevent the conversion to an Emoji graphic on iOS. You should update kramdown settings `footnote_backlink` in your exisitng config.

Reference:

- https://github.com/jekyll/jekyll/issues/3751
- https://twitter.com/jasoncodes/status/590356654790574080
- https://github.com/sparanoid/almace-scaffolding/commit/d9d14a9f9088e66407c8c82098fcc02bfa1d2c10
* config: `_config.user.yml` is deprecated and no longer supported in the future, please keep config changes in `_config.yml`.
* template: Now you can define your custom `robots.txt` records in configuration file:

```yaml
robots:
  - "User-agent: *"
  - "Disallow: /ajax/"
  - "Disallow: /@async"
  - "Disallow: /log/"
```
* styles: This will change your syntax highlighting color scheme, you can now tweak it with `@code-color`, have fun.



<a name="0.0.47"></a>
## [0.0.47](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.46...v0.0.47) (2015-10-25)


### Bug Fixes

* **amsf:** missing title whitespace ([abd7f2f](https://github.com/sparanoid/almace-scaffolding/commit/abd7f2f))
* **feed:** missing base url for PSHH ([54271c4](https://github.com/sparanoid/almace-scaffolding/commit/54271c4))
* **jekyll:** empty config causes Jekyll ignoring later configs ([86decb2](https://github.com/sparanoid/almace-scaffolding/commit/86decb2))

### Features

* **feed:** basic PubSubHubbub support ([0d72326](https://github.com/sparanoid/almace-scaffolding/commit/0d72326))
* **feed:** remove PubSubHubbub support ([6df22eb](https://github.com/sparanoid/almace-scaffolding/commit/6df22eb))
* **gem:** bump and test latest Jeklly release ([190a5fe](https://github.com/sparanoid/almace-scaffolding/commit/190a5fe))
* **grunt:** add `mask-icon` support for Safari ([2560253](https://github.com/sparanoid/almace-scaffolding/commit/2560253))
* **grunt:** pass project name when deploy ([3f60155](https://github.com/sparanoid/almace-scaffolding/commit/3f60155))
* **style:** remove abbr styles ([bde59df](https://github.com/sparanoid/almace-scaffolding/commit/bde59df))
* **style:** smaller blockquotes font size ([e5da89e](https://github.com/sparanoid/almace-scaffolding/commit/e5da89e))
* **style:** tweak default code color ([b1535a1](https://github.com/sparanoid/almace-scaffolding/commit/b1535a1))
* **template:** disable `jekyll-last-modified-at` for dev mod for better performance ([0b30446](https://github.com/sparanoid/almace-scaffolding/commit/0b30446))
* **template:** use variable for mask-icon color ([be3d208](https://github.com/sparanoid/almace-scaffolding/commit/be3d208))



<a name="0.0.46"></a>
## [0.0.46](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.45...v0.0.46) (2015-09-29)


### Bug Fixes

* **docs:** typos ([613d4ae](https://github.com/sparanoid/almace-scaffolding/commit/613d4ae))
* **grunt:** bundle should update ([72b840e](https://github.com/sparanoid/almace-scaffolding/commit/72b840e))



<a name="0.0.45"></a>
## [0.0.45](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.44...v0.0.45) (2015-09-29)


### Features

* **gemfile:** use 3.0.0.pre.beta9 ([b6d3b7b](https://github.com/sparanoid/almace-scaffolding/commit/b6d3b7b))
* **jekyll:** add `config.user.js` support ([555a5db](https://github.com/sparanoid/almace-scaffolding/commit/555a5db))
* **template:** add modified date support ([ffbb3f3](https://github.com/sparanoid/almace-scaffolding/commit/ffbb3f3))
* **template:** use `user.less` and `user.js` ([00e0d72](https://github.com/sparanoid/almace-scaffolding/commit/00e0d72))


### BREAKING CHANGES

* Now you can define your custom config in `config.user.js` without touching the built-in configuration.


<a name="0.0.44"></a>
## [0.0.44](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.43...v0.0.44) (2015-09-27)


### Bug Fixes

* **grunt:** Less sourcemaps not recognized ([5357aab](https://github.com/sparanoid/almace-scaffolding/commit/5357aab))

### Features

* **grunt:** add new task `grunt init` for initializing new projects ([d026cb5](https://github.com/sparanoid/almace-scaffolding/commit/d026cb5))
* **style:** better fontstack variables ([5af01d9](https://github.com/sparanoid/almace-scaffolding/commit/5af01d9))
* **styles:** update text decoration ([5f604ba](https://github.com/sparanoid/almace-scaffolding/commit/5f604ba))


### BREAKING CHANGES

* You have to double check if you're overriding `@sans-serif`, `@serif`, or `@monospace` to use custom fontstacks, these variables have been changed to `@fontstack-sans-serif`, `@fontstack-serif`, and `@fontstack-monospace`.


<a name="0.0.43"></a>
## [0.0.43](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.42...v0.0.43) (2015-09-15)


### Bug Fixes

* **docs:** wrong heading ([8b7dc00](https://github.com/sparanoid/almace-scaffolding/commit/8b7dc00))
* **grunt:** wrong build order ([1ae038d](https://github.com/sparanoid/almace-scaffolding/commit/1ae038d))
* **package:** wrong dep version ([deaed34](https://github.com/sparanoid/almace-scaffolding/commit/deaed34))

### Features

* **docs:** update SVG title guide ([e1c39bd](https://github.com/sparanoid/almace-scaffolding/commit/e1c39bd))
* **grunt:** update dependencies ([9702f97](https://github.com/sparanoid/almace-scaffolding/commit/9702f97))
* **style:** avoid transition delay ([a00cc6d](https://github.com/sparanoid/almace-scaffolding/commit/a00cc6d))
* **style:** minor tweak ([de7ddfb](https://github.com/sparanoid/almace-scaffolding/commit/de7ddfb))
* **template:** disable language tag for post list ([c2824da](https://github.com/sparanoid/almace-scaffolding/commit/c2824da))
* **template:** use `data-assets-inline` attribute for `grunt-assets-inline` ([02c96e0](https://github.com/sparanoid/almace-scaffolding/commit/02c96e0))
* **travis:** remove iojs (now stable) ([3b2873c](https://github.com/sparanoid/almace-scaffolding/commit/3b2873c))



<a name="0.0.42"></a>
## [0.0.42](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.41...v0.0.42) (2015-09-07)


### Bug Fixes

* **grunt:** `leading_quotes` not invoked for `serve` task ([2bb107a](https://github.com/sparanoid/almace-scaffolding/commit/2bb107a))
* **grunt:** missing `leading_quotes` for build ([2fb2862](https://github.com/sparanoid/almace-scaffolding/commit/2fb2862))
* **grunt:** wrong `amsf-update` task ([ea0c0ce](https://github.com/sparanoid/almace-scaffolding/commit/ea0c0ce))

### Features

* **grunt:** deploy sites conditionally ([3c5c2aa](https://github.com/sparanoid/almace-scaffolding/commit/3c5c2aa))
* **grunt:** move deployment variables to a separate file ([80fe55b](https://github.com/sparanoid/almace-scaffolding/commit/80fe55b))
* **grunt:** preprocess leading quotes ([aa640bf](https://github.com/sparanoid/almace-scaffolding/commit/aa640bf))
* **grunt:** update config options ([483e08f](https://github.com/sparanoid/almace-scaffolding/commit/483e08f))
* **grunt:** use `newer` for `leading_quotes` ([4cd149c](https://github.com/sparanoid/almace-scaffolding/commit/4cd149c))



<a name="0.0.41"></a>
## [0.0.41](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.40...v0.0.41) (2015-09-01)


### Features

* **grunt:** add `update` command ([fc013d3](https://github.com/sparanoid/almace-scaffolding/commit/fc013d3))
* **grunt:** remove originals after assets being smooshed ([95e8b22](https://github.com/sparanoid/almace-scaffolding/commit/95e8b22))
* **grunt:** use rsync for them operations ([58ed513](https://github.com/sparanoid/almace-scaffolding/commit/58ed513))
* **template:** simplify template structure ([8c9d31f](https://github.com/sparanoid/almace-scaffolding/commit/8c9d31f))
* **travis:** update test tasks ([0dd2cc5](https://github.com/sparanoid/almace-scaffolding/commit/0dd2cc5))



<a name="0.0.40"></a>
## [0.0.40](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.39...v0.0.40) (2015-08-30)


### Features

* **grunt:** cleanup syntax ([2aab508](https://github.com/sparanoid/almace-scaffolding/commit/2aab508))
* **grunt:** use hashes for assets, help reduce CloudFront invalidation cost ([d54e8ff](https://github.com/sparanoid/almace-scaffolding/commit/d54e8ff))
* **sitemap:** simpler timestamps ([aa09ab7](https://github.com/sparanoid/almace-scaffolding/commit/aa09ab7))



<a name="0.0.39"></a>
## [0.0.39](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.38...v0.0.39) (2015-08-26)


### Bug Fixes

* **grunt:** avoid removing dev deps ([5e1fdde](https://github.com/sparanoid/almace-scaffolding/commit/5e1fdde))



<a name="0.0.38"></a>
## [0.0.38](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.37...v0.0.38) (2015-08-26)


### Bug Fixes

* **grunt:** JSON template not updated ([92487a9](https://github.com/sparanoid/almace-scaffolding/commit/92487a9))
* **style:** add `.no-enlarge` to exclude specific images ([9a78b77](https://github.com/sparanoid/almace-scaffolding/commit/9a78b77))
* **style:** better image, video, and iframe handling ([1e68a60](https://github.com/sparanoid/almace-scaffolding/commit/1e68a60))
* **template:** missing post language tag ([ed468ee](https://github.com/sparanoid/almace-scaffolding/commit/ed468ee))
* **theme:** code not break in list ([486372e](https://github.com/sparanoid/almace-scaffolding/commit/486372e))

### Features

* **grunt:** add theme dev task ([d8380d4](https://github.com/sparanoid/almace-scaffolding/commit/d8380d4))
* **style:** use `no-intense` instead of `nointese` ([5076db8](https://github.com/sparanoid/almace-scaffolding/commit/5076db8))
* **template:** better post / page language support ([6dd7a77](https://github.com/sparanoid/almace-scaffolding/commit/6dd7a77))
* **template:** rename JSON output ([87dfd51](https://github.com/sparanoid/almace-scaffolding/commit/87dfd51))


### BREAKING CHANGES

* This will break your current layout if you're using `nointense` for your images, please rename the classes to `no-intense`, sorry for the inconvenience.
* Now you can add `.no-enlarge` to images that you'd like to keep it in normal width in smaller devices:
```html
<img class="no-enlarge" src="/ipad-frame-01.png">
```


<a name="0.0.37"></a>
## [0.0.37](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.36...v0.0.37) (2015-08-24)


### Bug Fixes

* **bundle:** celluloid release was pulled (yanked) ([78d8f3d](https://github.com/sparanoid/almace-scaffolding/commit/78d8f3d))
* **grunt:** remove untracked directories when cleaning cache ([2486cac](https://github.com/sparanoid/almace-scaffolding/commit/2486cac))
* **post:** wrong URL ([2c5506a](https://github.com/sparanoid/almace-scaffolding/commit/2c5506a))
* **style:** some images not stretched on mobile devices ([6776c4b](https://github.com/sparanoid/almace-scaffolding/commit/6776c4b))

### Features

* **grunt:** cleanup theme files before updating ([21099b7](https://github.com/sparanoid/almace-scaffolding/commit/21099b7))
* **grunt:** minify JSON for production ([b26e182](https://github.com/sparanoid/almace-scaffolding/commit/b26e182))
* **grunt:** watch config changes ([eeb9e38](https://github.com/sparanoid/almace-scaffolding/commit/eeb9e38))
* **jekyll:** include `jekyll-last-modified-at` by default ([6cf59bd](https://github.com/sparanoid/almace-scaffolding/commit/6cf59bd))
* **sitemap:** hide posts with `hidden` attributes ([a81046b](https://github.com/sparanoid/almace-scaffolding/commit/a81046b))
* **style:** list minor tweaks ([5d0e9f4](https://github.com/sparanoid/almace-scaffolding/commit/5d0e9f4))
* **tempalte:** update Atom feed `id` tags ([0553e2d](https://github.com/sparanoid/almace-scaffolding/commit/0553e2d))
* **template:** add Google Analytics support ([adde9c7](https://github.com/sparanoid/almace-scaffolding/commit/adde9c7))
* **template:** add JSON output support ([8c88fec](https://github.com/sparanoid/almace-scaffolding/commit/8c88fec))
* **template:** remove excerpt feed ([554d3ba](https://github.com/sparanoid/almace-scaffolding/commit/554d3ba))
* **theme:** simplify custom styles ([0362e62](https://github.com/sparanoid/almace-scaffolding/commit/0362e62))
* update Atom feed / sitemap structure ([a5ca52b](https://github.com/sparanoid/almace-scaffolding/commit/a5ca52b))
* **theme:** update blockquotes style ([99ffe5a](https://github.com/sparanoid/almace-scaffolding/commit/99ffe5a))
* **travis:** update build notification ([f35c467](https://github.com/sparanoid/almace-scaffolding/commit/f35c467))


### BREAKING CHANGES

* This may make all your posts reappeared in some RSS readers, sorry for the inconvenience.


<a name="0.0.36"></a>
## [0.0.36](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.35...v0.0.36) (2015-08-19)


### Bug Fixes

* **docs:** typos ([8619ec3](https://github.com/sparanoid/almace-scaffolding/commit/8619ec3))
* **grunt:** `usebanner` not found ([cc245a3](https://github.com/sparanoid/almace-scaffolding/commit/cc245a3))

### Features

* **core:** basic custom styles and scripts support ([2b219d2](https://github.com/sparanoid/almace-scaffolding/commit/2b219d2))
* **docs:** add simple transfer guide ([bc46c39](https://github.com/sparanoid/almace-scaffolding/commit/bc46c39))
* **docs:** content update ([ff4d47d](https://github.com/sparanoid/almace-scaffolding/commit/ff4d47d))
* **grunt:** better grunt task variables naming ([2c31245](https://github.com/sparanoid/almace-scaffolding/commit/2c31245))
* **grunt:** use jit-grunt for better task performance ([4957c9b](https://github.com/sparanoid/almace-scaffolding/commit/4957c9b))
* **post:** add new category ([2c6bbeb](https://github.com/sparanoid/almace-scaffolding/commit/2c6bbeb))
* **theme:** rearrange assets ([16910f5](https://github.com/sparanoid/almace-scaffolding/commit/16910f5))
* **theme:** update default page templates ([088b814](https://github.com/sparanoid/almace-scaffolding/commit/088b814))



<a name="0.0.35"></a>
## [0.0.35](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.34...v0.0.35) (2015-08-18)


### Bug Fixes

* **docs:** wrong commands ([bdb71ea](https://github.com/sparanoid/almace-scaffolding/commit/bdb71ea))
* **grunt:** duplicated task ([95b3bbd](https://github.com/sparanoid/almace-scaffolding/commit/95b3bbd))
* **grunt:** reset repo before updating ([335e009](https://github.com/sparanoid/almace-scaffolding/commit/335e009))
* **style:** exclude browser image width ([99f247f](https://github.com/sparanoid/almace-scaffolding/commit/99f247f))
* **theme:** avoid image heading margin offset ([e92543e](https://github.com/sparanoid/almace-scaffolding/commit/e92543e))

### Features

* **docs:** better note ([a2a8250](https://github.com/sparanoid/almace-scaffolding/commit/a2a8250))
* **theme:** typographic tweaks ([cbc9430](https://github.com/sparanoid/almace-scaffolding/commit/cbc9430))



<a name="0.0.34"></a>
## [0.0.34](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.33...v0.0.34) (2015-08-17)


### Bug Fixes

* **grunt:** `strictMath` not enabled for `dist` task ([117cbc9](https://github.com/sparanoid/almace-scaffolding/commit/117cbc9))
* **post:** avoid the symbol conversion to an Emoji graphic on iOS ([d9d14a9](https://github.com/sparanoid/almace-scaffolding/commit/d9d14a9))
* **theme:** missing CSS variables for kramdown ([d665375](https://github.com/sparanoid/almace-scaffolding/commit/d665375))

### Features

* **docs:** LESS => Less ([4adeb27](https://github.com/sparanoid/almace-scaffolding/commit/4adeb27))
* **grunt:** add missing templates when update AMSF ([c8941f9](https://github.com/sparanoid/almace-scaffolding/commit/c8941f9))
* **grunt:** use `grunt-postcss` ([c678f33](https://github.com/sparanoid/almace-scaffolding/commit/c678f33))
* **style:** better code blocks and images size on mobile devices ([524bcf8](https://github.com/sparanoid/almace-scaffolding/commit/524bcf8))
* **theme:** add custom favicon support ([004b25b](https://github.com/sparanoid/almace-scaffolding/commit/004b25b))
* **theme:** update theme URL ([588f1ac](https://github.com/sparanoid/almace-scaffolding/commit/588f1ac))


### BREAKING CHANGES

* Appending to the Unicode-represenation of the reversed arrow will prevent the conversion to an Emoji graphic on iOS.

Reference:

- https://github.com/jekyll/jekyll/issues/3751
- https://twitter.com/jasoncodes/status/590356654790574080


<a name="0.0.33"></a>
## [0.0.33](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.32...v0.0.33) (2015-08-14)


### Bug Fixes

* **grunt:** ignore todos when updating AMSF ([749b0b3](https://github.com/sparanoid/almace-scaffolding/commit/749b0b3))

### Features

* **docs:** add info for core file updating ([db3d7a8](https://github.com/sparanoid/almace-scaffolding/commit/db3d7a8))
* **grunt:** add basic AMSF self update support ([64c8fa8](https://github.com/sparanoid/almace-scaffolding/commit/64c8fa8))
* **grunt:** check if AMSF already cloned in cache ([b00158e](https://github.com/sparanoid/almace-scaffolding/commit/b00158e))
* **robots.txt:** remove useless define ([db01c80](https://github.com/sparanoid/almace-scaffolding/commit/db01c80))


### BREAKING CHANGES

* You can try `grunt amsf-update` to update AMSF automatically


<a name="0.0.32"></a>
## [0.0.32](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.31...v0.0.32) (2015-08-14)


### Bug Fixes

* **style:** missing footnotes styles for kramdown ([cbd8d03](https://github.com/sparanoid/almace-scaffolding/commit/cbd8d03))

### Features

* **grunt:** add `theme-add` and `theme-update` support ([612ce72](https://github.com/sparanoid/almace-scaffolding/commit/612ce72))
* **template:** add theme templates support ([50353d7](https://github.com/sparanoid/almace-scaffolding/commit/50353d7))
* **theme:** better content margin ([6f75ecd](https://github.com/sparanoid/almace-scaffolding/commit/6f75ecd))


### BREAKING CHANGES

* Now you can include example page templates for your theme, simply put all example templates into `theme/pages/` and then you've done. All example templates will be available to end-users when they run AMSF in development mode.


<a name="0.0.31"></a>
## [0.0.31](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.30...v0.0.31) (2015-08-13)


### Bug Fixes

* **style:** add missing code block background for Rouge parser ([c38e1bf](https://github.com/sparanoid/almace-scaffolding/commit/c38e1bf))
* **template:** heading padding fix ([470b508](https://github.com/sparanoid/almace-scaffolding/commit/470b508))
* **template:** image titles not recognized in Safari Reader mode ([9de3d64](https://github.com/sparanoid/almace-scaffolding/commit/9de3d64))

### Features

* **docs:** update content and try new structure ([8d4f0f4](https://github.com/sparanoid/almace-scaffolding/commit/8d4f0f4))
* **grunt:** remove availability task from sparanoid.com ([727c601](https://github.com/sparanoid/almace-scaffolding/commit/727c601))
* **grunt:** use `grunt-assets-inline` as a replacement of `grunt-html-smoosher` ([841a59a](https://github.com/sparanoid/almace-scaffolding/commit/841a59a))
* **template:** update homepage ([76775ef](https://github.com/sparanoid/almace-scaffolding/commit/76775ef))
* **theme:** add theme basic info ([21fc0c3](https://github.com/sparanoid/almace-scaffolding/commit/21fc0c3))
* **theme:** new syntax for inline assets ([70421fe](https://github.com/sparanoid/almace-scaffolding/commit/70421fe))
* **theme:** use dedicated svg directory outside the jekyll `_includes` ([4962189](https://github.com/sparanoid/almace-scaffolding/commit/4962189))


### BREAKING CHANGES

* This will change the way SVG titles got embeded, now SVG titles are inlined into `<img>` tags instead of putting `<svg>` directly into HTML.


<a name="0.0.30"></a>
## [0.0.30](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.29...v0.0.30) (2015-08-11)


### Bug Fixes

* **grunt:** avoid executing other replace task ([22d130c](https://github.com/sparanoid/almace-scaffolding/commit/22d130c))
* **grunt:** index version not bumped ([c9e9f8a](https://github.com/sparanoid/almace-scaffolding/commit/c9e9f8a))

### Features

* **grunt:** try version auto bump for index ([3445afb](https://github.com/sparanoid/almace-scaffolding/commit/3445afb))



<a name="0.0.29"></a>
## [0.0.29](https://github.com/sparanoid/almace-scaffolding/compare/v0.0.27...v0.0.29) (2015-08-11)


### Features

* **grunt:** update `conventionalChangelog` ([39e8458](https://github.com/sparanoid/almace-scaffolding/commit/39e8458))



<a name"0.0.28"></a>
### 0.0.28 (aka. 24.1.14) (2015-08-02)

This is a special tag release merged from sparanoid.com with the same commit history.

<a name"24.1.14"></a>
### 24.1.14 (2015-08-02)

Note: the following changelog are inherited from [sparanoid/sparanoid.com](https://github.com/sparanoid/sparanoid.com).

#### Bug Fixes

* use more common fonts path ([c989bc49](https://github.com/sparanoid/sparanoid.com/commit/c989bc49))
* **grunt:**
  * missing base URL, new `grunt-html-smoosher` config ([bb02d899](https://github.com/sparanoid/sparanoid.com/commit/bb02d899))
  * fix previous commit ([430f0a58](https://github.com/sparanoid/sparanoid.com/commit/430f0a58))
  * css not minified if `config.cfg.base` defined ([6515c46d](https://github.com/sparanoid/sparanoid.com/commit/6515c46d))


#### Features

* **grunt:**
  * use `grunt-bump` instead of `grunt-release` ([87597f8e](https://github.com/sparanoid/sparanoid.com/commit/87597f8e))
  * simplify grunt buid task ([85a9d0ac](https://github.com/sparanoid/sparanoid.com/commit/85a9d0ac))
  * remove banner timestamp ([bc20e74e](https://github.com/sparanoid/sparanoid.com/commit/bc20e74e))
* **template:** add main content class support ([05335815](https://github.com/sparanoid/sparanoid.com/commit/05335815))


<a name"24.1.13"></a>
### 24.1.13 (2015-07-20)


#### Bug Fixes

* **grunt:** wrong scripts and styles URL when `site.base` is defined ([bb1e5fde](https://github.com/sparanoid/sparanoid.com/commit/bb1e5fde))
* **post:** dead external link ([a80744bc](https://github.com/sparanoid/sparanoid.com/commit/a80744bc))


#### Features

* **grunt:**
  * tasks minor tweak ([e070f369](https://github.com/sparanoid/sparanoid.com/commit/e070f369))
  * simplify banner ([7b5b9b38](https://github.com/sparanoid/sparanoid.com/commit/7b5b9b38))
* **post:**
  * proofreading for post “Amazon S3 × CloudFront” ([5afd26dd](https://github.com/sparanoid/sparanoid.com/commit/5afd26dd))
  * new post “Markdown Features Test” ([4a393f70](https://github.com/sparanoid/sparanoid.com/commit/4a393f70))
  * new post “Markdown Features Test” ([6759ddd3](https://github.com/sparanoid/sparanoid.com/commit/6759ddd3))
* **style:** monospace fonts look bigger than normal fonts, so make it smaller ([5ef4fb87](https://github.com/sparanoid/sparanoid.com/commit/5ef4fb87))
* **template:**
  * use custom `grunt-html-smoosher` ([94a87c95](https://github.com/sparanoid/sparanoid.com/commit/94a87c95))
  * strip unwanted whitespaces ([0ce08c0a](https://github.com/sparanoid/sparanoid.com/commit/0ce08c0a))


#### Breaking Changes

* Now `grunt-html-smoosher` only inline files with specific data attribute.

 ([94a87c95](https://github.com/sparanoid/sparanoid.com/commit/94a87c95))


<a name"24.1.12"></a>
### 24.1.12 (2015-04-30)


#### Bug Fixes

* **grunt:** `copy:serve` not copying scripts in subdirectories ([ccba58e9](https://github.com/sparanoid/sparanoid.com/commit/ccba58e9))
* **style:** better code appearance ([c6e0f5c2](https://github.com/sparanoid/sparanoid.com/commit/c6e0f5c2))
* **travis:** build error ([b1a9a0af](https://github.com/sparanoid/sparanoid.com/commit/b1a9a0af))


#### Features

* **post:** new article “Amazon S3 × CloudFront” ([347624c9](https://github.com/sparanoid/sparanoid.com/commit/347624c9))
* **style:**
  * disable WebKit hyphens, it sucks ([f119ccc1](https://github.com/sparanoid/sparanoid.com/commit/f119ccc1))
  * refine font size ([7b345668](https://github.com/sparanoid/sparanoid.com/commit/7b345668))
* **template:**
  * update remote server deployment ([6b31c70b](https://github.com/sparanoid/sparanoid.com/commit/6b31c70b))
  * add canonical link support ([84ab1e8d](https://github.com/sparanoid/sparanoid.com/commit/84ab1e8d))
  * better template structures ([c3191b36](https://github.com/sparanoid/sparanoid.com/commit/c3191b36))
  * `twitter-cards` is now `open-graph` ([e3edcff5](https://github.com/sparanoid/sparanoid.com/commit/e3edcff5))


#### Breaking Changes

* This release changes the way you push compiled files to remote servers. Now I changed my server from Linode VPS to Amazon S3 and CloudFront, I also changed my feed URL from /feed/ to /feed.xml since Amazon S3 doesn't support multiple Document Index. You can read more information from my [blog post](https://sparanoid.com/note/amazon-s3-cloudfront/).

 ([6b31c70b](https://github.com/sparanoid/sparanoid.com/commit/6b31c70b))
* Major template update, you should update all your template files if you need further updates.

 ([c3191b36](https://github.com/sparanoid/sparanoid.com/commit/c3191b36))


<a name"24.1.11"></a>
### 24.1.11 (2015-04-21)


#### Bug Fixes

* **style:** remove unwanted margin for last-child ([68d288c0](https://github.com/sparanoid/sparanoid.com/commit/68d288c0))


#### Features

* **post:** new post “iTunes Artwork Grabber” ([6e562a32](https://github.com/sparanoid/sparanoid.com/commit/6e562a32))
* **template:** add custom head and foot hooks ([1ee7d566](https://github.com/sparanoid/sparanoid.com/commit/1ee7d566))
* **work:** update categories ([445de41c](https://github.com/sparanoid/sparanoid.com/commit/445de41c))


#### Breaking Changes

* Now you can insert custom code snippets into `<head>` and `<footer>` per post. Just simply use the following syntax in post front-matter:

```
head: |
  <link rel="chrome-webstore-item" href="https://chrome.google.com/webstore/detail/pjdeblccplohlgedbefopohaedodcgci">
```

or:

```
foot: |
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Base64/0.3.0/base64.min.js"></script>
```

 ([1ee7d566](https://github.com/sparanoid/sparanoid.com/commit/1ee7d566))


<a name"24.1.10"></a>
### 24.1.10 (2015-04-20)


#### Bug Fixes

* **grunt:** not detecting newly added files ([f386d870](https://github.com/sparanoid/sparanoid.com/commit/f386d870))
* **package:** missing `grunt-html-smoosher` ([c54b001a](https://github.com/sparanoid/sparanoid.com/commit/c54b001a))
* **template:** better Twitter Cards author support ([56f089c3](https://github.com/sparanoid/sparanoid.com/commit/56f089c3))


#### Features

* **build:**
  * try `grunt-release` task ([7ddb2f2d](https://github.com/sparanoid/sparanoid.com/commit/7ddb2f2d))
  * update Travis ([95910f0e](https://github.com/sparanoid/sparanoid.com/commit/95910f0e))
* **grunt:** speed up serve task by passing JS files directly from `copy` ([0165c8db](https://github.com/sparanoid/sparanoid.com/commit/0165c8db))
* **style:** custom inlined-style list ([aae14607](https://github.com/sparanoid/sparanoid.com/commit/aae14607))


<a name="24.1.9"></a>
### 24.1.9 (2015-03-06)


#### Bug Fixes

* **grunt:** cached Jekyll metadata not purged ([44965f9a](https://github.com/sparanoid/sparanoid.com/commit/44965f9ad20ccda44e3c2f6f968537a311dcaf17))


<a name="24.1.8"></a>
### 24.1.8 (2015-03-06)


#### Bug Fixes

* **style:**
  * wrong .external media query directive ([cf9d5fa1](https://github.com/sparanoid/sparanoid.com/commit/cf9d5fa15d0c139721bdc722d641d2c2e65d553e))
  * wrong GitHub Gist font size ([0544eafc](https://github.com/sparanoid/sparanoid.com/commit/0544eafca92360464589036c8fb60e2cd85f6816))


#### Features

* **config:** update assets URL, CloudFront should be better ([acb54e77](https://github.com/sparanoid/sparanoid.com/commit/acb54e773904507f328dc8a0b406d0d1917efe59))
* **jekyll:** use latest 3.0.0.beta2 ([603069ea](https://github.com/sparanoid/sparanoid.com/commit/603069ea9b6709f5801bd40da713bad55ecc86ce))
* **post:**
  * add new screenshots for “Delicious” ([791566c8](https://github.com/sparanoid/sparanoid.com/commit/791566c805ab7b7fbcfb7d1a77e398cf0c371aa1))
  * new post “Shutdown Like a Boss” ([df164f6c](https://github.com/sparanoid/sparanoid.com/commit/df164f6cb19c46c1527467fde6bd56e31bfe5b02))
  * use markdown for pages ([59bfcb89](https://github.com/sparanoid/sparanoid.com/commit/59bfcb891815cb0179bd4e95aed633617d0cb28a))
* **style:** update media queries position ([826c4966](https://github.com/sparanoid/sparanoid.com/commit/826c4966dbdc6c1e4b2ba015ce0b752b15d8d248))
* **template:** update post date format ([46cf345f](https://github.com/sparanoid/sparanoid.com/commit/46cf345fc779753d89fd55ee097f9e6f92d0cf17))


<a name="24.1.7"></a>
### 24.1.7 (2014-12-14)


#### Bug Fixes

* watch files in subdirectories for grunt tasks ([2234f54b](https://github.com/sparanoid/sparanoid.com/commit/2234f54b0242637eacfb6ce5e9658a382e3b6d44))
* **post:** typo in “Chinese Copywriting Guidelines” ([4f24b6ba](https://github.com/sparanoid/sparanoid.com/commit/4f24b6ba35aeea1eb9c9203ad08d0a7d5b80b25e))
* **style:** update cite position for sparanoid.com ([26ef8c08](https://github.com/sparanoid/sparanoid.com/commit/26ef8c084d0b11f5d558ac14111ad985a2885b1e))
* **test:** lesslint error ([fb341f60](https://github.com/sparanoid/sparanoid.com/commit/fb341f609fef4f332336cf191a15a4ce01af7a87))


#### Features

* reset `site.base` for local development ([cd46627b](https://github.com/sparanoid/sparanoid.com/commit/cd46627bae8d6f69b84cabb152bf559de6cf6e6e))
* **feed:** use `<small>` for external link ([69c0abc9](https://github.com/sparanoid/sparanoid.com/commit/69c0abc9ecd5f34208d3458ad99e1b8ec12840b8))
* **grunt:**
  * add multiple Less output support ([568041ec](https://github.com/sparanoid/sparanoid.com/commit/568041ec95070c2e17b198661a0e2e685c96daf4))
  * new grunt option `--fast`, build site without minification ([073fed50](https://github.com/sparanoid/sparanoid.com/commit/073fed50ccf531b6af7669bcf038229c8849ba1b))
* **post:** update post “Chinese Copywriting Guidelines” ([3b021f32](https://github.com/sparanoid/sparanoid.com/commit/3b021f3233518038d0d20808a239989b06a3510d))
* **template:**
  * modern page titles ([a1dedc01](https://github.com/sparanoid/sparanoid.com/commit/a1dedc01e5030302c31cf4e0a2c0f2819e6bdfb8))
  * update email subscription template ([af2795d7](https://github.com/sparanoid/sparanoid.com/commit/af2795d736278cec89e6ace87e69ef2fa068fd01))
  * move pages into `_pages` ([6d705c27](https://github.com/sparanoid/sparanoid.com/commit/6d705c274377c4b2f31f4438a74caf6a00f9f083))


#### Breaking Changes

* All pages are moved into `_pages` for better file structure management
 ([6d705c27](https://github.com/sparanoid/sparanoid.com/commit/6d705c274377c4b2f31f4438a74caf6a00f9f083))


<a name="24.1.6"></a>
### 24.1.6 (2014-12-01)


#### Bug Fixes

* sync init config file ([b22cfaf3](https://github.com/sparanoid/sparanoid.com/commit/b22cfaf3c53be25d95f342a8f52ac2b9107b5bfc))
* remove unnecessary task ([0fd0dc23](https://github.com/sparanoid/sparanoid.com/commit/0fd0dc235c4247976845a02fe8b2064a3a06b4aa))
* **grunt:** now also watches Jekyll configuration files ([cf63e34e](https://github.com/sparanoid/sparanoid.com/commit/cf63e34ef44cb65af3413b36155ec9367cf18818))
* **sitemap:** duplicated URL definitions ([5ee82675](https://github.com/sparanoid/sparanoid.com/commit/5ee82675f2d05bfc5e48e047d584da611f13b1ca))
* **style:**
  * `pre` and `code` not aligned properly ([dffc75b0](https://github.com/sparanoid/sparanoid.com/commit/dffc75b07501c54f2c4f5a79183e78a7196753f4))
  * table align overrides by default user agent styles ([45ded474](https://github.com/sparanoid/sparanoid.com/commit/45ded474f4db91ffe32c4b7d0341cb8cfc4f4e8f))
  * `.largetype` not centered ([c4be3b14](https://github.com/sparanoid/sparanoid.com/commit/c4be3b14df34583bef030258c38e34626baa6279))
* **template:** excerpts should be markdownified for predefined `excerpt` YAML front matter ([654ed8d5](https://github.com/sparanoid/sparanoid.com/commit/654ed8d5fc6fd49c9b87bf87d14dfc29450e3cb6))


#### Features

* bump Jekyll version to 2.5.2, better performance ([a0294f88](https://github.com/sparanoid/sparanoid.com/commit/a0294f883f17fb30fcaca02d26db718564263251))
* update `apple-touch-icon.png` for @3x size ([38bf31ac](https://github.com/sparanoid/sparanoid.com/commit/38bf31ac6932320adf74decdb965ce7cfc1a41d0))
* **donate:** update copywriting ([a5f9387b](https://github.com/sparanoid/sparanoid.com/commit/a5f9387bd57b7004d06d5885ed74b747480c710c))
* **grunt:** add `grunt-lesslint` support ([0b928803](https://github.com/sparanoid/sparanoid.com/commit/0b928803f70a301c3766e8f6029261c5d0d23099))
* **style:**
  * placeholder text color ([3f6fbf63](https://github.com/sparanoid/sparanoid.com/commit/3f6fbf63141a1b076353a785ed1662391b3d129c))
  * update `text-align` method ([2665a791](https://github.com/sparanoid/sparanoid.com/commit/2665a791d7e24a62daa6b75b4e5e350776b447d9))
  * simplified align center method ([aa0a5fbf](https://github.com/sparanoid/sparanoid.com/commit/aa0a5fbf9e977c647aff83202280b1046009ca46))
* **template:**
  * add feed excerpt output ([8fd053c5](https://github.com/sparanoid/sparanoid.com/commit/8fd053c5b7d4aaff66c4c52566cf06d51739e84b))
  * remove Google+ authority support, I don't like it. ([0dd4efae](https://github.com/sparanoid/sparanoid.com/commit/0dd4efaec8a4622bdcde0b4a063361519e1c9043))
  * add multiple authors support ([57337fa1](https://github.com/sparanoid/sparanoid.com/commit/57337fa15fa078437bff41536950b811da79cf82))
  * new email newsletter signup page ([a0652321](https://github.com/sparanoid/sparanoid.com/commit/a0652321e3a30dac96c418b8aae6b1cd9278cf63))
  * more centered text for pages ([2e476d91](https://github.com/sparanoid/sparanoid.com/commit/2e476d91166e961044aa21bf7475948344dfb057))


#### Breaking Changes

* Now I can use multiple users for posts, use the following variable in Front Matter:

`author: tunghsiao`

Author information can be added in `./_app/_data/authors.yml`
 ([57337fa1](https://github.com/sparanoid/sparanoid.com/commit/57337fa15fa078437bff41536950b811da79cf82))


<a name="24.1.5"></a>
### 24.1.5 (2014-11-18)


#### Bug Fixes

* **style:** images in posts are not center aligned ([a3cf785b](https://github.com/sparanoid/sparanoid.com/commit/a3cf785b97857ff189278e386fd3819aec4ced0f))


#### Features

* update `abbr` appearance, remove title hack ([a76fe931](https://github.com/sparanoid/sparanoid.com/commit/a76fe931a9056cb11a16b6fc0f8c9da90eeebda1))
* **grunt:**
  * rename all `server` task names to `serve` ([2697fa90](https://github.com/sparanoid/sparanoid.com/commit/2697fa90e71a4ced38d002dd88e78992b65ba8d6))
  * add live reload support (Browsersync) ([9f78f654](https://github.com/sparanoid/sparanoid.com/commit/9f78f654ffd943b1bb3dd669797c2ebaa969e803))
* **print:** introduce print styles ([39fbb109](https://github.com/sparanoid/sparanoid.com/commit/39fbb10968ade3ddb79fb4d1a20508e583972182))
* **style:** split style fixes for plug-ins into a isolated stylesheet ([8e587481](https://github.com/sparanoid/sparanoid.com/commit/8e5874815d9e2b1067e4a865d4aaf072a218054e))
* **template:** use `<h1>` for post list ([530f63c2](https://github.com/sparanoid/sparanoid.com/commit/530f63c28093ebfc72fc5f99fbcf6440c9e70335))


#### Breaking Changes

* Now this project supports Browsersync for page live reloading, script snippet is inserted after `<!-- BS_INSERT -->` in `top.html`
 ([9f78f654](https://github.com/sparanoid/sparanoid.com/commit/9f78f654ffd943b1bb3dd669797c2ebaa969e803))


<a name="24.1.4"></a>
### 24.1.4 (2014-11-03)


#### Bug Fixes

* **config:** add missing `force_utf_8` option ([2ef2dc44](https://github.com/sparanoid/sparanoid.com/commit/2ef2dc44a4e4a38572e40a708312886aa3d904b0))
* **style:** re-apply navigation margin fix for align left layout ([77b5fc19](https://github.com/sparanoid/sparanoid.com/commit/77b5fc197e65f80c0864b8e9d921bcd8ba2d3f46))
* **template:** add missing `site.colorful_list ` scope ([8575c197](https://github.com/sparanoid/sparanoid.com/commit/8575c19739b83af154b99fee029c026a9cf359e8))


<a name="24.1.3"></a>
### 24.1.3 (2014-11-03)


#### Bug Fixes

* collar container width ([89e4eac6](https://github.com/sparanoid/sparanoid.com/commit/89e4eac6780decebe9fb2f0c52e06fce92f58387))
* **post:** remove intense support for "Moonstruck Princess Extended" ([b263b5c9](https://github.com/sparanoid/sparanoid.com/commit/b263b5c97182ce33e683302cbeca82ea5e537619))
* **style:** reset header text align for justified text ([70d49911](https://github.com/sparanoid/sparanoid.com/commit/70d49911ea90d31bb578e7e13c1d11f084621f6e))
* **template:** remove deprecated minimal-ui ([db466892](https://github.com/sparanoid/sparanoid.com/commit/db466892ac59908c6853afe0b5400c3a65c3bfdb))


#### Features

* add `force_utf_8` option ([0fb4c702](https://github.com/sparanoid/sparanoid.com/commit/0fb4c702aeaa5dd5306f0b19f40aaacb3f2f5b5f))
* update logo ([8666ee91](https://github.com/sparanoid/sparanoid.com/commit/8666ee917456620ec863c989b15496e47530ae43))
* **post:**
  * update post heading ([9be83090](https://github.com/sparanoid/sparanoid.com/commit/9be83090995ad8986a8a723033f062035af346cc))
  * new post “Chinese Copywriting Guidelines” ([67e3ea35](https://github.com/sparanoid/sparanoid.com/commit/67e3ea3571926cbc02e3fbe1443f41771ed79a73))
  * update external link for “Free” Dribbble Invite ([f5763fe8](https://github.com/sparanoid/sparanoid.com/commit/f5763fe837bcacfe404da626344c134e2c003dab))
  * update post excerpts ([f57c1f46](https://github.com/sparanoid/sparanoid.com/commit/f57c1f460ee809e4bb498d3b7dd505a602a4ff5b))
  * add new post “Space Lover” and “Disable WYSIWYG” ([f9b5f4ad](https://github.com/sparanoid/sparanoid.com/commit/f9b5f4ad945ee42da13cb983c2e1a1dab00b32fe))
* **style:**
  * tweak font size for small devices ([66394316](https://github.com/sparanoid/sparanoid.com/commit/663943163a3a523952b0e0e1084938c2d8255dbc))
  * update header font size for small devices ([52e3ebd7](https://github.com/sparanoid/sparanoid.com/commit/52e3ebd72c4210da504629824b331c9d808d8c78))
  * add a fun transition ([6692e032](https://github.com/sparanoid/sparanoid.com/commit/6692e032de7e599fd088411e0528e4d6fe4dec1e))
  * remove custom CSS background check ([fbfff18c](https://github.com/sparanoid/sparanoid.com/commit/fbfff18c3b537972d7cba35397a239ea2d9227d8))
  * add `colorful_list` option that styles post link color (if defined) for article list ([f2412163](https://github.com/sparanoid/sparanoid.com/commit/f24121635fd1d6b4e3cdb5576794a0323cb388c1))
* **template:**
  * reuse `h1` to post heading ([a85184a9](https://github.com/sparanoid/sparanoid.com/commit/a85184a9ce785fc679e6ce95f7f17323109ed6f5))
  * add alternative text align mode ([008215fc](https://github.com/sparanoid/sparanoid.com/commit/008215fcbe8f47c8079dab42664771f777f42c4b))
  * add `post-content` and `page-content` for convenient ([38be1975](https://github.com/sparanoid/sparanoid.com/commit/38be1975044dd9367fad8abb4dfb2dcfa7e862ff))
  * update list template ([800c5ee3](https://github.com/sparanoid/sparanoid.com/commit/800c5ee3c577011a8a6ce21328b3b0afac155369))


#### Breaking Changes

* Now `<h1>` become the primary post / page title instead of `<h2>`, you should update your post to use the new structure
 ([a85184a9](https://github.com/sparanoid/sparanoid.com/commit/a85184a9ce785fc679e6ce95f7f17323109ed6f5))
* Force UTF-8 encoding, enable this will simply add <meta charset="utf-8"> to the head of your pages, it's useful for local development since local server doesn't send charset in their respond header.
 ([0fb4c702](https://github.com/sparanoid/sparanoid.com/commit/0fb4c702aeaa5dd5306f0b19f40aaacb3f2f5b5f))


<a name="24.1.2"></a>
### 24.1.2 (2014-08-21)


#### Bug Fixes

* **post:** update times symbol for post "Antiskill, Judgment Icon Set and Screensaver" ([8f053ae5](https://github.com/sparanoid/sparanoid.com/commit/8f053ae5b18636cdd98959818d345eaeaa97b3fc))
* **style:** correct sub list margin ([e01d8830](https://github.com/sparanoid/sparanoid.com/commit/e01d8830ac1e7d95a99af2fe674cffe213e928d4))
* **template:**
  * correct style and script paths for subdirectory setup ([20f9a50f](https://github.com/sparanoid/sparanoid.com/commit/20f9a50fbcbc8cf2aafa705d38dbbda59851b5c8))
  * avoid “layout not found” error introduced since Jekyll 2.2.0 ([b4f86289](https://github.com/sparanoid/sparanoid.com/commit/b4f86289a084343a28d1dff5f4f6d2a56ad35d94))
  * use Katakana middle dots ([cc0f0720](https://github.com/sparanoid/sparanoid.com/commit/cc0f0720ae99f05311ecc087afa7a0493c33241e))
  * use original post subheading ([e528b137](https://github.com/sparanoid/sparanoid.com/commit/e528b137a000da1c844045236af2da366b41549a))


#### Features

* **style:**
  * move `syntax.less` to `custom.less` ([b6fdb462](https://github.com/sparanoid/sparanoid.com/commit/b6fdb462c95b269cab2e50726dab5534f04e47e0))
  * add some space for tables ([35cd7830](https://github.com/sparanoid/sparanoid.com/commit/35cd78309ed85af069ab6392c686fa9e2be2f49c))
* **template:**
  * add custom CSS support for pages ([742cbfcd](https://github.com/sparanoid/sparanoid.com/commit/742cbfcde3a37206a4a9a0d7c7fd94179979458f))
  * add `lang` YAML front-matter data ([a3d25f97](https://github.com/sparanoid/sparanoid.com/commit/a3d25f978638d42cbd1e8ce5ee55895c66bc92cc))
  * add `lang` YAML front-matter data ([911353f1](https://github.com/sparanoid/sparanoid.com/commit/911353f1b5dabed81d13eb247262673abe382e14))
  * hide post from Atom feed ([32f36de7](https://github.com/sparanoid/sparanoid.com/commit/32f36de79c44a6fc181b328a7489ed35a3bce2ff))


#### Breaking Changes

* Now you can define `lang` tag for your post, simply add `lang` to your post front-matter data. ([a3d25f97](https://github.com/sparanoid/sparanoid.com/commit/a3d25f978638d42cbd1e8ce5ee55895c66bc92cc)):

for example:

```
lang: ar
```

then define your own styles in `custom.less`:

```css
[lang=ar] {
  direction: rtl;
}
```

* Add `hidden: true` as YAML front-matter data to the post you want to hide from your feed output.
 ([32f36de7](https://github.com/sparanoid/sparanoid.com/commit/32f36de79c44a6fc181b328a7489ed35a3bce2ff))


<a name="24.1.1"></a>
### 24.1.1 (2014-07-18)


#### Bug Fixes

* **post:** fix error page links for post “IterCast” ([da1a5fd5](https://github.com/sparanoid/sparanoid.com/commit/da1a5fd5bc85d5e2e8c60375a7564d73693c115c))
* **style:**
  * remove heading hyphens support ([e46edbc3](https://github.com/sparanoid/sparanoid.com/commit/e46edbc368bcc847d29b5d70638b2b1844a4f81f))
  * use `rem` for alternative title font size ([5e77e4e5](https://github.com/sparanoid/sparanoid.com/commit/5e77e4e50cd3bacfc9c8d37dd5d1f9b2a7f1dca8))
  * remove deprecated styles, fix cite footer font color ([61bc2cce](https://github.com/sparanoid/sparanoid.com/commit/61bc2cce2bb76c41d90ef3f15841b1b0ad71008c))
* **template:**
  * apply markdownify for post description ([91e00249](https://github.com/sparanoid/sparanoid.com/commit/91e0024914dd6ffaf553c1d8155e213036536119))
  * correct error page title ([3821c6b2](https://github.com/sparanoid/sparanoid.com/commit/3821c6b2b2796527e698367c4bcb9489aa57ef31))


#### Features

* **script:** add `intense.js` exclude rule ([73a8e250](https://github.com/sparanoid/sparanoid.com/commit/73a8e2501d4fefc6975d3dd3b1d995b4c71d7a0b))
* **style:**
  * dynamic text color for `code` and `pre` ([e153b87a](https://github.com/sparanoid/sparanoid.com/commit/e153b87a87b5e5ede358f928e8f7062d6a8d7f67))
  * update alternative title font size ([416c4161](https://github.com/sparanoid/sparanoid.com/commit/416c4161ee291664e3b3899a0e84798722e5445d))
  * add alternative title font size. By default all heading levels have the same font size, but many people may not like this, so here's an alternative font size stack. ([277ead44](https://github.com/sparanoid/sparanoid.com/commit/277ead44fed62c13f31bdc5b9bfcd76aaf47d8a6))
  * fix GitHub Gist default style, more layout padding and list nesting fixes ([32bb4053](https://github.com/sparanoid/sparanoid.com/commit/32bb4053626ba5be624674ab4be671654d249448))
  * better custom color scheme support, syntax highlighting also support different c ([e17eb740](https://github.com/sparanoid/sparanoid.com/commit/e17eb740516b99abb60c888091e9757eaf9e43fc))
* **template:** remove `amsf` option, add `clean_homepage` and `credits` options ([89016b8d](https://github.com/sparanoid/sparanoid.com/commit/89016b8d0d84c162e2c22fcb4a4af8f0377a0f06))


#### Breaking Changes

* Please note that templates should be updated for new options
 ([89016b8d](https://github.com/sparanoid/sparanoid.com/commit/89016b8d0d84c162e2c22fcb4a4af8f0377a0f06))


<a name="24.1.0"></a>
## 24.1.0 (2014-07-14)


#### Bug Fixes

* **grunt:**
  * remove deprecated Grunt task `archive` ([bb62c8eb](https://github.com/sparanoid/sparanoid.com/commit/bb62c8ebed4e93e565b090c6ff8805b8377dd27c))
  * wrong script compile path ([f1bb55aa](https://github.com/sparanoid/sparanoid.com/commit/f1bb55aa1846aab5574d2c2430ac99aaee194fe4))
* **post:**
  * remove a bunch of gibberish generated by Sketch ([6f8eca38](https://github.com/sparanoid/sparanoid.com/commit/6f8eca3846d97d781488153429bf4869029ed6f1))
  * update IterCast SVG title ([3276d9f6](https://github.com/sparanoid/sparanoid.com/commit/3276d9f625185f94624b5671f3ec46e74718b51e))
* **template:** temporary fix HTML entities for post title ([7be60fc2](https://github.com/sparanoid/sparanoid.com/commit/7be60fc274fd1c301b0d732d9dc0614e9f91f667))


#### Features

* **grunt:** remove `grunt-usemin` support ([326910e8](https://github.com/sparanoid/sparanoid.com/commit/326910e8ab1ab3fa1d16287fe8e62aa8808f3865))
* **style:** update `.browser` style ([127c5b6d](https://github.com/sparanoid/sparanoid.com/commit/127c5b6dc3251a42485b5a6b673cf0787e91b07e))
* **template:**
  * better HTML structure ([fea47fdf](https://github.com/sparanoid/sparanoid.com/commit/fea47fdf729faf8dd43402bea8573ca1514bd6aa))
  * simplified script structure ([05de9818](https://github.com/sparanoid/sparanoid.com/commit/05de98185643647dadf1adb213899c1e9bf06ad2))
  * add intense.js support ([58e2c4d8](https://github.com/sparanoid/sparanoid.com/commit/58e2c4d81e232fe1e63db4f9d8aa40dd0599e4b5))
  * better intense.js cursor handling ([9f5b45ac](https://github.com/sparanoid/sparanoid.com/commit/9f5b45ac9880c4fe693bf437f9963ab53322255e))


#### Breaking Changes

* Now I can generate production site in a sub-directory in an easier way, just define `base` in `_config.yml` and run `grunt` everything should work
 ([bb62c8eb](https://github.com/sparanoid/sparanoid.com/commit/bb62c8ebed4e93e565b090c6ff8805b8377dd27c))
* It's expected to use something like `escape_once` from Liquid, but it's buggy right now: https://github.com/Shopify/liquid/issues/283
 ([7be60fc2](https://github.com/sparanoid/sparanoid.com/commit/7be60fc274fd1c301b0d732d9dc0614e9f91f667))


<a name="24.0.9"></a>
### 24.0.9 (2014-06-09)


#### Bug Fixes

* **template:**
  * update footer credit ([2f3aec23](https://github.com/sparanoid/sparanoid.com/commit/2f3aec23fa75072649cece89218045570fea305f))
  * fix SVG title for Safari Reader mode ([8b7cc843](https://github.com/sparanoid/sparanoid.com/commit/8b7cc843f419c6935c806ccc462dac8e82c3c4b4))


#### Features

* split configuration files into 3 files for better user experience ([d5db218f](https://github.com/sparanoid/sparanoid.com/commit/d5db218fdb08862c2e736ab5a3a7ba7d4c414184))
* **style:** make highlighter theme works for all color scheme (hint: Less color functions) ([5556eef4](https://github.com/sparanoid/sparanoid.com/commit/5556eef4c0dab2458e7e452dd22f45b660355ede))
* **template:**
  * move all custom variables to default `_config.yml` ([92a69fb0](https://github.com/sparanoid/sparanoid.com/commit/92a69fb0944451cbb098b9ae2c696d7c2e81d808))
  * use assign statement for post link ([2b79f39b](https://github.com/sparanoid/sparanoid.com/commit/2b79f39babd38a46b594f342c5bd604b54a92347))


#### Breaking Changes

* Now all custom variables go to `_config.yml`, original `var.yml` will no longer available. all related template tags have been update for new variable structure. ([92a69fb0](https://github.com/sparanoid/sparanoid.com/commit/92a69fb0944451cbb098b9ae2c696d7c2e81d808))


<a name="24.0.8"></a>
### 24.0.8 (2014-06-05)


#### Features

* **post:** update posts for discontinued external links ([744f32f4](https://github.com/sparanoid/sparanoid.com/commit/744f32f46a5052c57bf7bfe272cd238e39fab621))
* **style:** remove obsoleted FlesSlider styles ([fd75b04c](https://github.com/sparanoid/sparanoid.com/commit/fd75b04c0fb6da967da33083aaf0a18045cba0b5))
* **template:** update Atom template ([73c236bf](https://github.com/sparanoid/sparanoid.com/commit/73c236bfabfcdb9f2628ff382ae6b3534c9bedc2))


#### Breaking Changes

* Now you can use `link_blog` and `rss_excerpt` for your Atom feed ([73c236bf](https://github.com/sparanoid/sparanoid.com/commit/73c236bfabfcdb9f2628ff382ae6b3534c9bedc2)):
  - `link_blog`: Enable this settings to make your feed Daring Fireball-like link blog. This basically change your <link> value to external link you defined in your posts.
  - `rss_excerpt`: Use post excerpt instead of full content for RSS feeds, just like WordPress RSS feed output option


<a name="24.0.7"></a>
### 24.0.7 (2014-05-16)


#### Bug Fixes

* **post:** fix post grammar ([d1cdebdd](https://github.com/sparanoid/sparanoid.com/commit/d1cdebdd92a1d38ef81195a21a03346a03b46c1f))
* **style:**
  * fix wrong scoped style use ([79e71de0](https://github.com/sparanoid/sparanoid.com/commit/79e71de08a1be4f7a404c94d8d77889af111497f))
  * avoid line-height override for `jksf` ([d24663fd](https://github.com/sparanoid/sparanoid.com/commit/d24663fddbc4fdac012edd32aab86ad549632d5b))


#### Features

* update apple-touch-icon ([050508b5](https://github.com/sparanoid/sparanoid.com/commit/050508b5aed7553511330650e7d0da629e91607b))
* **grunt:**
  * update `html-minifier`, make all whitespace collapsed to one character. ([93bfb422](https://github.com/sparanoid/sparanoid.com/commit/93bfb4222eeb5e1e5e19b3df2164525b617eee81))
  * better grunt tasks excluding files those need post-process ([bce8cf73](https://github.com/sparanoid/sparanoid.com/commit/bce8cf732f5f691516e04fcc00ab98b904245fac))
* **post:** new post “AVOS Cloud” ([f6ed5f63](https://github.com/sparanoid/sparanoid.com/commit/f6ed5f634fda7209fedee6a4b8a6a3f692b682bf))
* **style:**
  * update status text color ([5a388e1b](https://github.com/sparanoid/sparanoid.com/commit/5a388e1b47123c67994cfcd2cebd9f5c5ed86b10))
  * more viewport unit ([364c5ad1](https://github.com/sparanoid/sparanoid.com/commit/364c5ad1653d01f6e6758205b8ecbe95eed19ee1))
* **template:**
  * make normal image headers responsive ([c5d3a185](https://github.com/sparanoid/sparanoid.com/commit/c5d3a18599fea23650496f1667ff49f6cbbab730))
  * update template variables ([874ccb06](https://github.com/sparanoid/sparanoid.com/commit/874ccb063f99d2625c3fbf0d8b70b833cc73b1e6))
  * remove Alipay donate link ([f42ed071](https://github.com/sparanoid/sparanoid.com/commit/f42ed0716dca40e47a0b2a64d94e99842f5b29dc))
  * better variables structure ([af58b736](https://github.com/sparanoid/sparanoid.com/commit/af58b736e9dab2122519733e0020186819cc747a))
  * remove all FlexSlider instances ([4124d6ad](https://github.com/sparanoid/sparanoid.com/commit/4124d6ada257a79114f22d88e92a62829cecccb1))


#### Breaking Changes

* Now you can have custom CSS styles per post. Simply create a `css` front-matter data like this:

```
css: |
  article header h1 img {
    image-rendering: pixelated;
  }
```
 ([c5d3a185](https://github.com/sparanoid/sparanoid.com/commit/c5d3a18599fea23650496f1667ff49f6cbbab730))


<a name="24.0.6"></a>
### 24.0.6 (2014-04-27)


#### Bug Fixes

* include the missing gem lock file ([2a546df9](https://github.com/sparanoid/sparanoid.com/commit/2a546df94bdeea1ead054ef653627fb9b92a4e2e))
* **style:**
  * avoid smoosh container edge ([75f66dfc](https://github.com/sparanoid/sparanoid.com/commit/75f66dfcfc60ef3e17f26c652a5e9e32006b835f))
  * remove padding reset for last child elements ([62caf45f](https://github.com/sparanoid/sparanoid.com/commit/62caf45fc00132192694a9994a36ba168bf2cf1c))


#### Features

* better external link post indicator ([6393ea07](https://github.com/sparanoid/sparanoid.com/commit/6393ea07d74672599b9cf7dd17ec5a3becb65174))
* **style:** SVG headlines got viewport units support ([f818a7b1](https://github.com/sparanoid/sparanoid.com/commit/f818a7b1d626a4581c4a1d81df06d17d7c9b4dd1))
* **template:**
  * better inline SVG post title support ([6c33d1d6](https://github.com/sparanoid/sparanoid.com/commit/6c33d1d678d9a5228f160bae82be8748c966501a))
  * inline SVG headline support ([89d3dac3](https://github.com/sparanoid/sparanoid.com/commit/89d3dac3413e11e5139cf8c96e2adc490d27ad9a))
  * better Twitter Cards support ([39d5c5e9](https://github.com/sparanoid/sparanoid.com/commit/39d5c5e9670c9bedb32bff8f4c807eb156cc1f8f))


#### Breaking Changes

* Now I dynamically include headline SVG based on post front-matter data `svg-headline`:

```
---
title: Hello World!
category: work
svg-headline: svg/post-title.svg
svg-headline-width: 400
svg-headline-height: 145
---
```

Note:

- The method to include SVG files has been changed since ([89d3dac341](https://github.com/sparanoid/sparanoid.com/commit/89d3dac3413e11e5139cf8c96e2adc490d27ad9a)), instead of embedding SVG into post files, now it include SVGs from external files using Liquid template tags `include`
- I use `for` loop here to include SVG file, it doesn't mean you can define multiple SVG headers here, it's just a workaround since include files in a sub-directory with variable [seems buggy](https://github.com/jekyll/jekyll/pull/1495)
- In most cases, you have to define `svg-headline-width` and `svg-headline-height` in order to make your SVG title responsive to your viewport.
 ([6c33d1d6](https://github.com/sparanoid/sparanoid.com/commit/6c33d1d678d9a5228f160bae82be8748c966501a))


<a name="24.0.5"></a>
### 24.0.5 (2014-04-01)


#### Bug Fixes

* **post:** remove unwanted HTML comments for posts ([f5ffc0ee](https://github.com/sparanoid/sparanoid.com/commit/f5ffc0ee55a32cbcbd8710d36d65006a44ec95e2))
* **style:** more aggressive “last-child” reset ([7b55093d](https://github.com/sparanoid/sparanoid.com/commit/7b55093d13e357a72d370b00db529424fba4fc27))


#### Features

* **style:**
  * remove unused `.btn` class ([600121ff](https://github.com/sparanoid/sparanoid.com/commit/600121ff0b16426c1898dbaf526b88c91c88e6fe))
  * simplified transition ([3e8baa82](https://github.com/sparanoid/sparanoid.com/commit/3e8baa82165dae2542ee30fd2b49bfbda8ba1a6f))
* **template:** add Redcarpet footnote support ([2c9d67f4](https://github.com/sparanoid/sparanoid.com/commit/2c9d67f439dbd17c2514475679d40ad515aaa895))


#### Breaking Changes

* New Redcarpet footnote will break existing footnote markup. Update your posts to avoid unwanted breaks.

You can read more about the footnote syntax at https://github.com/vmg/redcarpet
 ([2c9d67f4](https://github.com/sparanoid/sparanoid.com/commit/2c9d67f439dbd17c2514475679d40ad515aaa895))


<a name="24.0.4"></a>
### 24.0.4 (2014-04-01)


#### Bug Fixes

* **style:**
  * fix code block overflow scroll issue ([33be40d1](https://github.com/sparanoid/sparanoid.com/commit/33be40d1196fa42331bbba91cd32725a098695b8))
  * fix mismatched color variables ([865c13d6](https://github.com/sparanoid/sparanoid.com/commit/865c13d6c73f89a8ecabf50666c8391c42241aef))
  * clear float for `blockquote` footer ([1da7cf28](https://github.com/sparanoid/sparanoid.com/commit/1da7cf286d140a7e9076a3c6deec207f4f91dcc1))
* **template:** wrong home link hover effect for specified post color scheme ([9bbca0f7](https://github.com/sparanoid/sparanoid.com/commit/9bbca0f7b630bd8ee118f5433319a6256fb61b25))


#### Features

* better Redcarpet configurations, add some useful Redcarpet extensions ([2bd1c2a1](https://github.com/sparanoid/sparanoid.com/commit/2bd1c2a1c603dcbb686d55b6607989187f9326a1))
* use `rsrc.sparanoid.com` for assets URL ([445257d3](https://github.com/sparanoid/sparanoid.com/commit/445257d3a0898f40118e1563612f474fc2d83f35))
* **style:**
  * add a simple table style ([7b01cf56](https://github.com/sparanoid/sparanoid.com/commit/7b01cf56a56d369f00dd0cd03681a795233e6fb9))
  * add syntax highlight support ([006e14f1](https://github.com/sparanoid/sparanoid.com/commit/006e14f1d9ca04260c6d519ef737f203bf1cdd2e))
  * smaller margin space for image post title ([4eac0fda](https://github.com/sparanoid/sparanoid.com/commit/4eac0fdab6adcd68ddaf40451dd22dc034c83c07))
* **template:**
  * remove `.txt` wrapper ([1f400475](https://github.com/sparanoid/sparanoid.com/commit/1f400475e3f3611919299fdcccad73779539fd16))
  * update footer and read me for new jksf (a.k.a. Almace Scaffolding) branding ([13de5820](https://github.com/sparanoid/sparanoid.com/commit/13de58207961f52204545bf9ac91a03bb5f0bdf5))


#### Breaking Changes

* Removal of `.txt` CSS class may break your existing post layout. Now `.txt` is replaced with `main.content`, a global content wrapper. To fix layout breaks for your existing site: simply remove all `<div class="txt">` containers from your posts
 ([1f400475](https://github.com/sparanoid/sparanoid.com/commit/1f400475e3f3611919299fdcccad73779539fd16))


<a name="24.0.3"></a>
### 24.0.3 (2014-03-31)


#### Features

* add a fancy banner at the bottom of every page ([0760b036](https://github.com/sparanoid/sparanoid.com/commit/0760b036cb1d6daf2d900f9f203802cd0840ded8))
* **Gruntfile:**
  * add a fancy `time-grunt` plugin ([ab1c2822](https://github.com/sparanoid/sparanoid.com/commit/ab1c2822ca6022e6dcbacd3337f1b1fb5b49b32b))
  * new HTML smoosher task ([9d4dcb25](https://github.com/sparanoid/sparanoid.com/commit/9d4dcb25ee6c94da76945f151f0bc7385454a701))
* **package:** introduce grunt-conventional-changelog ([c732236b](https://github.com/sparanoid/sparanoid.com/commit/c732236b0d75c40c95a556ff67a504ebbf8435a4))
* **post:**
  * update “Kai Series” color scheme ([3457b2a8](https://github.com/sparanoid/sparanoid.com/commit/3457b2a80b85364d5d0dba3dd0b85242a2f085bc))
  * update post “ReadWise” ([5195c1e1](https://github.com/sparanoid/sparanoid.com/commit/5195c1e160a1a54e4e0cca933454d1d05235e6eb))
* **template:**
  * remove SVG icons ([860f6b4b](https://github.com/sparanoid/sparanoid.com/commit/860f6b4bf85671628b9329ecd6a074a5d37447b7))
  * try `minimal-ui` for iOS 7.1+ ([0215e148](https://github.com/sparanoid/sparanoid.com/commit/0215e148837ecf2ce701ee4da7af950fe76635eb))


#### Breaking Changes

* This will remove all SVG icon decorations for `.note`, `.store`, and `.download`
 ([860f6b4b](https://github.com/sparanoid/sparanoid.com/commit/860f6b4bf85671628b9329ecd6a074a5d37447b7))
* `smoosher` task will inline all `.css` and .js` files to reduce HTTP requests and increase load performance. It's ideal for small website with some basic styles just like this project.
 ([9d4dcb25](https://github.com/sparanoid/sparanoid.com/commit/9d4dcb25ee6c94da76945f151f0bc7385454a701))


### 24.0.0 (Jan 28, 2014)
- Bump deps version
- Readme badges update
- Remove Grunt badge
- Add a Bitdeli Badge to README
- Remove duplicated badge
- Update copyright date
- Use variables instead of hand-coded strings
- Gitkeep for img folder
- More variable fix
- Remove quotes
- Add codename
- Update robot.txt
- Remove unused post excerpt
- Add new post “Moonstruck Princess Extended”
- Correct margin right space
- Smaller block quote decoration for mobile devices
- Use src-dest format
- Simplified grunt task
- Update license year
- Fix typo, props @gordianz
- Draft folder, more info: https://jekyllrb.com/docs/drafts/
- Switch to Jekyll default markdown template
- Split main template into multiple partials
- `list-item.html` -> `page-item.html`
- Move custom variables into `_data`, more info: https://jekyllrb.com/docs/datafiles/
- `_source` -> `_app`
- Fix variable condition
- Better nav solution is here
- Site main style update
  - New header
  - New logo (favicon, etc.)
  - New color scheme
  - Typography minor tweak (Now sans-serif FTW)
- Add full width banner back

### 23.0.1 (Dec 14, 2013)
- Uses autoprefixer
- Update server task
- Update `usemin`
- Bump Flexslider version
- Store page minor update
- Fix line-height since refactor
- Update `archive` grunt
- Update changelog
- Add `cite` for blockquotes, more info see https://html5doctor.com/cite-and-blockquote-reloaded/
- Increase feed post limit
- Adds setup instructions
- Update post “Delicious.com”
- Bump cssmin version
- Adds icon set image for post “Delicious.com”
- Fix “Delicious.com” title wrapper on small devices
- Add hyphens support for headings
- Fix logo position
- Strip HTML in title section for Atom feed
- Update post “Tianjin Project Revision”
- Fix error page blur issue on retina display
- Bump dep version
- Update post “Tianjin Project Revision”
- Bump grunt version
- Update first post date
- Add a funny interrobang symbol
- Bump deps version
- Bump version, prepared for Assemble rework

### 23.0.0 (Oct 27, 2013) [#][23.0.0]
- Shorter hash filename
- Fixes *min and usemin tasks order
- Remove `-webkit-backface-visibility: hidden;`, doesn't compatible with `position: sticky;`
- Bump deps version
- Update post color scheme for “DOLLARS Chat Room”
- Better external link (link post) handle
- Adds quote marks for href links
- Middot style fix
- New (brighter) assets for IterCast
- Update font stack
- Remove appcache support, too buggy
- Remove custom font face
- Sub heading transition
- Update todo
- Update heading on mobile device
- Update upcoming post
- Retrieve old content from Time Machine
- Larger wrapper width

### 22.0.7 (Sep 17, 2013)

- Bump deps version
- Uses post thumb instead of img-headline
- Fixes typo
- Uppercased post title “Relative URL”
- Update deps order
- I LOVE UNIVERSAL SELECTORS
- Bump reps version
- Adds manifest grunt task
- More aggressive cache config
- Adds `<html>` head
- Fixes grunt-manifest versioning
- Rename apache manifest
- Rename CSS filename
- Feature: Appcache support
- Adds usemin task
- Remove unused dep
- Remove debug task config
- Reorder grunt tasks
- Feature: Assets revving
- Fixes compiling order
- Updates Jekyll exclude list
- Scalable file path

### 22.0.6 (Aug 9, 2013)

- Fix link in changelog
- Fix the link points to the real location in changelog
- `Mac OS X` --> `OS X`
- Disable Champaign Monitor custom domain URL
- CSS-style variables for Less
- Bump deps versions
- Update license
- Simplified homepage copywirting
- Update homepage again
- Bump required deps
- Update remote hostname for Grunt deploy task
- Adds some comments to Grunt tasks
- More comment for Jekyll configuration file
- Build future posts for dev env
- Adds color scheme style
- Update and add color scheme for some posts
- Adds page.link for post with `page.img-headline`
- Better post syntax
- Simplified `.txt` paragraph style
- Update post syntax in notes
- Move post under work to its sub-categories
- Update railgun post background color
- Fixes typo
- Adds new post “IterCast”
- Adds space hack back
- Fixes inline CSS in html not compressed bug
- Fixes icons not filled with specific color scheme on some posts
- Update todo list
- Remove unused vars
- Give some love to my old posts
- Remove `::-webkit-validation-bubble` support: https://code.google.com/p/chromium/issues/detail?id=259050
- Update link color for post “IterCast”
- Disable HTML post compress for inline CSS, it kills normal paragraph spaces too

### 22.0.5 (Jul 1, 2013)

- Fix about page indents
- Remove theme previews from Postholic
- Adds post “7-Zip Chinese Simplified”
- License --> Licenses
- Adds new post “Notational Velocity”
- Updates todo
- Fix `grunt log` task

### 22.0.4 (Jun 26, 2013)

- Fix Gruntfile error
- Update packages
- Update homepage copywriting
- Fix tab indents
- Changelog: tab indents to space indents
- Update copywriting for homepage and about page

### 22.0.3 (Jun 26, 2013)

- license -> licenses
- Update .tm_properties
- Remove `feed.atom` -> `feed-atom.xml`
- Fix tab indents
- Changelog: tab indents to space indents
- Update copywriting for homepage and about page

### 22.0.2 (Jun 22, 2013)

- Update changelog
- Use dev deps badege
- Update dev deps badge
- Better post title line height
- Add new post “Start Page”
- Remove CSS *margin hack*, `time` elements shouldn’t be colapsed since it’s an inline element.
- More info: https://github.com/kangax/html-minifier/pull/67
- So you should wait html-minifier to fix that.
- No more codename
- No more `core.assets` variable
- Update readme
- Update grunt-concurrent, better log handling
- Update readme
- Optimize template structure, better central style, many more fixes
- Update changelog, bump version to 22.0.2

### 22.0.1 (Jun 13, 2013)

- More info for post “DOLLARS Chat Room”
- Fix version number in readme
- Update grunt-contrib-less to v0.6.0
- Yay my .less is already 1.4.0 compatible.
- Update enviroment requirement
- Updat Gruntfile
  - Fix cssmin task working directory
  - Better concurrent task ouput
  - Optimize concurrent order
- Update Jekyll settings
- Remove unused comments in Gruntfile
- Update `.™_properties` indent
- Re-init `package.json`
- Change gallery image order for post “Antiskill, Judgment Screensaver”
- Use my awsome version number
- New grunt task `log` - List current git commit log using `grunt log`
- Reserve back to original version number, bump version to 22.0.1

## 22.0.0 (Jun 13, 2013) [#][22.0.0]

- Move all element to align left
- Better Textmate exclude list
- Better work list
  - Remove image thumbnals, the same as Note page
  - No more `.width-unfixed` class for normal pages
- Shorten some post tiles
- Update posts structures for new design
  - Move Path Menu post from Note to Work
  - Add relative links for some posts in Work category
- Make it compatible with less 1.4 beta or greater
- Revert adding more margin space for `.tweet` button
- More details about post “ReadWise”
- “Latest Work” --> “Latest”
- Better copywriting
- No more `lazyload.html` for Work page
- Add my favorite titles back
- Better body padding for small screens
- Remove `.center` class, no longer need
- More multiple language titles
- Shorten Work page subtitle
- Fix typos
- Better template structure
- Simplify post title “find.ac Alter”
- No more `hgroup`, use `header + h1 + small`
- More structure fix, valid for w3c check
- Remove sponsor styles and HTML code
- Add a simple animation for latest work link
- Better post title image for new design
- Create new post “DOLLARS Chat Room”
- Simplify Atom feed structure, no more `post.thumb` determination
- Better navigation styles for small devices
- Add excludeInFileChooser for `.tm_properties`
- Update changelog
- Bump version 21-finale --> 22
- Update changelog
- Better Grunt server task with more Jekyll options support
- Fix buid task, create a new task `grunt archive` to create old design archive
- Update codename

## 21-finale (Jun 7, 2013) [#][21-finale]

- Hide img `alt`
- Update post 'Project Railgun'
- Add posts for newly released plugins.
- Update old post with 'img-headline'.
- Add `.reflist`, `.ref`, `.cite` for reference links in post
- Update post 'Tianjin Project'
- Update header for post 'Corner Bracket Lover'
- Add 'thumb' images for hidden posts from category 'Work'. The thumbnails I defined are mainly used by Twitter Cards meta
- Update posts for newly released plugins / theme
- Simplified Gemfile
- Better configuration for switching image assets URL
- Better file structure, fix empty space when a paragraph starts with some asian punctuation marks
- Add `:preview` task, experimental
- Better configuration file to control availability
- Update `::selection` style
- TL;DR
- Reset availability
- Remove `.work-list` in single post, update post navigation
- Simplify post navigation
- Retire accesskey
- Update browser style
- Remove useless posts
- Update post tag, remove some useless posts
- Add side projects section
- Make `twitter:description` a little bit longer than 200 letters, Twitter can handle it very well.
- Better template logic, minor tweaks
- Simplify template tags
- Upgrade Lazyload by @vvo to 1.0.0
- Use internal links instead of hardcoded links, read more about this specification at https://github.com/mojombo/jekyll/pull/369
- Update Jekyll to 0.12.0
- Add more description about default deploy task
- Initialize Lazyload as soon as it loads. props @vvo
- New post 'A List Apart 5.0'
- Add 'Donate' page
- Update text description for donate links
- Add exclude search list for Textmate
- Fix `site.url` for Twitter share button
- Update Jekyll to 0.12.1
- `info@sparanoid.com` -> `t@sparanoid.com`
- Remove post navigation
- newsletter.sparanoid.com instead of sparanoid.createsend.com
- Remove WebKit filter effect, not well supported on Retina Display
- Adds WebKit filter effect back
- Adds `.webkit-fix` hack to gain some performance and fix burry image using `-webkit-filter` on MacBook Pro with Retina display
- Remove `.webkit-fix` on body tag
- Remove unused post navigation CSS
- Adds.txt definition for 'Note' page
- Adds `.webkit-fix` for `:root`
- Updates `.index` background color for post 'Kai Series'
- Updates `Rakefile` with new path
- Adds new post ‘Kai Series’
- Compatible with Jekyll 1.*:
- Using directory-specified path for `post_url`
- Better configuration structure.
- Updates gitignore (`codekit-config.json` removed since it's no longer serving me)
- Remove support for `--file` flag
- Adds CONTRIBUTING.md and CHANGELOG.md
- Using the following command to update changelog: `git log 21..HEAD --reverse --format=%B | sed '/^$/d' | sed 's/^/- /'`
- Better changelog style
- Adds release date to changelog
- Updates changelog with generation instructions
- Fix changelog tab indent
- No more `tmp.txt` generated from changelog generator command
- Adds ATTRIBUTION.md based on teach.github.com
- Simplifies license in readme
- Updates `.gitignore`, remove logs from repo
- Better rake build script for handling image assets URL
- Update changelog with more accurate date and versions
- Better base URL handling
- Adds donate variable for Donate page
- Adds `a.css` back to repo
- Updates Jekyll version to 1.0.2
- Block old version archive
- Better post logo size with style `scoped` support
- Fix feed validation
- Remove `feed.rss`
- Add configuration comment
- Fix typos in `CHANGELOG.md`
- Fix typo in `_config.yml`
- Recompile CSS
- Update changelog with demo links
- Update changelog with old version screenshots
- Update changelog date
- Fix screenshots URLs in changelog
- Fix dead link in old post
- Fix  permission
- Adds package.json
- Add Grunt support, now use `grunt [task]` to manage server, build tasks
- Change source to 'https://rubygems.org' for secure HTTPS connection
- Add Travis support
- Add Travis and David badges
- Remove Gemfile.lock
- Remove unused grunt dependencies
- Remove old `rake serve` task, use jekyll itself
- Remode deprecated task :preview
- Read basic configurations from YAML
- Copy rake tasks to Gruntfile
- Move more rake tasks to Gruntfile
- Say goodbye to Rakefile
- Move scoped style into proper scope
- Add scoped style fallback
- Better less style with recess check
- More less properties order fix


## 21 (December 10, 2012)

- New header design
- Better comments
- Increase nav menu links spacing, since we've compressed and removed white spaces for HTML output. we need to add more space between links. More info: https://stackoverflow.com/questions/588356/
- Wrap all width-sensitive elements into `.wrapper`, prepared for the upcoming header
- Simplify deploy script
- Update project name
- Add special header for homepage
- Better arrow hover color
- Better header background gradient
- Better template indent
- Larger header post title
- Add font family variable
- Try ORCA CDN created by @livid
- Unfix header height
- Add FlexSlider for some interactive posts
- Update pagination position
- Add comments for better understanding. Updated Twitter Cards code
- Better header condition
- Better comments
- Add HTML5 form validation support
- Change subscription pages to category 'store'
- Bump copyright year
- Better CSS selector performance
- Update some posts thumbnails
- Add a `-webkit-filter` effect for `.work-list`
- Add some narrow typefaces fallback
- FlexSlider: `pauseOnHover: true`
- Fix `.paginaton` padding
- Add custom Jekyll support

## 20.1-finale (November 27, 2012) [#][20.1-finale]

- Simplified feed templates
- Uses `background-color` in transition statement to avoid animation effect on logo
- Add `role=announcement`
- Simplified `.gitignore` file
- Fixed typo, props @disinfeqt
- `lang="zh"` -> `lang=zh`
- More specified Rakefile comment
- Update post WordPress Plugin - Quotmarks Replacer, better blockquote styles
- Better tweet button position
- Merge posts
- Tabs -> spaces
- Remote post contents on page Note
- Shortened post URL and title 'Lester’s Plugins in Chinese'
- Single quotes -> double quotes
- Update post 'Lester’s Plugins in Chinese'
- Add new post '3.1 Billion in a Day'
- Add Twitter Card support
- Update logo
- Remove useless CSS define
- Add image lazy load support, more info at https://github.com/vvo/lazyload
- Use nginx empty gif module instead of data URI to small generated HTML size, read more info about nginx empty gif module: https://wiki.nginx.org/HttpEmptyGifModule
- `∞` (&#8734) -> `▲` (&#9650)

## 20.1 (October 7, 2012) [#][20.1]

- Convert Chinese posts to English
- Update post 'Tianjin Project'
- Update `.work-list` appearance
- Fix work-list on iPhone landscape
- Update post thumbnails
- Update post 'Font Zomnk'
- Update About page with microdata
- Fix typo
- Add `.store` style, embed SVG w/ data URI in Less
- Added a workaround solution for yuicompressor bug, media query fix
- Remove lang variable. More post in English. Better hr styles with data attr.
- Fix `feed-all.rss` permalink
- Update ads code
- Update post 'Antiskill, Judgment Screensaver / Icon'
- `Rakefile` playing with YUICompressor
- Update post thumbnails style for works
- Update font, Add new post 'Tianjin Project × The World Economic Forum'
- Update post pubdate for 'Tianjin Project × The World Economic Forum'
- Update post 'Tianjin Project × The World Economic Forum'
- Update post thumbnail size in feed
- Better font size
- Update pagination position
- Add new post 'Safari 6 Loads Page Faster'
- Update clearfix method: https://nicolasgallagher.com/micro-clearfix-hack/
- Update comment for clearfix hack
- Simplified CSS and HTML code
- Inverted color for Error page
- Add tweet button, variables updated
- No more WOTY series
- Update decoration border, global body padding updated
- `apple-touch-icon` -> `apple-touch-icon-precomposed`
- HR description position update
- Update apple-touch-icon (precomposed)
- Update media query description
- Better media query, `.tweet` -> `.btn`
- Reset "New page: Work List"
- Add `site.url` variable.
- Added subscription page and form
- sparanoid.createsend.com -> newsletter.sparanoid.com
- Update newsletter server URL `newsletter.sparanoid.com` -> `sparanoid.createsend.com` again for SSL support.
- Update post Tianjin Project series
- Update post Lucky Star Skin for QQ / Sogou Pinyin IME
- This is an elements centered version, with the following verbose changes:
- All elements are centered.
- Simpler page navigation
- Shorter post title for some articles, make them look better on small screen
- Simplified iOS media query
- Adds media query to detect different screen resolution for `.work-list`
- Adds freelance status on homepage
- Uses `site.profile.email` variable on About page
- Adds `feed-note.atom` and `feed-work.atom` (Temporary)
- Update `.btn` styles

## 20 (July 16, 2012) [#][20]

- First commit prepared for v20
- Remove comments in Less, `.work-list` minor tweak, remove text-align hook in error page
- Remove WOTY specified styles and structures
- Font updated, index updated, colophon updated, pagination position updated, infinite symbol position updated
- Update logo size
- Bump version to 20
- Remove leftover font
- Post minor changes
- Remove charset meta tag
- Update pagination position, again
- Fix typo, props @lianghai
- No more `.woty` class for this version
- Update `README.md`
- Add slide effect on navigation
- Fix `display: inline-block` parsing error in Firefox for navigation
- Fix pagination position, probably the last time I fix it.
- Rewind to Safari compatible navigation, ignore Firefox users
- An experiment rotate menu layout
- An experiment mouseover menu layout
- Remove unused mixins
- Add `text-align` workaround for post with Chinese, props @lianghai
- Fix typo, props @GordianZ
- Better menu transition effect
- Better HTML output, just looks better
- Fix pagination position, oh...
- HTML markup update
- Media query, iOS ready
- Logo and text pixel perfection, props @vaia
- Add `HTML compressor.rb` by @mytharcher
- Removed `HTML compressor.rg` by @mytharcher. Use the easier way: `htmlcompressor.jar` and `yuicompressor.jar` in `Rakefile` for minify HTML output code, this can provide pretty HTML code for development and serve minified version for production. sweet.
- Remove useless HTML comment
- Arrange posts in category folder, fixed wrong post URL
- Update post "lindsay-koinaka 3.0"
- Fix navigation in error page
- Add `.browser` style for website post display
- Better title position
- Category update: add Design and Drawing tag for posts in category Work. more style changes for work list and `.browser` frame
- Update post thumbnails
- New post 'Big Typography Dynasty'
- Add `Rakefile` to repo, finally
- Remove deprecated tasks
- Update thumbnails size for Work posts
- Update `.gitignore`
- Add screenshot for Tianjin Project
- Update thumbnails size for Work posts, again
- Add current page style for iOS, update pagination position
- "Update thumbnails size for Work posts, again", again
- Add `&#20;` for `htmlcompressor.jar`
- Fix `.work-list` for post
- Better title position
- Add section header for post 'Tianjin Project'
- Major changes for box models
- Clean up CSS
- Compress feeds
- Update h3 margin
- Remove whitespaces
- Add byline for Google Authorship, more information at https://support.google.com/webmasters/bin/answer.py?hl=en&answer=1408986
- Update complier path
- Update codename, bump to (real) version 20

## 19.3-finale (June 28, 2012) [#][19.3-finale]

- Better pagination for Note section with post title
- Remove bottom gradient
- Add `.download` and `.note` icons
- Better svg height for Safari and iOS Safari
- Another icon position fix when download and note blocks are used at the same time
- Update post 'SlimBox & VoxGrowl'
- Update post '7-Zip Iconset Redesigned (Version 2)'
- Better font stacks order
- Add new post series: Word of the Year (WOTY)
- Remove white spaces and other jam
- Unified excerpts for posts. Update Atom feed structure.
- Update permalink symbol for Note
- Update page 'About'
- Color variables ready, invert version reader
- Ready for invert
- Add new post 'I Don’t “Get” Art'
- Better Atom feed structure, passed feed validation by w3.org
- Update feed structure
- Remove Safari preview hack, since there's a cool type here.
- Fix Atom feed, again
- Fix HTML entries
- Fix quote marks
- Update my great Error 404 page
- RSS feed minor change
- Better font styles handling / Add blockquote
- Add some old posts
- Update dead link for old post
- Add old artwork posts / Update quote marks
- Update post thumbs
- Update hover background color in image list in "work"
- Update HTML structure, Simplified link border-bottom logic
- Add old post 'iGoogle Theme - Somilody 2'
- Update page 'Note' structure
- Decrease `.download` and `.note` font-size
- Update pseudo classes for `.work-list`
- Update media query for better UX for iPhone users. Add @space variable to take care of all spaces.
- Darker blockquote symbol
- Simplify media query syntax
- Replace `.a` with `role^=current`
- `role=current-page` -> `role=current`
- Add new post "“Free” Dribbble Invite"
- Update Word of the Year titles
- Refine CSS classes, remove unused styles, many minor fixes

## 19.3 (June 13, 2012) [#][19.3]

- More logo staff
- Still more logo staff
- Remove logo animation
- No more `<body>`
- Remove duplicates
- Update logo
- Update thumbnails style
- Better `line-height` control
- Change feeds URLs
- Remove experimental staff
- Update post 'Moonstruck Princess'
- Add new post 'Tianjin Project'
- Change `.txt` width
- Update logo
- Update assets filename / Better CSS naming for assets / Clean up CSS
- Larger title
- Update pagination position for new larger title
- Fix pagination position on the iPhone
- Fix hgroup width
- Better styles order
- Make `.txt` `max-width` variable
- Add placeholder background for images in work list

## 19.2 (April 18, 2012) [#][19.2]

- Remove ajaxify-html
- Add old posts
- Better title `line-height`
- Better typesetting for email address on mobile (small screen) device
- Anti SOPA
- Update CSS structure
- Update doctype
- Update link in post 'PaintStop Chinese Simplified for ZBrush 3.1 [Unofficial]'
- Make copyright year automatically update
- Update list decoration
- Clean `.gitignore`
- Configuration cleaned, typo fixed
- Remove `humans.txt`
- Simplified `_config.yml`
- Add assistive text to RSS 1.0
- Fix RSS 1.0 validating error
- `/feed/rss.xml` -> `/rss/index.xml`
- Modify Safari preview page
- Change words for post 'WordPress Plugin - Quotmarks Replacer'
- Update license
- Update logo

## 19.1 (January 13, 2012) [#][19.1]

- Logo updated
- Fix GitHub repo URL
- Add top transparent bar
- Add pagination
- Update ignore files
- Better top bar
- Update error page
- Update navigation padding
- Remove empty space
- Add translucent gradient at the bottom of the page
- Add navigator for category Work
- Better CSS logic
- Compressed `apple-touch-icon.png`
- Only use link when it's a external URL
- Removed useless vendor-free CSS styles
- Update post 'Path Menu Using CSS'
- Better feed output for posts with external links
- Add Store page, I'm going to sell cool things here
- Fix grammar for post 'Path Menu Using CSS'
- Add an arrow for external links in post page
- Update color scheme
- Remove leftovers
- Darker title
- Compressed CSS with YUI compressor
- Update CSS author comment
- Update favicon
- Remove useless space
- Better line-height for ad.
- Update code / pre color
- Add WebFont Loader by Google
- Manually rolled back to original font-face version
- Remove legacy font-face supports
- Better footer position
- Add Ajaxify with `histroy.js` and `ajaxify-html5.js`
- Remove fade effect, load script on demand
- Update ajaxify
- Remove fade effect again

## 19 (December 12, 2011) [#][19]

- Upgrade to ver. 19, codename lindsayisgod

## 18-finale (December 9, 2011) [#][18-finale]

- REMOVE `</script>` fix for Jekyll
- UPDATE font-family in image list
- UPDATE link border color
- UPDATE text block gradient
- UPDATE print and iPhone style
- UPDATE logo
- ADD `text-rendering`
- UPDATE about page
- UPDATE error page
- FIX HTML markup minor changes
- REMOVE Yoggrt ads scripts
- UPDATE image hover `background-color`
- ADD justified text-align and hyphens for post contents
- POST remove umbrella
- UPDATE post list styles
- POST add 'Path Menu Using CSS'
- FIX double slashes when a external link is defined in post.html
- Update logo
- Add BSA ads

## 18 (October 16, 2011) [#][18]

- ADD v18 mockup
- REMOVE pagination for category NOTE
- UPDATE thumbnail images styles
- ADD media query for iOS
- UPDATE navigation
- UPDATE `README.md`
- UPDATE Atom feed
- POST remove 'Nessa'
- REMOVE styles for atom feed
- ADD RSS feed for exporting to WordPress
- UPDATE `a:hover` style
- ADD transition for `a:hover` style
- UPDATE font-family
- UPDATE always show ads
- RENAME `rss.xml` -> `index.rss.xml`
- REMOVE category for RSS output, cause WordPress creates dummy categories.
- UPDATE pages
- UPDATE styles for v18

## 17-finale (October 1, 2011)

- REMOVE dead GitHub links
- POST minor changes
- FIX Jekyll parsing error
- REMOVE Rakefile
- UPDATE paginator

## 17 (2011) [#][17]

- BUMP version to 17 from old repo

## 16 (2011) [#][16]

- BUMP version to 16 from old repo

## 15 (2011) [#][15]

- BUMP version to 15 from old repo

## 14-finale (September 7, 2011)

- ADD fonts back due to the lack support of Firefox
- ADD new webkit gradient style
- UPDATE font files to CloudFront
- UPDATE prepared for upcoming version
- UPDATE URL for easy development

## 14.1 (February 11, 2011)

- UPDATE file structures
- FIX navigation in index
- UPDATE HTML structure and CSS cleanup
- UPDATE index display settings
- UPDATE Atom output
- UPDATE CloudFront files URL
- ADD error 404 page
- UPDATE assets files URL
- UPDATE host font files elsewhere
- UPDATE error page

## 14 (February 8, 2011) [#][14]

- UPDATE readme and license
- CREATE auto update script, inspired by https://github.com/henrik/henrik.nyh.se
- FIX datetime valid XML schema
- UPDATE deploy settings
- UPDATE site navigation
- UPDATE merge colors value to the same places
- FIX minor color fixed in nav
- UPDATE no more dark styles, CSS cleanup
- ADD current nav style
- FIX media query bug processed by YUI Compressor
- UPDATE footer DELETE redundant white spaces
- UPDATE deploy settings
- UPDATE page navigation
- UPDATE page navigation, transition cleanup
- UPDATE nav transition effect, HTML markup cleanup
- DELETE fade effect on page navigation
- UPDATE page navigation font size and paddings
- UPDATE decoration position
- UPDATE no more fluid position
- UPDATE deploy settings
- UPDATE codes cleanup and some minor changes

## 13 (2008 - March 2010)

Source code not available

- [Screenshot #01](https://sparanoid.com/lab/version/13/13-01.jpg)
- [Screenshot #02](https://sparanoid.com/lab/version/13/13-02.jpg)
- [Screenshot #03](https://sparanoid.com/lab/version/13/13-03.jpg)
- [Screenshot #04](https://sparanoid.com/lab/version/13/13-04.jpg)
- [Screenshot #05](https://sparanoid.com/lab/version/13/13-05.jpg)
- [Screenshot #06](https://sparanoid.com/lab/version/13/13-06.jpg)
- [Screenshot #07](https://sparanoid.com/lab/version/13/13-07.jpg)
- [Screenshot #08](https://sparanoid.com/lab/version/13/13-08.jpg)

## 12 (2007 - 2008)

Source code not available

- [Screenshot #01](https://sparanoid.com/lab/version/12/12-01.jpg)
- [Screenshot #02](https://sparanoid.com/lab/version/12/12-02.jpg)
- [Screenshot #03](https://sparanoid.com/lab/version/12/12-03.jpg)
- [Screenshot #04](https://sparanoid.com/lab/version/12/12-04.jpg)

## 11

Source code not available

## 10

Source code not available

## 09

Source code not available

## 08 (2007)

Source code not available

- [Screenshot #01](https://sparanoid.com/lab/version/08/08.png)

## 07 (2007)

Source code not available

- [Screenshot #01](https://sparanoid.com/lab/version/07/07.png)

## 06 (2007)

Source code not available

- [Screenshot #01](https://sparanoid.com/lab/version/06/06.jpg)

## 05 (2006)

Source code not available

- [Screenshot #01](https://sparanoid.com/lab/version/05/05-01.jpg)
- [Screenshot #02](https://sparanoid.com/lab/version/05/05-02.jpg)

## 04 (2006)

Source code not available

- [Screenshot #01](https://sparanoid.com/lab/version/04/04.jpg)

## 03 (2006)

Source code not available

- [Screenshot #01](https://sparanoid.com/lab/version/03/03.png)

## 02 (2005)

Source code not available

- [Screenshot #01](https://sparanoid.com/lab/version/02/02.jpg)

## 01 (2005)

Source code not available

- Initial release

[head]:         https://sparanoid.com/
[23.0.0]:       https://sparanoid.com/lab/version/23/
[22.0.0]:       https://sparanoid.com/lab/version/22/
[21-finale]:    https://sparanoid.com/lab/version/21-finale/
[20.1-finale]:  https://sparanoid.com/lab/version/20.1-finale/
[20.1]:         https://sparanoid.com/lab/version/20.1/
[20]:           https://sparanoid.com/lab/version/20/
[19.3-finale]:  https://sparanoid.com/lab/version/19.3-finale/
[19.3]:         https://sparanoid.com/lab/version/19.3/
[19.2]:         https://sparanoid.com/lab/version/19.2/
[19.1]:         https://sparanoid.com/lab/version/19.1/
[19]:           https://sparanoid.com/lab/version/19/
[18-finale]:    https://sparanoid.com/lab/version/18-finale/
[18]:           https://sparanoid.com/lab/version/18/
[17]:           https://sparanoid.com/lab/version/17/
[16]:           https://sparanoid.com/lab/version/16/
[15]:           https://sparanoid.com/lab/version/15/
[14]:           https://sparanoid.com/lab/version/14/

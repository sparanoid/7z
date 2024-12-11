// @ts-check
import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
  site: 'https://sparanoid.com',
  base: '/lab/7z',
  build: {
    // https://docs.astro.build/en/reference/configuration-reference/#buildformat
    format: 'file',
  },
  markdown: {
    // https://docs.astro.build/en/reference/configuration-reference/#markdownsyntaxhighlight
    syntaxHighlight: false,
  },
  integrations: [sitemap()],
});

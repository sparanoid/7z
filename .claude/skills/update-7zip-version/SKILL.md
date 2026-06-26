---
name: update-7zip-version
description: Update 7-Zip version numbers across the Chinese Simplified website. Auto-fetches the latest version, release date, and SourceForge thread URL from https://7-zip.org/ if the user does not provide them. Use when the user wants to update, bump, or change the 7-Zip version, release a new version, or mentions a new 7-Zip release.
---

# Update 7-Zip Version

## Overview

This project is a Chinese Simplified (zh-cn) mirror site for 7-Zip, built with Astro. Version numbers appear in several files and must be updated consistently.

## Version Format

- **Long format**: `YY.MM` (e.g., `25.01`, `24.09`)
- **Short format**: `YYMM` — the long format with the dot removed (e.g., `2501`, `2409`)

## Files to Update

### 1. `website/src/data/versions.ts` (PRIMARY — always update)

Central version data. Update the `versions` object:

- `stable.long` / `stable.short` / `stable.date` — current stable release
- `stable.sdk.long` / `stable.sdk.short` / `stable.sdk.date` — SDK version (often same as stable, but may differ)
- `beta.long` / `beta.short` / `beta.date` — beta release (may match stable when no active beta)
- `beta.sdk.*` — beta SDK version

The `currentDownloads` and `legacyDownloads` arrays use template strings referencing `stable.short`, so they update automatically when the stable version changes. No manual edits needed there unless download structure changes.

### 2. `website/src/pages/index.astro` (update the `news` array)

The `news` array at the top of the frontmatter contains recent release announcements. Add a new entry at the **top** of the array:

```javascript
{
  title: "7-Zip XX.YY",
  date: "YYYY-MM-DD",
  link: "https://sourceforge.net/p/sevenzip/discussion/45797/thread/THREAD_ID/",
},
```

Keep the 3 most recent entries; remove the oldest if adding a new one.

### 3. `website/src/pages/sdk.astro` (update if SDK changelog changed)

The SDK page has a hardcoded changelog list. If the new release includes notable SDK/LZMA changes, add a `<li>` entry in the changelog `<ul>`:

```html
<li><b>XX.YY：</b>Description of changes in Chinese.</li>
```

### 4. `zh-cn/History.txt` (always update)

Fetch the upstream English changelog from `https://7-zip.org/history.txt` using the WebFetch tool. Extract the section for the new version being updated, then translate it to Chinese Simplified and prepend it to `zh-cn/History.txt`.

**Translation must follow the glossary at `GLOSSARY.md`** in the project root. Read the glossary before translating and apply its term mappings consistently. Also reference existing entries in `zh-cn/History.txt` for tone and style.

**Steps:**
1. Read `GLOSSARY.md` for mandated term translations
2. Fetch `https://7-zip.org/history.txt`
3. Locate the changelog block for the target version (starts with `XX.YY          YYYY-MM-DD` and ends before the next version header)
4. Translate the extracted block to Chinese Simplified, using glossary terms and matching the style of existing entries in `zh-cn/History.txt`
5. Prepend the translated block after the file header (after line 6), with a blank line separating it from the next entry

**Format:**
```
XX.YY          YYYY-MM-DD
-------------------------
- Translated change description in Chinese
```

## Required Information

Three values are needed for any update:

1. **Version number** — long format, e.g., `26.01`
2. **Release date** — ISO format, e.g., `2026-04-27`
3. **SourceForge discussion URL** — full thread URL, e.g., `https://sourceforge.net/p/sevenzip/discussion/45797/thread/555e132ba4/`

### Source of values

- **If the user supplies all three**, use the user's values verbatim. Never override them with auto-fetched data.
- **If the user supplies none or only some**, auto-fetch the missing values from `https://7-zip.org/` (see "Auto-Fetching" below). Confirm the fetched values with the user before writing files.
- **Never guess or fabricate** values. If auto-fetch fails (network error, parsing fails), ask the user explicitly via AskQuestion.

## Auto-Fetching from 7-zip.org

When the user has not provided the three required values, fetch `https://7-zip.org/` with the WebFetch tool and extract them from the rendered markdown:

1. **Version + date** appear in the top download heading, e.g.:
   ```
   Download 7-Zip 26.01 (2026-04-27) for Windows x64 (64-bit):
   ```
   Pattern: `Download 7-Zip <VERSION> (<YYYY-MM-DD>)`

2. **SourceForge discussion URL** is the first (topmost) entry in the news section, formatted as:
   ```
   | 7-Zip 26.01 | 2026-04-27 |
   | --- | --- |
   | [7-Zip 26.01](https://sourceforge.net/p/sevenzip/discussion/45797/thread/555e132ba4/) |
   ```
   Take the URL from the topmost entry whose version matches the version extracted in step 1.

3. **Confirmation**: After extraction, show the user the three values (e.g., "Detected: 7-Zip 26.01, 2026-04-27, thread `555e132ba4`. Proceed?") and wait for confirmation before editing files.

If the page structure has changed and parsing fails, fall back to asking the user via AskQuestion.

## Workflow

1. **Determine values**:
   - If the user provided version, date, and URL → use them
   - Otherwise → auto-fetch from `https://7-zip.org/` and confirm with the user
2. **Derive short version** automatically by removing the dot (e.g., `26.01` → `2601`)
3. **Update `versions.ts`** — stable, beta, and SDK versions (SDK defaults to same as stable unless user says otherwise)
4. **Update `index.astro`** news array — add new entry at top using the sf.net URL, trim to 3 items
5. **Optionally update `sdk.astro`** if there are SDK changelog notes
6. **Update `zh-cn/History.txt`** — fetch upstream changelog from `https://7-zip.org/history.txt`, extract the new version's section, translate to Chinese, and prepend
7. **Verify** the site builds without errors by running `bun run build` in the `website/` directory

## Checklist

```
- [ ] versions.ts: stable version updated
- [ ] versions.ts: beta version updated (if applicable)
- [ ] versions.ts: SDK version updated (if applicable)
- [ ] index.astro: news array updated (add new, keep 3 most recent)
- [ ] sdk.astro: SDK changelog updated (if applicable)
- [ ] zh-cn/History.txt: fetched from upstream, translated, and prepended
- [ ] Site builds successfully
```

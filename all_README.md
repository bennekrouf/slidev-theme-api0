# API0 Slidev Template

A reusable Slidev template that implements the API0 design system, featuring consistent transitions, beautiful backgrounds, and a cohesive design language.

## Directory Structure

```
slidev-api0-theme/
├── package.json
├── README.md
├── example.md
├── components/
│   ├── API0Logo.vue
│   └── CodeBlock.vue
├── layouts/
│   ├── cover.vue
│   ├── default.vue
│   ├── section.vue
│   ├── statement.vue
│   └── two-cols.vue
├── setup/
│   └── windicss.ts
└── styles/
    ├── index.ts
    ├── base.css
    ├── code.css
    └── layouts.css
```

## Installation

### Option 1: Use from GitHub

1. Create a new Slidev presentation
```bash
npm init slidev@latest
```

2. Add this theme to your frontmatter in your `slides.md`:
```yaml
---
theme: 'https://github.com/your-username/slidev-api0-theme'
---
```

### Option 2: Local Development

1. Clone this repository
```bash
git clone https://github.com/your-username/slidev-api0-theme
```

2. Create a symbolic link
```bash
cd slidev-api0-theme
npm link
```

3. In your Slidev project, link the theme
```bash
npm link slidev-api0-theme
```

4. Add this theme to your frontmatter:
```yaml
---
theme: 'api0'
---
```

## Usage

Once the theme is installed, you can start using it in your Slidev presentation. Here's an example frontmatter configuration:

```yaml
---
theme: 'api0'
title: 'API0 Presentation'
titleTemplate: '%s - API0'
layout: 'cover'
transition: 'fade'
highlighter: 'shiki'
lineNumbers: true
drawings:
  persist: false
colorSchema: 'light'
---
```

## Theme Features

### Global Settings

Add these settings to your frontmatter for consistent defaults:

```yaml
---
# Theme settings
transition: 'fade' # Default transition for all slides
background: 'gradient' # Default background style (gradient, solid, grid)
class: 'text-center' # Default class for all slides
highlighter: 'shiki' # Code highlighting
---
```

### Per-slide Settings

Override global settings on individual slides:

```md
---
layout: default
transition: slide-up
background: solid
---

# This slide has different settings
```

### Available Layouts

1. `cover`: Title slide
2. `default`: Standard content slide
3. `section`: Section divider slide
4. `statement`: Big statement/quote slide
5. `two-cols`: Two-column layout

### Available Transitions

All slides use 'fade' by default, but you can choose from:
- `fade` (default)
- `slide-up`
- `slide-down`
- `slide-left`
- `slide-right`
- `zoom-in`
- `zoom-out`

### Available Backgrounds

- `gradient`: Primary gradient background (default)
- `solid`: Solid background color
- `grid`: Grid pattern background
- `dots`: Dot pattern background

## Example Slides

See `example.md` for a complete presentation example using this theme.

## Customization

### Colors

Edit `styles/base.css` to adjust the theme colors.

### Typography

Edit `styles/base.css` to modify the typography.

### Components

Create custom components in the `components/` directory.

## License

MIT

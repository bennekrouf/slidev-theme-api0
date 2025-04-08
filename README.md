# Slidev API0 Theme

A modern, professional Slidev theme based on the API0 design system with consistent transitions, beautiful backgrounds, and a cohesive design language.

![Slidev API0 Theme Preview](https://via.placeholder.com/800x450)

## Features

- 🎨 **Consistent Design System** - Based on the API0 design language with clean typography and colors
- 🌓 **Light & Dark Mode** - Fully supports both light and dark modes
- 🧩 **Custom Layouts** - Includes cover, section, statement, two-column, and default layouts
- 🎬 **Smooth Transitions** - Consistent transitions (default: fade) across slides
- 🖼️ **Beautiful Backgrounds** - Multiple background styles including gradient, grid, and dots patterns
- 🎯 **Distinctive Logo Animation** - API0 logo with animation on hover
- 📝 **Code Highlighting** - Beautiful code blocks with syntax highlighting
- 📱 **Fully Responsive** - Works on all devices

## Installation

### Install Slidev

```bash
npm init slidev@latest
```

### Use the Theme

Add this theme to your Slidev presentation frontmatter:

```yaml
---
theme: 'https://github.com/your-username/slidev-theme-api0'
---
```

Or install it locally:

```bash
# In your Slidev project
npm i slidev-theme-api0 -D
```

Then use it in your frontmatter:

```yaml
---
theme: 'api0'
---
```

## Usage

### Frontmatter Options

You can configure global settings in your presentation's frontmatter:

```yaml
---
theme: 'api0'
title: 'My API0 Presentation'
titleTemplate: '%s - API0'
layout: 'cover'
transition: 'fade'
background: 'gradient'
highlighter: 'shiki'
lineNumbers: true
colorSchema: 'light' # or 'dark'
---
```

### Global Transitions

This theme uses `fade` as the default transition for all slides. You can override this globally in the frontmatter:

```yaml
---
theme: 'api0'
transition: 'slide-up' # Global transition
---
```

Or on a per-slide basis:

```md
---
transition: slide-left
---

# This slide uses a different transition
```

### Available Transitions

- `fade` (default)
- `slide-up`
- `slide-down`
- `slide-left`
- `slide-right`
- `zoom-in`
- `zoom-out`

### Backgrounds

Choose from multiple background styles:

```md
---
background: gradient
---

# Gradient Background

---
background: grid
---

# Grid Background

---
background: dots
---

# Dots Pattern Background

---
background: solid
---

# Solid Background
```

### Layouts

#### Cover Layout

```md
---
layout: cover
---

# Presentation Title
## Subtitle

<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-8 py-4 rounded-lg bg-primary text-white cursor-pointer">
    Start Presentation
  </span>
</div>
```

#### Default Layout

```md
---
layout: default
---

# Regular Slide

Content goes here

- Bullet points
- More points
```

#### Section Layout

```md
---
layout: section
---

# Section Title
```

#### Statement Layout

```md
---
layout: statement
---

# "This is a powerful statement or quote"

## - Attribution
```

#### Two-Column Layout

```md
---
layout: two-cols
---

# Left Column

Content on the left

::right::

# Right Column

Content on the right
```

## Examples

Check out the `example.md` file for a complete presentation example using this theme.

## Customization

### Colors

To customize colors, create a CSS file in your project:

```css
/* ./style.css */
:root {
  --color-primary: #00b4ff; /* Change primary color */
}
```

And import it in your main markdown file:

```md
---
theme: 'api0'
---

import './style.css'

# My Customized Presentation
```

## Credits

- Created with [Slidev](https://sli.dev)
- Based on the API0 design system

## License

MIT

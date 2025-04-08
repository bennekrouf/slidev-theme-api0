# API0 Slidev Template - Complete Overview

I've created a comprehensive Slidev template that incorporates your API0 design system, featuring consistent transitions (with fade as default), beautiful backgrounds, and your distinctive visual aesthetic. This template is ready to be used as a starting point for all your presentations.

## Template Structure

```
slidev-api0-theme/
├── package.json                # Theme metadata and dependencies
├── styles/
│   ├── index.ts                # Main theme entry point
│   ├── base.css                # Base styles with your API0 color palette
│   ├── code.css                # Code block styling
│   └── layouts.css             # Layout-specific styles
├── layouts/
│   ├── cover.vue               # Cover slide layout
│   ├── default.vue             # Default slide layout
│   ├── section.vue             # Section divider layout
│   ├── statement.vue           # Quote/statement layout
│   └── two-cols.vue            # Two-column layout
├── components/
│   └── API0Logo.vue            # Your distinctive logo with animation
├── utils/
│   └── background.ts           # Background utility for slides
├── setup/
│   └── windicss.ts             # WindiCSS/Tailwind configuration
├── create-presentation.js      # Helper script to create new presentations
├── README.md                   # Documentation
└── example.md                  # Example slides using the theme
```

## Key Features

1. **Consistent API0 Branding**
   - Your distinctive orange primary color (#FF6B00)
   - Custom logo with the rotated "0" and diagonal strike-through
   - Consistent typography based on your design system

2. **Multiple Layout Options**
   - Cover layout for title slides
   - Default layout for content slides
   - Section layout for section dividers
   - Statement layout for impactful quotes
   - Two-column layout for comparisons

3. **Smooth Transitions**
   - All slides use a "fade" transition by default
   - Other available transitions: slide-up, slide-down, slide-left, slide-right, zoom-in, zoom-out

4. **Beautiful Backgrounds**
   - Gradient background (default)
   - Grid pattern background
   - Dots pattern background
   - Solid color background

5. **Dark/Light Mode Support**
   - Full support for both light and dark modes
   - Colors automatically adjust based on the selected theme

6. **Code Highlighting**
   - Beautiful syntax highlighting for code blocks
   - Language badge in the top-right corner

7. **Responsive Design**
   - Works well on all screen sizes and devices

## How to Use This Template

### Installation

1. Create a new directory for your theme:
   ```bash
   mkdir slidev-api0-theme
   cd slidev-api0-theme
   ```

2. Copy all the files from this conversation into the appropriate directory structure.

3. Create a symbolic link to develop locally:
   ```bash
   npm link
   ```

4. In your Slidev project, use the theme:
   ```bash
   npm link slidev-api0-theme
   ```

5. Add the theme to your Slidev frontmatter:
   ```yaml
   ---
   theme: 'api0'
   ---
   ```

### Using the Create Script

For an easier setup, you can use the included creation script:

```bash
node create-presentation.js
```

This will:
1. Ask for your project name, title, and author
2. Set up a new Slidev project with the API0 theme
3. Create a starter presentation with examples of all layout types

### Customization

You can easily customize aspects of the theme by:

1. Creating a local CSS file to override variables:
   ```css
   /* ./style.css */
   :root {
     --color-primary: #00B4FF; /* Change primary color */
   }
   ```

2. Importing it in your slides.md:
   ```md
   ---
   theme: 'api0'
   ---

   import './style.css'

   # My Presentation
   ```

## Next Steps

1. **Package the Theme**: After testing, you can publish it as an npm package for easier sharing.

2. **Create More Layouts**: Add additional specialized layouts as needed.

3. **Extend Components**: Create more reusable components specific to your needs.

4. **Documentation**: Expand documentation with more examples.

This template provides a solid foundation for creating beautiful, consistent presentations that reflect your API0 design system. The default transition (fade) and gradient background give your slides a professional, modern look while maintaining your distinctive brand identity.

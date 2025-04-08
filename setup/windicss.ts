
// setup/windicss.ts
import { defineWindiSetup } from '@slidev/types'

// Extending the WindiCSS configuration
export default defineWindiSetup(() => ({
  shortcuts: {
    // Custom shortcuts for common patterns
    'btn': 'px-4 py-2 rounded-lg bg-secondary hover:bg-muted transition duration-200',
    'btn-primary': 'px-4 py-2 rounded-lg bg-primary text-white hover:bg-primary-dark shadow-primary transition duration-200 hover:-translate-y-1',
    'card': 'p-4 rounded-xl bg-secondary border border-border shadow',
    'grid-cols-auto': 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4',
  },
  theme: {
    extend: {
      // Customize colors based on API0 design system
      colors: {
        primary: {
          DEFAULT: '#FF6B00',
          dark: '#e05e00',
          light: '#ff8533',
        },
        background: 'var(--color-background)',
        foreground: 'var(--color-foreground)',
        secondary: 'var(--color-secondary)',
        muted: 'var(--color-muted)',
        border: 'var(--color-border)',
      },
      // Custom fonts
      fontFamily: {
        sans: 'var(--font-family)',
        mono: 'Fira Code, monospace',
      },
      // Custom animation for transitions
      animation: {
        'fade-in': 'fadeIn 0.5s ease-in-out',
        'slide-up': 'slideUp 0.5s ease-in-out',
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        slideUp: {
          '0%': { transform: 'translateY(20px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
      },
    },
  },
}))

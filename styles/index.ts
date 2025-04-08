// styles/index.ts
import './base.css'
import './code.css'
import './layouts.css'

// Default theme configuration
const config = {
  // Default global transition
  transition: 'fade',
  
  // Default slide background
  background: 'gradient',
  
  // Font sizes
  fonts: {
    mono: 'Fira Code, monospace',
    sans: 'system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif',
    serif: 'Georgia, Cambria, "Times New Roman", Times, serif',
  },
  
  // Slide ratios
  slideRatio: '16/9',
  
  // Custom container style
  container: {
    padding: '2rem',
  }
}

export default config

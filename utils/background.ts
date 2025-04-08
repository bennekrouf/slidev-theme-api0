// utils/background.ts

/**
 * Handle different background types for slides
 * @param type Background type (gradient, solid, grid, dots)
 * @returns CSS class string
 */
export function handleBackground(type: string = ''): string {
  if (!type)
    return ''
    
  switch (type) {
    case 'gradient':
      return 'bg-gradient'
    case 'solid':
      return ''
    case 'grid':
      return 'bg-grid'
    case 'dots':
      return 'bg-dots'
    default:
      // Try to handle color values
      if (type.startsWith('#') || type.startsWith('rgb'))
        return `bg-[${type}]`
      return type
  }
}

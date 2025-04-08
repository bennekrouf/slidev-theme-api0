#!/usr/bin/env node
const fs = require('fs')
const path = require('path')
const { execSync } = require('child_process')
const readline = require('readline')

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

// ASCII art for API0 logo
const logo = `
   __    ____  ___  ___ 
  / /\\  | |_  |___)  |  
 /_/--\\ |_|__ |     _|_ 
                        
Create a new presentation with API0 theme
`

console.log(logo)

// Ask for project name
rl.question('Project name: ', (projectName) => {
  // Sanitize project name (replace spaces with dashes, remove special characters)
  const sanitizedName = projectName.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '')
  const projectDir = path.join(process.cwd(), sanitizedName)
  
  // Ask for title
  rl.question('Presentation title: ', (title) => {
    // Ask for author
    rl.question('Author: ', (author) => {
      // Ask for theme mode
      rl.question('Theme mode (light/dark/both) [light]: ', (themeMode) => {
        const selectedThemeMode = themeMode || 'light'
        
        console.log(`\nCreating new presentation "${title}" in ${projectDir}...`)
        
        try {
          // Create project directory
          if (!fs.existsSync(projectDir)) {
            fs.mkdirSync(projectDir, { recursive: true })
          }
          
          // Initialize slidev
          console.log('\nInitializing Slidev...')
          process.chdir(projectDir)
          execSync('npm init slidev@latest -- --template=none --yes', { stdio: 'inherit' })
          
          // Create slides.md with API0 theme
          console.log('\nConfiguring API0 theme...')
          
          const slidesContent = `---
theme: 'api0'
title: '${title}'
titleTemplate: '%s - API0'
author: '${author}'
layout: 'cover'
transition: 'fade'
background: 'gradient'
highlighter: 'shiki'
lineNumbers: true
drawings:
  persist: false
colorSchema: '${selectedThemeMode}'
---

# ${title}

## ${author}

<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-8 py-4 rounded-lg bg-primary text-white cursor-pointer">
    Start Presentation
  </span>
</div>

<div class="abs-br m-6 flex gap-2">
  <a href="https://github.com/your-username" target="_blank" 
    class="text-xl icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

<!--
This is the cover slide - the first slide your audience will see.
-->

---
layout: 'default'
---

# What is API0?

API0 is a next-generation framework for building robust APIs with zero complexity.

<v-clicks>

- 🚀 **Fast Development** - Build and deploy APIs in minutes
- 🔒 **Secure by Default** - Built-in security features
- 📊 **Automatic Documentation** - API docs generated automatically
- 🔄 **Real-time Updates** - WebSocket support built-in
- 💻 **Developer Friendly** - Intuitive CLI and UI tools

</v-clicks>

---
layout: 'two-cols'
---

# Left Column

Content for the left column goes here.

::right::

# Right Column

Content for the right column goes here.

---
layout: 'section'
---

# Section Title

---
layout: 'statement'
---

# "This is an important statement or quote"

## - Attribution

---
layout: 'cover'
---

# Thank You!

<div class="pt-12">
  <span class="px-8 py-4 rounded-lg bg-primary text-white">
    your-email@example.com
  </span>
</div>
`
          
          fs.writeFileSync(path.join(projectDir, 'slides.md'), slidesContent)
          
          // Add theme to dependencies
          console.log('\nInstalling API0 theme...')
          execSync('npm install slidev-theme-api0 --save-dev', { stdio: 'inherit' })
          
          console.log('\n✅ Presentation created successfully!')
          console.log(`\nTo start the presentation:
  cd ${sanitizedName}
  npm run dev
          `)
          
          rl.close()
        } catch (error) {
          console.error('Error creating presentation:', error)
          rl.close()
        }
      })
    })
  })
})

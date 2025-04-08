---
theme: 'api0'
title: 'API0 Framework'
titleTemplate: '%s - Modern API Solutions'
layout: 'cover'
transition: 'fade'
background: 'gradient'
highlighter: 'shiki'
lineNumbers: true
drawings:
  persist: false
colorSchema: 'light' # or 'dark'
---

# API0 Framework

## Modern API Solutions

<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-8 py-4 rounded-lg bg-primary text-white cursor-pointer">
    Start Presentation
  </span>
</div>

<div class="abs-br m-6 flex gap-2">
  <a href="https://github.com/your-username/api0" target="_blank" 
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

<!--
This slide uses the v-clicks directive to progressively reveal bullet points.
-->

---
layout: 'two-cols'
transition: 'slide-up'
---

# How It Works

API0 simplifies every step of the API development process.

<v-clicks>

1. Define your data models
2. Configure endpoints
3. Set access controls
4. Deploy with one command

</v-clicks>

::right::

<div class="ml-4">
  <img src="/api/placeholder/400/320" alt="API0 Workflow" class="rounded-xl shadow-xl mt-6" />
</div>

<!--
This slide uses the two-column layout with an image on the right side.
-->

---
layout: 'default'
transition: 'fade'
background: 'grid'
---

# Code Example

```rust
// Define a simple API endpoint
#[api0::endpoint]
pub async fn get_users(db: Database) -> Result<Vec<User>, Error> {
    // Query database for all users
    let users = db.query("SELECT * FROM users").await?;
    
    // Return as JSON response
    Ok(users)
}
```

<v-click>

```yaml
# Configuration file (config.yaml)
endpoints:
  users:
    methods: [GET, POST]
    auth: required
    rate_limit: 100/hour
```

</v-click>

<!--
This slide shows code examples with syntax highlighting.
-->

---
layout: 'section'
transition: 'zoom-in'
---

# Core Features

<!--
This is a section divider slide with a different transition.
-->

---
layout: 'default'
transition: 'fade'
---

# Automatic Documentation

<div class="grid grid-cols-2 gap-4">
<div>

## API0 automatically generates:

<v-clicks>

- OpenAPI/Swagger docs
- API reference
- SDK examples
- Postman collections

</v-clicks>

</div>
<div>
  <img src="/api/placeholder/400/320" alt="API Documentation" class="rounded-xl shadow-lg" />
</div>
</div>

<!--
This slide demonstrates a manual grid layout with an image.
-->

---
layout: 'statement'
transition: 'slide-up'
background: 'solid'
class: 'text-center'
---

# "API0 reduced our development time by 60%"

## - Major Tech Company

<!--
This is a statement/quote slide with different background.
-->

---
layout: 'default'
transition: 'fade'
---

# Getting Started

<v-clicks>

```bash
# Install the CLI
npm install -g api0-cli

# Create a new API project
api0 create my-awesome-api

# Start development server
cd my-awesome-api
api0 dev
```

</v-clicks>

<div class="pt-12 text-center">
  <span @click="$slidev.nav.next" class="px-6 py-3 rounded-lg bg-primary text-white cursor-pointer hover:bg-primary-dark">
    Next: Pricing Plans
  </span>
</div>

<!--
This slide shows CLI commands with a call-to-action button.
-->

---
layout: 'two-cols'
transition: 'slide-left'
---

# Pricing Plans

<div class="flex flex-col">
  <div class="mb-4 p-4 border border-gray-200 rounded-xl">
    <h3 class="text-lg font-semibold text-primary">Free Tier</h3>
    <ul class="mt-2">
      <li>Up to 10,000 requests/month</li>
      <li>Community support</li>
      <li>Basic documentation</li>
    </ul>
  </div>
</div>

::right::

<div class="flex flex-col ml-4">
  <div class="mb-4 p-4 border border-gray-200 rounded-xl">
    <h3 class="text-lg font-semibold text-primary">Pro Tier</h3>
    <ul class="mt-2">
      <li>Unlimited requests</li>
      <li>Priority support</li>
      <li>Advanced security features</li>
      <li>Custom domains</li>
    </ul>
  </div>
</div>

<!--
This slide uses the two-column layout for comparing pricing plans.
-->

---
layout: 'cover'
transition: 'fade'
background: 'gradient'
---

# Thank You!

## Get Started Today

<div class="pt-12">
  <span class="px-8 py-4 rounded-lg bg-primary text-white">
    api0.example.com
  </span>
</div>

<div class="abs-br m-6 flex gap-2">
  <a href="https://github.com/your-username/api0" target="_blank" 
    class="text-xl icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
  <a href="https://twitter.com/api0" target="_blank"
    class="text-xl icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-twitter />
  </a>
</div>

<!--
This is the final slide with contact information and social links.
-->

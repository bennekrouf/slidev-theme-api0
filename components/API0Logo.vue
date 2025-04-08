<!-- components/API0Logo.vue -->
<template>
  <div class="api0-logo" :class="{ 'api0-logo-large': large, 'api0-logo-small': small }">
    api<span class="zero" :style="{ transform: hover ? 'rotate(0deg)' : 'rotate(-12deg)' }">0</span>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const props = defineProps({
  large: {
    type: Boolean,
    default: false
  },
  small: {
    type: Boolean,
    default: false
  }
})

const hover = ref(false)

function handleMouseEnter() {
  hover.value = true
}

function handleMouseLeave() {
  hover.value = false
}
</script>

<style scoped>
.api0-logo {
  font-weight: 700;
  font-size: 1.5em;
  letter-spacing: -0.05em;
  display: inline-flex;
  align-items: center;
  cursor: pointer;
}

.api0-logo-large {
  font-size: 2.5em;
}

.api0-logo-small {
  font-size: 1rem;
  opacity: 0.7;
}

.zero {
  display: inline-block;
  font-weight: 900;
  color: var(--color-primary);
  transition: transform 0.3s ease;
  position: relative;
}

.zero::after {
  content: "";
  position: absolute;
  top: 50%;
  left: 50%;
  width: 120%;
  height: 2px;
  background-color: currentColor;
  transform: translate(-50%, -50%) rotate(45deg);
  opacity: 0.8;
}
</style>

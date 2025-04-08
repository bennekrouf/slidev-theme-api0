<!-- layouts/default.vue -->
<template>
  <div class="slidev-layout default" :class="background">
    <div class="content">
      <slot />
    </div>
    
    <footer class="absolute bottom-0 left-0 right-0 p-2 text-xs flex justify-between">
      <div class="flex items-center api0-logo-small">
        <span>api<span class="zero">0</span></span>
      </div>
      <div class="flex items-center gap-2">
        <span>{{ $slidev.nav.currentPage }} / {{ $slidev.nav.total }}</span>
      </div>
    </footer>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { handleBackground } from '../utils/background'

const props = defineProps({
  background: {
    type: String,
    default: ''
  }
})

const background = computed(() => handleBackground(props.background))
</script>

<style>
.slidev-layout.default {
  @apply h-full;
  @apply p-8;
  
  h1 {
    @apply text-4xl;
    @apply font-bold;
    @apply mb-6;
    @apply border-b;
    @apply pb-2;
    @apply border-primary/20;
  }
  
  h2 {
    @apply text-2xl;
    @apply font-semibold;
    @apply mb-4;
    @apply text-primary;
  }

  h3 {
    @apply text-xl;
    @apply font-semibold;
    @apply mb-2;
  }

  p {
    @apply text-lg;
    @apply mb-4;
  }

  ul, ol {
    @apply space-y-2;
    @apply my-4;
  }

  .content {
    @apply h-[calc(100%-20px)];
    @apply overflow-auto;
  }
}

.api0-logo-small {
  font-size: 1rem;
  opacity: 0.7;
}

.api0-logo-small .zero {
  color: var(--color-primary);
  font-weight: 900;
  display: inline-block;
  transform: rotate(-12deg);
  position: relative;
}

.api0-logo-small .zero::after {
  content: "";
  position: absolute;
  top: 50%;
  left: 50%;
  width: 120%;
  height: 1px;
  background-color: currentColor;
  transform: translate(-50%, -50%) rotate(45deg);
  opacity: 0.8;
}
</style>

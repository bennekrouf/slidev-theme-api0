<!-- layouts/two-cols.vue -->
<template>
  <div class="slidev-layout two-cols" :class="background">
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
      <div class="col-left px-2">
        <slot />
      </div>
      <div class="col-right px-2">
        <slot name="right" />
      </div>
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
.slidev-layout.two-cols {
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
}
</style>

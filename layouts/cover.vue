<!-- layouts/cover.vue -->
<template>
  <div class="slidev-layout cover" :class="background">
    <div class="my-auto">
      <slot />
    </div>

    <div class="absolute top-10 right-10 api0-logo">
      api<span class="zero">0</span>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { handleBackground } from '../utils/background'

const props = defineProps({
  background: {
    type: String,
    default: 'gradient'
  }
})

const background = computed(() => handleBackground(props.background))
</script>

<style>
.slidev-layout.cover {
  @apply h-full;
  @apply grid;
  
  h1 {
    @apply text-5xl md:text-6xl;
    @apply font-bold;
    @apply mb-4;
  }
  
  h2 {
    @apply text-3xl;
    @apply font-medium;
    @apply mb-8;
    @apply text-primary;
    @apply opacity-80;
  }

  p {
    @apply text-lg;
    @apply opacity-60;
  }
}
</style>

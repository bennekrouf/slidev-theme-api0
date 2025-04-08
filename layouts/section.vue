<!-- layouts/section.vue -->
<template>
  <div class="slidev-layout section" :class="background">
    <div class="my-auto">
      <slot />
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
.slidev-layout.section {
  @apply h-full;
  @apply grid;
  @apply place-items-center;
  @apply text-center;
  
  h1 {
    @apply text-5xl;
    @apply font-bold;
    @apply mb-4;
    @apply text-primary;
    @apply pb-2;
    @apply border-b-2;
    @apply border-primary/30;
    @apply inline-block;
  }
  
  h2 {
    @apply text-3xl;
    @apply font-medium;
    @apply mt-8;
    @apply opacity-80;
  }

  p {
    @apply text-xl;
    @apply opacity-70;
    @apply max-w-2xl;
    @apply mx-auto;
  }
}
</style>

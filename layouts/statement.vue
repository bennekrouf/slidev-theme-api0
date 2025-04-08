<!-- layouts/statement.vue -->
<template>
  <div class="slidev-layout statement" :class="background">
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
    default: 'solid'
  }
})

const background = computed(() => handleBackground(props.background))
</script>

<style>
.slidev-layout.statement {
  @apply h-full;
  @apply grid;
  @apply place-items-center;
  @apply text-center;
  
  h1 {
    @apply text-4xl md:text-5xl;
    @apply font-bold;
    @apply mb-8;
    @apply leading-tight;
    @apply max-w-3xl;
    @apply mx-auto;
    position: relative;
  }
  
  h1::before {
    content: '"';
    @apply text-primary;
    @apply opacity-40;
    @apply text-8xl;
    @apply absolute;
    @apply -top-16;
    @apply -left-8;
  }
  
  h1::after {
    content: '"';
    @apply text-primary;
    @apply opacity-40;
    @apply text-8xl;
    @apply absolute;
    @apply -bottom-24;
    @apply -right-8;
  }
  
  h2 {
    @apply text-2xl;
    @apply font-medium;
    @apply mt-8;
    @apply opacity-70;
  }

  p {
    @apply text-xl;
    @apply opacity-70;
    @apply max-w-2xl;
    @apply mx-auto;
  }
}
</style>

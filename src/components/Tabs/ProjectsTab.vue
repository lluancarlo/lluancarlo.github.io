<script setup lang="ts">
import { ref } from 'vue'
const msg = ref('BUILDING')
setInterval(() => {
  if (msg.value.length < 15) msg.value += '.'
  else msg.value = 'BUILDING'
}, 500)
</script>

<template>
  <div class="page-box">
    <div class="page-box-item">
      <h2 class="page-title">Projects</h2>
      <p>{{ msg }}</p>
    </div>
  </div>
</template>

<style scoped></style>

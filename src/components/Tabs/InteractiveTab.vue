<script setup lang="ts">
import { ref } from 'vue';

const gameSrc = `${location.origin}/GodotResume`
const showGame = ref(false)
function onButtonClick(): void {
  showGame.value = true
}
</script>

<template>
  <div class="page-box">
    <div class="page-box-item">
      <h2 class="page-title">Interactive Resume</h2>
      <p>This is a minigame I made. You can drive around and get a few information about me</p>
    </div>
    <div class="page-box-item">
      <button class="button" v-if="!showGame" @click="onButtonClick">Load Game</button>
      <iframe v-if="showGame" frameborder="0" allow="fullscreen" :src="gameSrc"></iframe>
    </div>
  </div>
</template>

<style scoped>
iframe {
  width: 100%;
  max-width: 1280px;
  height: auto;
  aspect-ratio: 2;
  border: 2px solid black;
  border-radius: 20px;
}
</style>

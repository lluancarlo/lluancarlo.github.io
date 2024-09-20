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
    <div class="page-box-item">
      <h2 class="page-title">How to Play</h2>
      <table class="game-instructions">
        <tr>
          <th>Key</th>
          <th>Action</th>
        </tr>
        <tr>
          <td>W, ↑</td>
          <td>Accelerate</td>
        </tr>
        <tr>
          <td>S, ↓</td>
          <td>Break / Reverse</td>
        </tr>
        <tr>
          <td>A, ←</td>
          <td>Turn Left</td>
        </tr>
        <tr>
          <td>D, →</td>
          <td>Turn Right</td>
        </tr>
        <tr>
          <td>E</td>
          <td>Interact</td>
        </tr>
        <tr>
          <td>ESC</td>
          <td>Menu</td>
        </tr>
      </table>
    </div>
  </div>
</template>

<style scoped>
iframe {
  width: 100%;
  max-width: 1920px;
  height: auto;
  aspect-ratio: 2;
  border: 2px solid black;
  border-radius: 20px;
}
.game-instructions {
  margin-left: auto;
  margin-right: auto;
}
th, td{
  border: 1px solid black;
  padding: 5px;
}
</style>

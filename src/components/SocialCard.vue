<script setup lang="ts">
const props = defineProps({
  url: String,
  name: String
})
const imgSrc = `src/assets/${props.name}.svg`
</script>

<template>
  <div class="center">
    <div class="social-card">
      <a :href="url" target="_blank">
        <img :src="imgSrc" width="50" />
      </a>
    </div>
  </div>
</template>

<style scoped>
.social-card {
  border-radius: 25%;
  margin: 10px;
}

.social-card:hover {
  background-color: rgba(255, 255, 255, 0.3);
  opacity: 1;
  transition: 0.8s;
}
</style>

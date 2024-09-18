<script setup lang="ts">
const props = defineProps({
  url: String,
  name: String,
  type: { type: String, default: 'svg' }
})
const imgSrc = new URL(`../../assets/images/${props.name}.${props.type}`, import.meta.url).href
</script>

<template>
  <div class="center">
    <div class="social-card">
      <a :href="props.url" target="_blank">
        <img :src="imgSrc" width="50" />
      </a>
    </div>
  </div>
</template>

<style scoped>
.social-card {
  border-radius: 25%;
  margin: 10px;
  transition: all 0.5s ease-in-out;
}

.social-card:hover {
  background-color: #ffffff4d;
  transform: scale(1.2);
}
</style>

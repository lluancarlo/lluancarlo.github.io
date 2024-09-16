<script setup lang="ts">
const props = defineProps({
  name: String,
  label: String
})
const imgSrc = `src/assets/${props.name}.png`
</script>

<template>
  <div class="profile">
    <img class="profile-img" :src="imgSrc" width="300" />
    <p class="profile-label">{{ props.label }}</p>
  </div>
</template>

<style scoped>
.profile-img {
  border-radius: 50%;
  border: 5px #c66c5d solid;
}

.profile-label {
  margin: 0;
  font-size: 50px;
  font-family: fantasy !important;
  color: #c66c5d;
  text-orientation: sideways-right;
}

.profile {
  padding-top: 50px;
  text-align: center;
}
</style>

<script setup lang="ts">
import SocialCard from '@/components/Cards/SocialCard.vue'
</script>

<template>
  <div class="page-box">
    <div class="page-box-item">
      <h2 class="page-title">Contact</h2>
      <div class="social-cards">
        <SocialCard url="https://linkedin.com/in/luancarlosouza/" name="linkedin"></SocialCard>
        <SocialCard url="https://github.com/lluancarlo" name="github"></SocialCard>
        <SocialCard url="https://lluancarlo.itch.io/" name="itch"></SocialCard>
      </div>
    </div>
  </div>
</template>

<style scoped>
.social-cards
{
  padding: 10px;
  display: flex;
  justify-content: center;
}
</style>

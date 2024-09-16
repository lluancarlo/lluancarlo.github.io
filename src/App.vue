<script setup lang="ts">
import './assets/TabsStyle.css'
import ProfileImage from './components/ProfileImage.vue'
import SocialCard from './components/SocialCard.vue'
import { Tabs, Tab } from 'vue3-tabs-component'
</script>

<template>
  <ProfileImage name="me" label="Luan Carlo"></ProfileImage>
  <tabs
    wrapperClass="tab-main"
    navClass="tabs"
    navItemClass="tab"
    navItemActiveClass="tab-active"
    navItemInactiveClass="tab-inactive"
    navItemLinkClass="tab-link"
    navItemLinkActiveClass="tab-link-active"
    navItemLinkInactiveClass="tab-link-inactive"
    panelsWrapperClass="tab-content"
  >
    <tab name="About"> UNDER CONSTRUCTION! </tab>
    <tab name="Projects"> UNDER CONSTRUCTION! </tab>
    <tab name="Contact">
      <div class="social-cards">
        <SocialCard url="https://linkedin.com/in/luancarlosouza/" name="linkedin"></SocialCard>
        <SocialCard url="https://github.com/lluancarlo" name="github"></SocialCard>
        <SocialCard url="https://lluancarlo.itch.io/" name="itch"></SocialCard>
      </div>
    </tab>
  </tabs>
</template>

<style scoped>
.social-cards {
  padding: 10px;
  display: flex;
  justify-content: center;
}
</style>

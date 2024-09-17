<script setup lang="ts">
import './assets/styles/TabsStyle.css'
import ProfileImage from './components/ProfileImage.vue'
import AboutTab from './components/AboutTab.vue'
import ProjectTab from './components/ProjectsTab.vue'
import ContactTab from './components/ContactTab.vue'
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
    <tab name="About">
      <AboutTab></AboutTab>
    </tab>
    <tab name="Projects">
      <ProjectTab></ProjectTab>
    </tab>
    <tab name="Contact">
      <ContactTab></ContactTab>
    </tab>
  </tabs>
</template>

<style scoped></style>

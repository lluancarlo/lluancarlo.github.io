<script setup lang="ts">
// @ts-ignore: To fix error "Could not find a declaration file for module 'MODULE'. 'URL' Implicitly has an 'any' type".
import { Tabs, Tab } from 'vue3-tabs-component'
import ProfileImage from '@/components/Cards/ProfileImageCard.vue'
import AboutTab from '@/components/Tabs/AboutTab.vue'
import ProjectTab from '@/components/Tabs/ProjectsTab.vue'
import ContactTab from '@/components/Tabs/ContactTab.vue'
import '@/assets/styles/TabsStyle.css'
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

<script setup lang="ts">
import ProficiencyEnum from "@/enums/proficiency.enum"
import type { Language } from '@/interfaces/language.interface';
const props = defineProps({
  language: { type: Object as () => Language, required: true },
})
const imgSrc = new URL(`../../assets/images/${props.language.image}`, import.meta.url).href
</script>

<template>
  <div class="card language-card">
  	  <div class="card-line">
      <img class="language-flag" :src="imgSrc"/>
        <h3>{{ props.language.name }}</h3>
    </div>
    <div class="card-line">
      <p>on level</p>
      <h4>{{ ProficiencyEnum[props.language.proficiency] }}</h4>
    </div>
  </div>
</template>

<style scoped>
.language-card
{
  width: 175px;
}
.language-proficiency
{
  color:#c66c5d;
}
.language-flag
{
  height: 50px;
  width: 50px;
  align-self: center;
  border-radius: 50%;
}
</style>

<script setup lang="ts">
import type { PropType } from 'vue'
import ProficiencyEnum from "@/enums/proficiency.enum"
const props = defineProps({
  name: { type: String, required: true },
  imgSrc: { type: String, required: true },
  proficiency: { type: Number as PropType<ProficiencyEnum>, required: true },
})
const imgSrc = new URL(`../../assets/images/${props.imgSrc}`, import.meta.url).href
</script>

<template>
  <div class="card language-card">
  	  <div class="card-line">
      <img class="language-flag" :src="imgSrc"/>
        <h3>{{ props.name }}</h3>
    </div>
    <div class="card-line">
      <p>on level</p>
      <h4>{{ ProficiencyEnum[props.proficiency] }}</h4>
    </div>
  </div>
</template>

<style scoped>
.language-card {
  width: 175px;
}
.language-proficiency {
  color:#c66c5d;
}
.language-flag {
  height: 50px;
  width: 50px;
  align-self: center;
  border-radius: 50%;
}
</style>

<script setup lang="ts">
import type { Company } from '@/interfaces/company.interface'
const props = defineProps({
  company: { type: Object as () => Company, required: true }
})
function formattedDate(date: Date): string {
  return date.toLocaleString('en-us', { month: 'short', year: 'numeric' })
}
function dateIsToday(date: Date): Boolean {
  let today = new Date()
  return today.getDate() === date.getDate() && today.getMonth() === date.getMonth()
}
</script>

<template>
  <div class="item">
    <a :href="props.company.link" target="_blank" class="company-title">
      <img :src="props.company.logo" :alt="props.company.name" />
      <h3>{{ props.company.name }}</h3>
    </a>
    <div class="company-position">
      <h4>at</h4>
      <p>{{ props.company.location }}</p>
    </div>
    <div class="company-position">
      <h4>as</h4>
      <p>{{ props.company.position }}</p>
    </div>
    <div class="company-position">
      <h4>from</h4>
      <p>
        {{ formattedDate(props.company.startDate) }} to
        {{
          dateIsToday(props.company.endDate) ? 'Present' : formattedDate(props.company.startDate)
        }}
      </p>
    </div>
    <div class="company-position">
      <p>{{ props.company.description }}</p>
    </div>
  </div>
</template>

<style scoped>
.item {
  margin: 0 !important;
  padding: 10px;
  width: 300px;
  background-color: #81887d;
  border: 2px solid #c66c5d;
  border-radius: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  transition: all 0.5s ease-in-out;
}
.item:hover {
  background-color: #f4d99c90;
  transform: scale(1.05);
}
.company-position {
  display: inline-flex;
  gap: 0.5em;
  align-items: center;
}
.company-position h4 {
  color: #000;
  margin: 0;
}
.company-position p {
  color: #000;
  margin: 0;
}
.company-title {
  display: flex;
  align-items: center;
  gap: 1em;
  color: #000;
  text-decoration: none !important;
}
.company-title img {
  height: 50px;
  width: 50px;
  align-self: center;
  border-radius: 50%;
}
</style>

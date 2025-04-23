<script setup lang="ts">
import type { Company } from '@/interfaces/company.interface'
const props = defineProps({
  company: { type: Object as () => Company, required: true }
})

function formattedDate(date: Date): string
{
  return date.toLocaleString('en-us', { month: 'short', year: 'numeric' })
}

function IsDateToday(date: Date): Boolean
{
  let today = new Date()
  return today.getDate() === date.getDate() && today.getMonth() === date.getMonth()
}

function calculatePeriodBetweenDates(startDate: Date, endDate: Date): String
{
  let yearsDifference = endDate.getFullYear() - startDate.getFullYear();
  let monthsDifference = endDate.getMonth() - startDate.getMonth();

  if (monthsDifference < 0)
  {
      yearsDifference--;
      monthsDifference += 12;
  }
  
  let result = ""
  if (yearsDifference > 0)
    result = `${yearsDifference} year${yearsDifference > 1 ? 's' : ''}`
  if (monthsDifference > 0)
  {
    if (result.length > 0)
      result += ' and '
    result += `${monthsDifference} month${monthsDifference > 1 ? 's' : ''}`
  }
  
  return result;
}

const imgSrc = new URL(`../../assets/images/${props.company.logo}`, import.meta.url).href
</script>

<template>
  <div class="card">
    <div class="card-line">
      <a :href="props.company.link" target="_blank" class="company-title">
        <img :src="imgSrc" :alt="props.company.name" />
        <h3>{{ props.company.name }}</h3>
      </a>
  </div>
    <div class="card-line">
      <h4>at</h4>
      <p>{{ props.company.location }}</p>
    </div>
    <div class="card-line">
      <h4>as</h4>
      <p>{{ props.company.position }}</p>
    </div>
    <div class="card-line">
      <h4>from</h4>
      <p>
        {{ formattedDate(props.company.startDate) }} to
        {{
          IsDateToday(props.company.endDate) ? 'Present' : formattedDate(props.company.endDate)
        }}
      </p>
    </div>
    <div class="card-line">
      <p>
        {{ calculatePeriodBetweenDates(props.company.startDate, props.company.endDate) }}
      </p>
    </div>
    <div class="card-line">
      <p>{{ props.company.description }}</p>
    </div>
  </div>
</template>

<style scoped>
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

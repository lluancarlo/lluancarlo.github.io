<script setup lang="ts">
import CompanyCard from '@/components/Cards/CompanyCard.vue'
import LanguageCard from '../Cards/LanguageCard.vue';
import LanguageProficiency from '@/enums/proficiency.enum';
import type { Company } from '@/interfaces/company.interface'
import type { Language } from '@/interfaces/language.interface';

const experiencesList: Company[] = [
  {
    link: 'https://consinco.com.br/',
    logo: 'totvs.jpg',
    name: 'Consinco SA By Totvs',
    position: 'Full-Stack Developer',
    startDate: new Date(2018, 3, 1),
    endDate: new Date(2020, 9, 1),
    location: 'Ribeirão Preto, Brazil',
    description: ''
  },
  {
    link: 'https://www.mag-it.com.br/en',
    logo: 'magit.jpg',
    name: 'Magit IT Partner',
    position: 'Full-Stack Developer',
    startDate: new Date(2020, 9, 1),
    endDate: new Date(2022, 6, 1),
    location: 'Ribeirão Preto, Brazil',
    description: ''
  },
  {
    link: 'https://topgaming.dev/',
    logo: 'topgaming.jpg',
    name: 'Top Gaming Newtork Ltd',
    position: 'Game Developer',
    startDate: new Date(2022, 6, 1),
    endDate: new Date(2023, 9, 1),
    location: 'Gzira, Malta',
    description: ''
  },
  {
    link: 'https://deltaengine.net/',
    logo: 'deltaengine.png',
    name: 'Delta Engine GmbH',
    position: 'Game Developer',
    startDate: new Date(2023, 9, 1),
    endDate: new Date(2024, 3, 1),
    location: 'Hannover, Germany · Remote',
    description: ''
  },
  {
    link: 'https://amilon.com/',
    logo: 'amilon.jpg',
    name: 'Amilon',
    position: 'Full-Stack Developer',
    startDate: new Date(2024, 8, 1),
    endDate: new Date(),
    location: 'Milan, Italy · Remote',
    description: ''
  }
]
experiencesList.reverse()
const languageList: Language[] = [
{
  name: "Portuguese",
  image: "flag-br.svg",
  proficiency: LanguageProficiency.Native
},
{
  name: "Italian",
  image: "flag-it.svg",
  proficiency: LanguageProficiency.C1
},
{
  name: "English",
  image: "flag-us.svg",
  proficiency: LanguageProficiency.C1
}
]
languageList.reverse()
</script>

<template>
  <div class="page-box">
    <div class="page-box-item">
      <h2 class="page-title">About me</h2>
      <p>
        I’m Brazilian with European citizenship (thanks grandma!), living in Italy. I have
        professional experience as a full-stack developer, with front-end, back-end and database
        Furthermore, I have been working as a game developer and personally I have a strong passion
        for it!
      </p>
    </div>
    <div class="page-box-item">
      <h2 class="page-title">Languages</h2>
      <div class="about-box">
        <LanguageCard v-for="(lang, i) in languageList" :key="i" :language="lang"></LanguageCard>
      </div>
    </div>
    <div class="page-box-item">
      <h2 class="page-title">Experiences</h2>
      <div class="about-box">
        <CompanyCard v-for="(exp, i) in experiencesList" :key="i" :company="exp"></CompanyCard>
      </div>
    </div>
  </div>
</template>

<style scoped>
.about-box
{
  margin-top: 10px;
  display: flex;
  flex-direction: row;
  justify-content: center;
  flex-wrap: wrap;
  gap: 1em;
}
</style>

<script setup lang="ts">
import CompanyCard from '@/components/Cards/CompanyCard.vue'
import type { Company } from '@/interfaces/company.interface'

const experiencesList: Company[] = [
  {
    link: 'https://consinco.com.br/',
    logo: 'https://media.licdn.com/dms/image/v2/C4D0BAQENYJigrmeXeg/company-logo_100_100/company-logo_100_100/0/1631557956575/totvs_logo?e=1734566400&v=beta&t=6rNhAjZqZxdXSfXWf_KyKZ1u_aHuhYHDerinqCd-Jp4',
    name: 'Consinco SA By Totvs',
    position: 'Full-Stack Developer',
    startDate: new Date(2018, 3, 1),
    endDate: new Date(2020, 9, 1),
    location: 'Ribeirão Preto, Brazil',
    description: ''
  },
  {
    link: 'https://www.mag-it.com.br/en',
    logo: 'https://media.licdn.com/dms/image/v2/C4D0BAQF2u_uEAikODA/company-logo_100_100/company-logo_100_100/0/1649422783297/mag_it_partner_logo?e=1734566400&v=beta&t=WWhJ_OWezmClg2vwfsxbJhBs8xEt6VhmHDQUnuhW4d8',
    name: 'Magit IT Partner',
    position: 'Full-Stack Developer',
    startDate: new Date(2020, 9, 1),
    endDate: new Date(2022, 6, 1),
    location: 'Ribeirão Preto, Brazil',
    description: ''
  },
  {
    link: 'https://topgaming.dev/',
    logo: 'https://media.licdn.com/dms/image/v2/D4D0BAQH-Daee3urzMQ/company-logo_100_100/company-logo_100_100/0/1693858592934?e=1734566400&v=beta&t=rpUAACbWFxM-2yk678dXEwEGsNKEJ3w51ePMswTo9hA',
    name: 'Top Gaming Newtork Ltd',
    position: 'Game Developer',
    startDate: new Date(2022, 6, 1),
    endDate: new Date(2023, 9, 1),
    location: 'Gzira, Malta',
    description: ''
  },
  {
    link: 'https://deltaengine.net/',
    logo: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fassets.goodfirms.co%2Fsoftware%2Fgeneral%2Fdeltaengine.png&f=1&nofb=1&ipt=3ce7ca4c766f23773d675815b8f9a317d26d9679b8e0fe809d7a1e25e9bbcd19&ipo=images',
    name: 'Delta Engine GmbH',
    position: 'Game Developer',
    startDate: new Date(2023, 9, 1),
    endDate: new Date(2024, 3, 1),
    location: 'Hannover, Germany · Remote',
    description: ''
  },
  {
    link: 'https://amilon.com/',
    logo: 'https://media.licdn.com/dms/image/v2/C4D0BAQFSoPZ2R67ggg/company-logo_100_100/company-logo_100_100/0/1673534788201/amilon_srl_logo?e=1734566400&v=beta&t=YODgiFrn8YHU0VuUR3oDKbpgKvlEt4oO_24LSNWd1qc',
    name: 'Amilon',
    position: 'Full-Stack Developer',
    startDate: new Date(2024, 8, 1),
    endDate: new Date(),
    location: 'Milan, Italy · Remote',
    description: ''
  }
]
experiencesList.reverse()
</script>

<template>
  <div class="page-box">
    <div class="page-box-item about-me">
      <h2>About me</h2>
      <p>
        I’m Brazilian with European citizenship (thanks grandma!), living in Italy. I have
        professional experience as a full-stack developer, with front-end, back-end and database
        Furthermore, I have been working as a game developer and personally I have a strong passion
        for it!
      </p>
    </div>
    <div class="page-box-item about-experiences">
      <h2>Experiences</h2>
      <div class="about-experiences-box">
        <CompanyCard v-for="(exp, i) in experiencesList" :key="i" :company="exp"></CompanyCard>
      </div>
    </div>
  </div>
</template>

<style scoped>
.about-me h2 {
  text-align: center;
}
.about-experiences {
  margin-bottom: 0 !important;
}

.about-experiences h2 {
  text-align: center;
}
.about-experiences-box {
  margin-top: 10px;
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  flex-wrap: wrap;
  gap: 1em;
}
</style>

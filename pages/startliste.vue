<template>
  <div class="px-4 sm:px-6 lg:px-8 py-8 min-h-screen bg-race-green">
    <div class="max-w-6xl mx-auto">
      <div class="sm:flex sm:items-center">
        <div class="sm:flex-auto">
          <h1 class="font-display text-race-gray antialiased text-5xl md:text-6xl leading-tight md:leading-[5rem] mb-4 md:mb-8">
            Startliste</h1>
        </div>
      </div>
      <div class="mt-8 flow-root">
        <div class="-mx-4 -my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
          <div class="inline-block min-w-full py-2 align-middle sm:px-6 lg:px-8">
            <div class="overflow-hidden shadow ring-1 ring-black ring-opacity-5 sm:rounded-lg">
              <table class="min-w-full divide-y divide-gray-300">
                <thead class="bg-gray-50 bg-opacity-90">
                <tr>
                  <th scope="col"
                      class="whitespace-nowrap py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 sm:pl-6">
                    Name
                  </th>
                  <th scope="col" class="whitespace-nowrap px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                    39km
                  </th>
                  <th scope="col" class="whitespace-nowrap px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                    97km
                  </th>
                  <th scope="col" class="whitespace-nowrap px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                    Startgeld gezahlt
                  </th>
                </tr>
                </thead>
                <tbody class="divide-y divide-gray-200 bg-white bg-opacity-90">
                <tr v-for="person in sortedPeople" :key="person['Name']">
                  <td class="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">{{
                      person['Name']
                    }}
                  </td>
                  <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                    <svg v-if="person['39km']" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                         stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                      <path stroke-linecap="round" stroke-linejoin="round"
                            d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/>
                    </svg>
                  </td>
                  <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                    <svg v-if="person['97km']" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                         stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                      <path stroke-linecap="round" stroke-linejoin="round"
                            d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/>
                    </svg>
                  </td>
                  <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                    <svg v-if="person['Startgeld gezahlt']" xmlns="http://www.w3.org/2000/svg" fill="none"
                         viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                      <path stroke-linecap="round" stroke-linejoin="round"
                            d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/>
                    </svg>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <footer class="py-16 bg-race-blue overflow-hidden">
    <ul class="flex justify-center space-x-4 font-display text-xl text-race-gray mb-16">
      <li><a class="hover:text-pink-400" href="/impressum">Impressum</a></li>
      <li><a class="hover:text-pink-400" href="/datenschutz">Datenschutz</a></li>
      <li><a class="hover:text-pink-400" href="/startliste">Startliste</a></li>
    </ul>

    <div class="flex flex-wrap text-race-gray justify-center">
      <p class="w-full text-center">Made by</p>
      <a href="https://webhub.de" class="hover:text-pink-400" target="_blank">
        <svg class="fill-current" width="140" height="29" viewBox="0 0 140 29" xmlns="http://www.w3.org/2000/svg">
          <path
              d="M5.28979 28.5259L0 8.33651H4.19953L6.82424 18.7275C7.01268 19.5177 7.14728 20.1762 7.22804 20.703C7.38956 19.7548 7.5107 19.0831 7.59146 18.688L10.0546 9.37624H13.6081L16.0713 18.7275C16.2059 19.149 16.3405 19.8206 16.4751 20.7425C16.5558 20.1894 16.6904 19.5177 16.8789 18.7275L19.4228 8.33651H23.6627L18.3326 28.5259H14.7791L12.3967 18.4114C12.2352 17.7793 12.0467 16.8574 11.8314 15.6458C11.7775 15.9882 11.6564 16.5282 11.4679 17.2657C11.3064 17.9768 11.2122 18.3588 11.1853 18.4114L8.924 28.5259H5.28979Z"></path>
          <path
              d="M44.9112 17.4237C44.9112 18.5827 44.8573 19.5045 44.7497 20.1894H30.6974C30.9935 21.6644 31.5858 22.8365 32.4741 23.7057C33.3894 24.5486 34.5604 24.97 35.9872 24.97C37.7908 24.97 39.3118 24.3115 40.5501 22.9946L43.3364 25.8787C41.3981 27.9596 38.9349 29 35.9468 29C32.9048 29 30.4955 28.0386 28.7188 26.1158C26.969 24.193 26.0941 21.6249 26.0941 18.4114C26.0941 15.1453 26.9824 12.5772 28.7591 10.7071C30.5359 8.81063 32.9318 7.8624 35.9468 7.8624C38.585 7.8624 40.7386 8.67893 42.4076 10.312C44.0767 11.9187 44.9112 14.2893 44.9112 17.4237ZM30.657 16.3174H40.3482C40.2136 14.8424 39.7291 13.7361 38.8946 12.9986C38.0869 12.2348 37.1044 11.8529 35.9468 11.8529C34.4662 11.8529 33.2683 12.248 32.353 13.0381C31.4646 13.8283 30.8993 14.9214 30.657 16.3174Z"></path>
          <path
              d="M60.1834 29C57.9221 29 56.1723 28.3283 54.934 26.985V28.5259H50.2903V2.09401L54.934 0V9.91689C55.4993 9.31108 56.2665 8.8238 57.2356 8.45504C58.2317 8.05995 59.2412 7.8624 60.2641 7.8624C62.8485 7.8624 64.9482 8.81063 66.5634 10.7071C68.1786 12.6035 68.9862 15.1717 68.9862 18.4114C68.9862 21.7829 68.2056 24.3906 66.6442 26.2343C65.0828 28.0781 62.9292 29 60.1834 29ZM59.4565 24.654C61.0448 24.654 62.2428 24.114 63.0504 23.0341C63.8849 21.9278 64.3022 20.3869 64.3022 18.4114C64.3022 16.3833 63.8849 14.8424 63.0504 13.7888C62.2428 12.7089 61.0448 12.1689 59.4565 12.1689C58.4336 12.1689 57.5183 12.3797 56.7107 12.8011C55.93 13.1962 55.3378 13.6571 54.934 14.1839V22.6785C55.93 23.9955 57.4375 24.654 59.4565 24.654Z"></path>
          <path
              d="M73.8 28.5259V2.09401L78.4437 0V10.312C79.7897 8.67893 81.7414 7.8624 84.2988 7.8624C86.5601 7.8624 88.3907 8.53406 89.7905 9.87739C91.2173 11.1944 91.9307 13.3015 91.9307 16.1989V28.5259H87.2869V17.1471C87.2869 15.4087 86.8831 14.1444 86.0755 13.3542C85.2949 12.564 84.2719 12.1689 83.0067 12.1689C81.6607 12.1689 80.5569 12.5509 79.6955 13.3147C78.861 14.0786 78.4437 15.3297 78.4437 17.0681V28.5259H73.8Z"></path>
          <path
              d="M105.143 29C102.855 29 100.998 28.3415 99.571 27.0245C98.1712 25.6812 97.4712 23.5477 97.4712 20.624V8.33651H102.115V19.6362C102.115 22.9814 103.528 24.654 106.355 24.654C109.397 24.654 110.918 23.0077 110.918 19.7153V8.33651H115.562V28.5259H110.918V26.5899C109.599 28.1966 107.674 29 105.143 29Z"></path>
          <path
              d="M131.197 29C128.936 29 127.186 28.3283 125.948 26.985V28.5259H121.304V2.09401L125.948 0V9.91689C126.513 9.31108 127.28 8.8238 128.249 8.45504C129.245 8.05995 130.255 7.8624 131.278 7.8624C133.862 7.8624 135.962 8.81063 137.577 10.7071C139.192 12.6035 140 15.1717 140 18.4114C140 21.7829 139.219 24.3906 137.658 26.2343C136.097 28.0781 133.943 29 131.197 29ZM130.47 24.654C132.059 24.654 133.257 24.114 134.064 23.0341C134.899 21.9278 135.316 20.3869 135.316 18.4114C135.316 16.3833 134.899 14.8424 134.064 13.7888C133.257 12.7089 132.059 12.1689 130.47 12.1689C129.447 12.1689 128.532 12.3797 127.724 12.8011C126.944 13.1962 126.352 13.6571 125.948 14.1839V22.6785C126.944 23.9955 128.451 24.654 130.47 24.654Z"></path>
        </svg>
      </a>
      <p class="w-full text-6xl sm:text-8xl rotate-[4deg] font-display text-center mt-16 mb-6 text-[#00b5ac]">lass <br>graveln!
      </p>
    </div>

  </footer>
</template>

<script setup>
const sortedPeople = computed(() => {
  return people.sort((a, b) => {
    if (a['Name'] < b['Name']) {
      return -1
    }
    if (a['Name'] > b['Name']) {
      return 1
    }
    return 0
  })
});

const people =
    [
      {
        "Name": "Benjamin Götz",
        "39km": false,
        "97km": true,
        "Startgeld gezahlt": true
      },
      {
        "Name": "Helge Sommerer",
        "39km": false,
        "97km": true,
        "Startgeld gezahlt": true
      },
      {
        "Name": "Oliver Arndt",
        "39km": false,
        "97km": true,
        "Startgeld gezahlt": true
      },
      {
        "Name": "Adrian Karnitzki",
        "39km": false,
        "97km": true,
        "Startgeld gezahlt": false
      },
      {
        "Name": "Vythas Huth",
        "39km": true,
        "97km": false,
        "Startgeld gezahlt": false
      },
      {
        "Name": "Ivo Diedrich",
        "39km": false,
        "97km": true,
        "Startgeld gezahlt": true
      },
      {
        "Name": "Thomas Heller",
        "39km": true,
        "97km": false,
        "Startgeld gezahlt": false
      },
      {
        "Name": "Marco Tabbert",
        "39km": false,
        "97km": true,
        "Startgeld gezahlt": true
      },
      {
        "Name": "Christian Leuteritz",
        "39km": false,
        "97km": true,
        "Startgeld gezahlt": false
      },
      {
        "Name": "Uli Kiele",
        "39km": true,
        "97km": false,
        "Startgeld gezahlt": false
      },
      {
        "Name": "Johannes Ahrndt",
        "39km": true,
        "97km": false,
        "Startgeld gezahlt": true
      },
      {
        "Name": "Juliane Borths",
        "39km": false,
        "97km": true,
        "Startgeld gezahlt": false
      },
      {
        "Name": "Dirk Holz",
        "39km": false,
        "97km": true,
        "Startgeld gezahlt": true
      }
    ]
</script>

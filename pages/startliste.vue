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
                    39km ({{ peopleCount39 }}/{{ peopleCount }})
                  </th>
                  <th scope="col" class="whitespace-nowrap px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                    97km ({{ peopleCount97 }}/{{ peopleCount }})
                  </th>
                  <th scope="col" class="whitespace-nowrap px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                    Startgeld gezahlt ({{ peopleCountPaid }}/{{ peopleCount }})
                  </th>
                </tr>
                </thead>
                <tbody class="divide-y divide-gray-200 bg-white bg-opacity-90">
                <tr v-for="person in sortedPeople" :key="person['Name']">
                  <td class="whitespace-nowrap py-3 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">{{
                      person['Name']
                    }}
                  </td>
                  <td class="whitespace-nowrap px-3 py-3 text-sm text-gray-500">
                    <svg v-if="person['39km']" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                         stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                      <path stroke-linecap="round" stroke-linejoin="round"
                            d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/>
                    </svg>
                  </td>
                  <td class="whitespace-nowrap px-3 py-3 text-sm text-gray-500">
                    <svg v-if="person['97km']" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                         stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                      <path stroke-linecap="round" stroke-linejoin="round"
                            d="M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/>
                    </svg>
                  </td>
                  <td class="whitespace-nowrap px-3 py-3 text-sm text-gray-500">
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

const peopleCount97 = computed(() => {
  return people.filter(person => person['97km']).length
});

const peopleCount39 = computed(() => {
  return people.filter(person => person['39km']).length
});

const peopleCount = computed(() => {
  return people.length;
});

const peopleCountPaid = computed(() => {
  return people.filter(person => person['Startgeld gezahlt']).length
});

const people = [
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
    "Startgeld gezahlt": true
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
    "Startgeld gezahlt": true
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
    "Startgeld gezahlt": true
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
    "Startgeld gezahlt": true
  },
  {
    "Name": "Dirk Holz",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Dennis Galle",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": false
  },
  {
    "Name": "Johannes Lamprecht",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Philipp Taube",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Andre Hagemeister",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Stefan Oelschlägel",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Marcel Rarrasch",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Katrin Rarrasch",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Danny Müller-Nimke",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Matthias Sellnow",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Antonia Keidel",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Tom Pietsch",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": false
  },
  {
    "Name": "Uwe Horn",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Sandro Slomski",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Dirk Austinat",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Steven Pabst",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Tin Brandt",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Jacob Struß",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Thomas Hörster",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Hannes Kaufmann",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Arno Locke",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": false
  },
  {
    "Name": "Steffen Skelte",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Christoph Neimög",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "David Vogel",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": false
  },
  {
    "Name": "Ringo Kuchinke",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Arne Hoppe",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Daniel Glienke",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Martin Stephan",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Samir Kesou",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": false
  },
  {
    "Name": "Phillip Kaufmann",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": false
  },
  {
    "Name": "Volker Mosert",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Robert Karrasch-Wesselhöft",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Simon Broß",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": false
  },
  {
    "Name": "Henry Hilse",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Hendrik Klein",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Lukas Borths",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Marko Weber",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Sandrine Weber",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Dennis Fortkamp",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": false
  },
  {
    "Name": "Steffen Heinz",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Endric Schwar",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Jacob Fiedler",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Amadeus Heyn",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Maria Wuntke",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Max Schuhmacher",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Alexander Knuths",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Peter Wilde",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Malte Seeler",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": false
  },
  {
    "Name": "Johannes Schröder",
    "39km": true,
    "97km": false,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Marcus Kalle",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Johannes Friedländer",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": true
  },
  {
    "Name": "Yvonne Wildt",
    "39km": false,
    "97km": true,
    "Startgeld gezahlt": true
  }
];
</script>

<template>
  <div class="min-h-screen w-full pt-4 pb-16">
    <div class="container mx-auto px-4 max-w-5xl">

      <header class="">
        <a class="hover:text-pink-400 font-display text-xl" href="/">
          &lt;&lt; zur startseite
        </a>
        <h1 class="font-display text-left uppercase text-6xl md:text-7xl leading-tight md:leading-[7rem]">
          impressum
        </h1>
      </header>

      <main class="flex flex-col gap-8 mt-10">
        <section>
          <h2 class="font-display text-left  text-2xl md:text-3xl">
            Angaben gemäß § 5 TMG
          </h2>

          <h3 class="font-display text-left  text-xl md:text-2xl mt-8">
            Anschrift
          </h3>
          <p class="text-xl font-sans mt-4 leading-normal">
            <strong>Dirk Holz</strong><br>
            Fritz Reuter Str. 19<br>
            18311 Ribnitz-Damgarten<br>
            Tel: <a href="tel:0174-9511395">0174-9511395</a>
          </p>

          <p class="text-xl font-sans mt-4 leading-normal">
            Dirk Holz – X-track85@web.de
          </p>

          <p class="text-xl font-sans mt-4 leading-normal">
            <strong>Inhaltlich verantwortlich gemäß § 18. MStV: Dirk Holz</strong>
          </p>
        </section>

        <section>
          <h2 class="font-display text-left  text-2xl md:text-3xl mt-6">
            Online-Streitbeilegung
          </h2>
          <p class="text-xl font-sans mt-4 leading-normal">
            Die Europäische Kommission stellt unter <a target="_blank" class="hover:text-pink-400" href="https://ec.europa.eu/consumers/odr/">https://ec.europa.eu/consumers...</a> eine Plattform zur Online-Streitbeilegung bereit, die Verbraucher für die Beilegung einer Streitigkeit nutzen können und auf der weitere Informationen zum Thema Streitschlichtung zu finden sind.
          </p>
        </section>

        <section>
          <h2 class="font-display text-left  text-2xl md:text-3xl mt-6">
            Außergerichtliche Streitbeilegung
          </h2>
          <p class="text-xl font-sans mt-4 leading-normal">
            Wir sind weder verpflichtet noch dazu bereit, im Falle einer Streitigkeit mit einem Verbraucher an einem Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle teilzunehmen.
          </p>
        </section>
      </main>

    </div >
  </div>
</template>

<script setup>
useHead({
  title: 'Impressum',
  meta: [
    {
      name: 'robots',
      content: 'none'
    }
  ]
})
</script>

<template>
  <div class="bg-blue-200 min-h-screen w-full pt-4 pb-10">
    <div class="container mx-auto px-4 max-w-5xl">

      <header class="">
        <h1 class="font-display text-left italic uppercase text-6xl md:text-7xl leading-tight md:leading-[7rem]">
          impressum
        </h1>
      </header>

      <main class="flex flex-col gap-8 mt-10">
        <section>
          <h2 class="font-display text-left italic text-2xl md:text-3xl">
            Angaben gemäß § 5 TMG
          </h2>

          <h3 class="font-display text-left italic text-xl md:text-2xl mt-8">
            Büroanschrift
          </h3>
          <p class="text-xl font-sans mt-4 leading-normal">
            <strong>Firmenname</strong><br>
            Straße Hausnummer<br>
            PLZ Ort<br>
            Tel: <a href="tel:"></a>
          </p>

          <h3 class="font-display text-left italic text-xl md:text-2xl mt-8">
            Firmenanschrift
          </h3>
          <p class="text-xl font-sans mt-4 leading-normal">
            <strong>Firmenname</strong><br>
            Straße Hausnummer<br>
            PLZ Ort
          </p>

          <p class="text-xl font-sans mt-4 leading-normal">
            <strong>Geschäftsführer</strong><br>
            Vorname Nachname – E-Mail-Adresse
          </p>

          <p class="text-xl font-sans mt-4 leading-normal">
            <strong>Amtsgericht Rostock,</strong>
          </p>

          <p class="text-xl font-sans mt-4 leading-normal">
            <strong>USt.-IdNr.:</strong>
          </p>

          <p class="text-xl font-sans mt-4 leading-normal">
            <strong>Inhaltlich verantwortlich gemäß § 18. MStV:</strong>
          </p>
        </section>

        <section>
          <h2 class="font-display text-left italic text-2xl md:text-3xl mt-6">
            Online-Streitbeilegung
          </h2>
          <p class="text-xl font-sans mt-4 leading-normal">
            Die Europäische Kommission stellt unter <a target="_blank" class="hover:text-pink-400" href="https://ec.europa.eu/consumers/odr/">https://ec.europa.eu/consumers...</a> eine Plattform zur Online-Streitbeilegung bereit, die Verbraucher für die Beilegung einer Streitigkeit nutzen können und auf der weitere Informationen zum Thema Streitschlichtung zu finden sind.
          </p>
        </section>

        <section>
          <h2 class="font-display text-left italic text-2xl md:text-3xl mt-6">
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

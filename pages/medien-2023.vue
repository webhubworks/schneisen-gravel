<template>
    <div class="px-4 sm:px-6 lg:px-8 py-8 min-h-screen bg-race-green">

      <div class="max-w-[64rem] mx-auto">

        <a class="hover:text-pink-400 font-display text-xl mb-8 inline-block" href="/">
          &lt;&lt; zur startseite
        </a>

        <h1 class="font-display text-race-gray antialiased text-5xl md:text-6xl leading-tight md:leading-[5rem] mb-4 md:mb-8">
          Videos & Bilder 2023</h1>

        <p class="text-lg">Vielen Dank an die Foto- und Videografen!</p>

        <h2 class="font-display text-race-gray antialiased text-3xl md:text-4xl leading-tight md:leading-[5rem] mb-4 md:mb-8">
          Videos</h2>

        <div class="bg-white p-2 max-w-[266px] min-h-[16rem] mb-4">
          <video controls width="250" data-creator="Stefan Dumke">
            <source src="/gallery/2023/2023-09-03_1693723629557.mp4" type="video/mp4" />
            Download the
            <a href="/gallery/2023/2023-09-03_1693723629557.mp4">MP4</a>
            video.
          </video>
        </div>

        <h2 class="font-display text-race-gray antialiased text-3xl md:text-4xl leading-tight md:leading-[5rem] mb-4 md:mb-8">
          Bilder</h2>

        <div class="bg-white p-2">
          <div data-gallery class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-2">
            <a data-cropped="true" v-for="image in transformedImages" :data-pswp-src="image.transformation.url"
               :data-pswp-width="image.transformation.width"
               :data-pswp-height="image.transformation.height">
              <NuxtImg loading="lazy" class="object-cover h-[200px]" :src="image.filePath" width="250"/>
            </a>
          </div>
        </div>
      </div>
    </div>
</template>

<script setup>
import PhotoSwipeLightbox from 'photoswipe/lightbox';
import 'photoswipe/style.css';

const img = useImage()

onMounted(() => {
  const lightbox = new PhotoSwipeLightbox({
    gallery: '[data-gallery]',
    children: 'a',
    pswpModule: () => import('photoswipe')
  });
  lightbox.init();
  console.log(transformedImages.value);
})

const transformedImages = computed(() => {
  return sortedImages.value.map(image => ({
    ...image,
    transformation: {
      url: img(image.filePath, {height: 1000}),
      height: 1000,
      width: parseInt(image.ogWidth) / parseInt(image.ogHeight) * 1000
    }
  }))
})

const sortedImages = computed(() => {
  return images.sort((a, b) => {
    return new Date(a.creationDate) - new Date(b.creationDate);
  })
})

const images = [
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-24.jpg",
    "extension": "jpg",
    "ogWidth": "3818",
    "ogHeight": "3054",
    "creationDate": "2023-09-02T11:40:15"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-30.jpg",
    "extension": "jpg",
    "ogWidth": "3536",
    "ogHeight": "2829",
    "creationDate": "2023-09-02T11:54:38"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-18.jpg",
    "extension": "jpg",
    "ogWidth": "2136",
    "ogHeight": "1709",
    "creationDate": "2023-09-02T11:27:57"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-118.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:14:49"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-130.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:17:21"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-124.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:16:34"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-125.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:17:01"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-131.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:17:34"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-119.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:15:00"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-19.jpg",
    "extension": "jpg",
    "ogWidth": "3562",
    "ogHeight": "2850",
    "creationDate": "2023-09-02T11:28:38"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-31.jpg",
    "extension": "jpg",
    "ogWidth": "3648",
    "ogHeight": "2918",
    "creationDate": "2023-09-02T11:59:17"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-25.jpg",
    "extension": "jpg",
    "ogWidth": "4106",
    "ogHeight": "3285",
    "creationDate": "2023-09-02T11:47:07"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-33.jpg",
    "extension": "jpg",
    "ogWidth": "2773",
    "ogHeight": "2218",
    "creationDate": "2023-09-02T12:00:27"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-27.jpg",
    "extension": "jpg",
    "ogWidth": "5000",
    "ogHeight": "4000",
    "creationDate": "2023-09-02T11:49:25"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-127.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:17:05"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-133.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:18:16"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-132.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:17:43"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-126.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:17:03"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-26.jpg",
    "extension": "jpg",
    "ogWidth": "6000",
    "ogHeight": "4000",
    "creationDate": "2023-09-02T11:49:23"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-32.jpg",
    "extension": "jpg",
    "ogWidth": "3855",
    "ogHeight": "3084",
    "creationDate": "2023-09-02T11:59:18"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-36.jpg",
    "extension": "jpg",
    "ogWidth": "3294",
    "ogHeight": "2635",
    "creationDate": "2023-09-02T12:05:10"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-22.jpg",
    "extension": "jpg",
    "ogWidth": "4299",
    "ogHeight": "3439",
    "creationDate": "2023-09-02T11:37:01"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-122.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:15:18"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-136.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:19:33"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-137.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:19:41"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-123.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:16:26"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-23.jpg",
    "extension": "jpg",
    "ogWidth": "6000",
    "ogHeight": "4000",
    "creationDate": "2023-09-02T11:37:47"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-37.jpg",
    "extension": "jpg",
    "ogWidth": "3724",
    "ogHeight": "2979",
    "creationDate": "2023-09-02T12:05:20"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-21.jpg",
    "extension": "jpg",
    "ogWidth": "2716",
    "ogHeight": "2173",
    "creationDate": "2023-09-02T11:30:10"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-35.jpg",
    "extension": "jpg",
    "ogWidth": "3040",
    "ogHeight": "2432",
    "creationDate": "2023-09-02T12:04:16"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-135.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:19:32"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-121.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:15:15"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-109.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:03:49"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-108.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:03:17"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-120.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:15:12"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-134.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:18:30"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-34.jpg",
    "extension": "jpg",
    "ogWidth": "3326",
    "ogHeight": "2661",
    "creationDate": "2023-09-02T12:04:15"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-20.jpg",
    "extension": "jpg",
    "ogWidth": "4982",
    "ogHeight": "3986",
    "creationDate": "2023-09-02T11:29:34"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-47.jpg",
    "extension": "jpg",
    "ogWidth": "3288",
    "ogHeight": "2630",
    "creationDate": "2023-09-02T12:29:14"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-53.jpg",
    "extension": "jpg",
    "ogWidth": "3993",
    "ogHeight": "3194",
    "creationDate": "2023-09-02T14:33:40"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-153.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:29:33"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-147.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:27:06"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-1.jpg",
    "extension": "jpg",
    "ogWidth": "4490",
    "ogHeight": "3592",
    "creationDate": "2023-09-02T10:51:44"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-190.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:49:00"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-184.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:43:52"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-185.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:44:24"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-191.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:49:38"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-146.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:27:03"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-152.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:29:24"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-52.jpg",
    "extension": "jpg",
    "ogWidth": "4547",
    "ogHeight": "3638",
    "creationDate": "2023-09-02T14:31:47"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-46.jpg",
    "extension": "jpg",
    "ogWidth": "3703",
    "ogHeight": "2962",
    "creationDate": "2023-09-02T12:28:09"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-50.jpg",
    "extension": "jpg",
    "ogWidth": "3786",
    "ogHeight": "3029",
    "creationDate": "2023-09-02T14:07:10"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-44.jpg",
    "extension": "jpg",
    "ogWidth": "3537",
    "ogHeight": "2830",
    "creationDate": "2023-09-02T12:18:14"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-178.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:42:15"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-144.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:26:16"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-150.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:28:18"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-187.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:44:39"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-193.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:55:30"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-2.jpg",
    "extension": "jpg",
    "ogWidth": "4720",
    "ogHeight": "3776",
    "creationDate": "2023-09-02T10:54:29"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-192.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:53:24"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-3.jpg",
    "extension": "jpg",
    "ogWidth": "5000",
    "ogHeight": "4000",
    "creationDate": "2023-09-02T10:56:49"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-186.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:44:26"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-151.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:28:53"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-145.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:26:27"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-179.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:42:17"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-45.jpg",
    "extension": "jpg",
    "ogWidth": "3711",
    "ogHeight": "2969",
    "creationDate": "2023-09-02T12:20:56"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-51.jpg",
    "extension": "jpg",
    "ogWidth": "3950",
    "ogHeight": "3160",
    "creationDate": "2023-09-02T14:07:47"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-55.jpg",
    "extension": "jpg",
    "ogWidth": "3942",
    "ogHeight": "3154",
    "creationDate": "2023-09-02T14:35:39"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-41.jpg",
    "extension": "jpg",
    "ogWidth": "3202",
    "ogHeight": "2562",
    "creationDate": "2023-09-02T12:11:17"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-141.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:25:44"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-155.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:29:48"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-169.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:37:53"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-182.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:43:13"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-7.jpg",
    "extension": "jpg",
    "ogWidth": "4560",
    "ogHeight": "3648",
    "creationDate": "2023-09-02T11:02:09"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-196.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:56:57"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-6.jpg",
    "extension": "jpg",
    "ogWidth": "4753",
    "ogHeight": "3802",
    "creationDate": "2023-09-02T11:02:05"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-197.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:56:58"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-183.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:43:14"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-168.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:37:50"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-154.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:29:45"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-140.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:24:56"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-40.jpg",
    "extension": "jpg",
    "ogWidth": "3978",
    "ogHeight": "3182",
    "creationDate": "2023-09-02T12:09:44"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-54.jpg",
    "extension": "jpg",
    "ogWidth": "4976",
    "ogHeight": "3981",
    "creationDate": "2023-09-02T14:35:10"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-42.jpg",
    "extension": "jpg",
    "ogWidth": "3330",
    "ogHeight": "2664",
    "creationDate": "2023-09-02T12:16:29"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-56.jpg",
    "extension": "jpg",
    "ogWidth": "3802",
    "ogHeight": "3042",
    "creationDate": "2023-09-02T14:36:28"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-156.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:29:51"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-142.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:26:05"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-195.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:56:54"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-4.jpg",
    "extension": "jpg",
    "ogWidth": "4975",
    "ogHeight": "3980",
    "creationDate": "2023-09-02T11:01:04"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-181.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:43:08"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-208.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:05:06"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-209.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:05:46"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-180.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:43:05"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-194.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:55:33"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-5.jpg",
    "extension": "jpg",
    "ogWidth": "4694",
    "ogHeight": "3755",
    "creationDate": "2023-09-02T11:01:04"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-143.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:26:10"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-157.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:29:58"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-57.jpg",
    "extension": "jpg",
    "ogWidth": "3975",
    "ogHeight": "3180",
    "creationDate": "2023-09-02T14:37:54"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-43.jpg",
    "extension": "jpg",
    "ogWidth": "6000",
    "ogHeight": "4000",
    "creationDate": "2023-09-02T12:17:31"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-172.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:38:27"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-166.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:37:27"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-199.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:58:48"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-8.jpg",
    "extension": "jpg",
    "ogWidth": "3903",
    "ogHeight": "3122",
    "creationDate": "2023-09-02T11:12:55"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-204.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:01:40"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-210.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:06:53"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-211.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:08:40"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-205.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:03:09"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-198.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:58:44"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-9.jpg",
    "extension": "jpg",
    "ogWidth": "4125",
    "ogHeight": "3300",
    "creationDate": "2023-09-02T11:13:52"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-167.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:37:29"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-173.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:39:29"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-159.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:30:27"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-165.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:37:07"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-171.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:37:57"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-213.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:11:42"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-207.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:03:52"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-206.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:03:30"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-212.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:08:42"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-170.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:37:56"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-164.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:36:50"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-158.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:30:21"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-58.jpg",
    "extension": "jpg",
    "ogWidth": "4969",
    "ogHeight": "3975",
    "creationDate": "2023-09-02T14:40:25"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-48.jpg",
    "extension": "jpg",
    "ogWidth": "3494",
    "ogHeight": "2795",
    "creationDate": "2023-09-02T12:46:18"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-160.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:30:35"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-174.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:40:06"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-148.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:27:56"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-216.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:21:48"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-202.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:00:47"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-203.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:01:04"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-149.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:28:16"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-175.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:41:22"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-161.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:30:49"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-49.jpg",
    "extension": "jpg",
    "ogWidth": "4250",
    "ogHeight": "3400",
    "creationDate": "2023-09-02T13:57:38"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-177.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:42:13"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-163.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:31:23"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-188.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:48:47"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-201.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:59:38"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-215.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:12:41"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-214.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T12:12:34"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-200.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:59:21"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-189.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:48:55"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-162.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:30:51"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-176.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:41:24"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-11.jpg",
    "extension": "jpg",
    "ogWidth": "3633",
    "ogHeight": "2906",
    "creationDate": "2023-09-02T11:14:40"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-39.jpg",
    "extension": "jpg",
    "ogWidth": "4990",
    "ogHeight": "3992",
    "creationDate": "2023-09-02T12:06:51"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-139.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:24:52"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-111.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:04:10"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-105.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:03:07"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-104.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T10:57:04"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-110.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:04:09"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-138.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:19:43"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-38.jpg",
    "extension": "jpg",
    "ogWidth": "3439",
    "ogHeight": "2751",
    "creationDate": "2023-09-02T12:06:50"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-10.jpg",
    "extension": "jpg",
    "ogWidth": "4503",
    "ogHeight": "3602",
    "creationDate": "2023-09-02T11:13:59"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-12.jpg",
    "extension": "jpg",
    "ogWidth": "4163",
    "ogHeight": "3330",
    "creationDate": "2023-09-02T11:15:20"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-106.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:03:10"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-112.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:04:11"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-113.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:04:15"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-107.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:03:11"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-13.jpg",
    "extension": "jpg",
    "ogWidth": "3680",
    "ogHeight": "2944",
    "creationDate": "2023-09-02T11:16:05"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-17.jpg",
    "extension": "jpg",
    "ogWidth": "4024",
    "ogHeight": "3219",
    "creationDate": "2023-09-02T11:25:38"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-103.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T10:56:25"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-117.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:14:27"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-116.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:14:18"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-102.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T10:56:03"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-16.jpg",
    "extension": "jpg",
    "ogWidth": "6000",
    "ogHeight": "4000",
    "creationDate": "2023-09-02T11:25:36"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-28.jpg",
    "extension": "jpg",
    "ogWidth": "3733",
    "ogHeight": "2986",
    "creationDate": "2023-09-02T11:53:10"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-14.jpg",
    "extension": "jpg",
    "ogWidth": "3410",
    "ogHeight": "2728",
    "creationDate": "2023-09-02T11:16:39"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-114.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:04:22"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-100.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T10:47:39"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-128.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:17:17"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-129.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:17:18"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-101.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T10:48:10"
  },
  {
    "filePath": "/gallery/2023/schneisengravel23-115.jpg",
    "extension": "jpg",
    "ogWidth": "2560",
    "ogHeight": "1707",
    "creationDate": "2023-09-02T11:13:40"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-15.jpg",
    "extension": "jpg",
    "ogWidth": "4244",
    "ogHeight": "3395",
    "creationDate": "2023-09-02T11:25:08"
  },
  {
    "filePath": "/gallery/2023/Schneisen_Gravel_Gelbensande_2023-29.jpg",
    "extension": "jpg",
    "ogWidth": "3247",
    "ogHeight": "2598",
    "creationDate": "2023-09-02T11:54:31"
  }
];

</script>

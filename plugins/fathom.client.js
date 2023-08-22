import { defineNuxtPlugin } from "#app";
import VueFathom from "@ubclaunchpad/vue-fathom";

export default defineNuxtPlugin((nuxtApp) => {
    nuxtApp.vueApp.use(VueFathom, {
        siteID: "JHGEBOQV",
        settings: {
            url: 'https://cdn-eu.usefathom.com/script.js',
            spa: "history",
        },
    });
});

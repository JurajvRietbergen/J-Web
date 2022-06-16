<template>
  <div class="layout">
    <NavBar />
    <Nuxt />
  </div>
</template>

<script lang="ts">
import NavBar from '~/components/navbar/navbar.vue'
export default {
    components: { NavBar },
}
</script>

<style>
body {
  background: linear-gradient(0deg, rgba(89,103,136,1) 20%, rgba(27,31,41,1) 100%);
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
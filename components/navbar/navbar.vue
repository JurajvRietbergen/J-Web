<template>
  <div>
    <b-navbar class="mb-5 p-0" toggleable="lg" type="dark" variant="primary" fixed="top">
      <b-navbar-toggle target="nav-collapse" />
      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav class="mx-auto">
          <b-nav-item :active="active('home')" to="/inv">
            Home
          </b-nav-item>
          <b-nav-item :active="active('about')" to="/inv">
            About
          </b-nav-item>
          <b-nav-item :active="active('resume')" to="/inv">
            Resume
          </b-nav-item>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
  </div>
</template>

<script>
export default {
    data() {
        return {
            current: "home"
        }
    },
    methods: {
        active(link) {
            if(this.current === link) {
                return true;
            } else {
                return false;
            }
        }
    }
}
</script>

<style scoped>
</style>

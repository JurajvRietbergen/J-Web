<template>
  <b-container class="main">
    <b-row class="pt-5 text-center">
      <b-col class="pt-5">
        <Transition appear name="title" mode="out-in">
          <div class="top">
            <h1>Juraj van Rietbergen</h1>
            <b-img
              src="~/static/portfolio_resized.webp"
              rounded="circle"
              height="300%"
              width="300%"
              fluid
              alt="Portfolio image"
            ></b-img>
          </div>
        </Transition>
        <Transition appear name="title" mode="out-in">
          <div v-if="$store.state.home" class="home">
            <h1 class="mt-4">Home</h1>
            <p class="mt-1">
              Welcome to my portfolio page, having started with developing my
              own programs in 2017 I've now been working professionally for the
              past 2 years as a Software Developer. With experience from Docker
              to Nuxt 3 I've been busy keeping myself up to date with the latest
              technologies!
            </p>
            <b-row class="justify-content-center">
              <b-img
                height="96px"
                width="96px"
                src="~/assets/images/docker_icon_146192.png"
                alt="Docker Logo"
              />
              <b-img
                class="ml-4 mr-4"
                height="96px"
                width="96px"
                src="~/assets/images/file_type_nestjs_icon_130355.png"
                alt="NestJS Logo"
              />
              <b-img
                height="96px"
                width="96px"
                src="~/assets/images/file_type_nuxt_icon_130293.png"
                alt="Nuxt Logo"
              />
            </b-row>
          </div>
        </Transition>
        <Transition appear name="title" mode="out-in">
          <div v-if="$store.state.about" class="about">
            <h1 class="mt-4">About</h1>
            <p class="mt-1">
              My name is Juraj van Rietbergen, born in the Netherlands I started
              my study Software Development at Avans Hogeschool in 2017, now
              nearing the end of it I've started working professionally on the
              side for a few years to ensure my technological knowledge stays up
              to par. I'm always up for a new challenge and hope to broaden my
              horizons evermore, improving myself in everyway I can!
            </p>
          </div>
        </Transition>
        <Transition appear name="title" mode="out-in">
          <div v-if="$store.state.resume" class="resume">
            <h1 class="mt-4">Resume</h1>
              <b-button>
                <a href="/CV-Juraj.pdf" download="">Download</a>
              </b-button>
            <p class="mt-1">
              Hope to hear from you soon!
            </p>
          </div>
        </Transition>
      </b-col>
    </b-row>
    <b-row class="h1 mb-2 footer justify-content-center">
      <a href="https://github.com/JurajvRietbergen">
      <b-icon icon="github"></b-icon>
      </a>
      <a href="" onclick="return false;">
      <b-icon @click="discordModal" class="ml-4 mr-4" icon="discord"></b-icon>
      </a>
      <a href="https://www.linkedin.com/in/juraj-van-rietbergen-576585200">
      <b-icon icon="linkedin"></b-icon>
      </a>
    </b-row>
  </b-container>
</template>

<script>
export default {
  methods: {
    discordModal() {
      this.$bvModal.msgBoxOk('Shoot me a message at Juraj#2370');
    }
  },
};
</script>

<style scoped>
.main {
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.title-enter-active {
  transition: opacity 3s ease;
}

.title-enter,
.title-leave-to {
  opacity: 0;
}

h1 {
  color: #949e95;
}

p {
  color: #949e95;
}
</style>
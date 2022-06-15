<template>
  <b-container class="main">
    <b-row class="pt-5 vh-100 text-center">
      <b-col class="pt-5">
        <Transition appear name="title" mode="out-in">
          <h1>Juraj van Rietbergen</h1>
        </Transition>
        <Transition appear name="title" mode="out-in">
          <b-img
            src="~/assets/images/portfolio.png"
            rounded="circle"
            height="300%"
            width="300%"
            fluid
            alt="Portfolio image"
          ></b-img>
        </Transition>
        <div v-if="home" class="about">
            <Transition appear name="title" mode="out-in">
                <h1 class="mt-4"> About </h1>
            </Transition>
            <Transition appear name="title" mode="out-in">
                <p class="mt-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            </Transition>
        </div>
        <div v-if="about" class="about">
            <Transition appear name="title" mode="out-in">
                <h1 class="mt-4"> About </h1>
            </Transition>
            <Transition appear name="title" mode="out-in">
                <p class="mt-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            </Transition>
        </div>
        <div v-if="resume" class="about">
            <Transition appear name="title" mode="out-in">
                <h1 class="mt-4"> About </h1>
            </Transition>
            <Transition appear name="title" mode="out-in">
                <p class="mt-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            </Transition>
        </div>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
export default {
  data() {
    return {
      home: true,
    };
  },
  mounted() {},
};
</script>

<style scoped>
.title-enter-active {
  transition: opacity 3s ease;
}

.title-enter {
  opacity: 1;
}

.title-enter {
  opacity: 0;
}

h1 {
  color: #949e95;
}

p {
  color: #949e95; 
}
</style>
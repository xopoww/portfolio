<script setup lang="ts">
import TypedText from "../components/TypedText.vue";
</script>

<template>
  <a href="/">
    <TypedText
      class="cmd"
      text="cd ~"
      :duration="duration"
      :delay="delay"
      keep-cursor
    />
  </a>
</template>

<style scoped>
a:link,
a:visited {
  text-decoration: none;
}

a:hover {
  font-weight: 700;
}
</style>

<script lang="ts">
import { defineComponent } from "vue";

const duration = 0.7;

export default defineComponent({
  props: {
    delay: {
      type: Number,
      default: 0,
    },
  },
  data() {
    return {
      delayStyle: `animation-duration: ${this.delay + duration || "0s"}`,
    };
  },
});
</script>

<template>
  <span class="delay out" :style="delayStyle">
    <span class="user">{{ username }}@xopoww</span>:<span class="pwd">{{
      pwd
    }}</span
    >$
  </span>
</template>

<style scoped>
.user {
  color: var(--color-cmd-green);
}
.pwd {
  color: var(--color-cmd-lblue);
}

.out {
  line-height: 1.5;
}
</style>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  props: {
    username: {
      type: String,
      default: "user",
    },
    pwd: {
      type: String,
      default: "~",
    },
    delay: {
      type: String,
      default: "0s",
    },
  },
  data() {
    return {
      delayStyle: `animation-duration: ${this.delay}`,
    };
  },
});
</script>

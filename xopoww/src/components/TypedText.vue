<template>
  <span :class="{ cursor: typing }">{{ current }}</span>
</template>

<script lang="ts">
import { defineComponent, ref } from "vue";

export default defineComponent({
  props: {
    text: {
      type: String,
      required: true,
    },
    delay: Number,
    duration: {
      type: Number,
      required: true,
    },
    keepCursor: {
      type: Boolean,
      default: false,
    },
  },
  data() {
    return {
      current: ref(""),
      typing: ref(false),
    };
  },
  methods: {
    append() {
      if (this.current.length >= this.text.length) {
        this.typing = this.keepCursor;
        return;
      }
      this.current += this.text.charAt(this.current.length);
      setTimeout(this.append, (this.duration / this.text.length) * 1000);
    },
  },
  created() {
    setTimeout(() => {
      this.typing = true;
      this.append();
    }, (this.delay || 0) * 1000);
  },
});
</script>

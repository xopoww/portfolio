<script setup lang="ts">
import { RouterView } from "vue-router";
import { version } from "./meta";
</script>

<template>
  <header>
    <div style="float: left">[-</div>
    <div style="float: right">-]</div>
    <div style="margin: 0 auto; width: fit-content">xopoww v{{ version }}</div>
  </header>

  <div class="terminal"><RouterView /></div>
</template>

<style scoped>
header {
  width: 100%;
  margin-top: 0.5em;
}
.terminal {
  margin-top: 2rem;
  word-wrap: break-word;
  word-break: break-all;
}
</style>

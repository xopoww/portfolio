<template>
  <a class="cmd" :href="href"><slot /></a>
</template>

<style scoped>
a:link,
a:visited {
  text-decoration: none;
}

a:hover:before {
  content: "> ";
  margin-left: -1.23em;
}
</style>

<script lang="ts">
export default {
  props: ["href"],
};
</script>

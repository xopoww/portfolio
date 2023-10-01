<script setup lang="ts">
import CommandStyle from "../components/CommandStyle.vue";
import HomeButton from "../components/HomeButton.vue";
</script>

<template>
  bash: cd: {{ $route.path }}: No such file or directory <br />
  <CommandStyle pwd="/" /> <HomeButton />
</template>

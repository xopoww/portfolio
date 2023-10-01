<script setup lang="ts">
import CommandStyle from "../components/CommandStyle.vue";
import HomeButton from "../components/HomeButton.vue";
import TypedText from "../components/TypedText.vue";
</script>

<template>
  <CommandStyle :pwd="'~' + $route.path" />
  <TypedText text="cat todo.txt" class="cmd" :duration="1" /><br />
  <br />
  <span class="delay" style="animation-duration: 1.1s">
    &nbsp;&nbsp;&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;O<br />
    &nbsp;&nbsp;&nbsp;T/\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/\=,---.<br />
    &nbsp;&nbsp;&nbsp;U&nbsp;/\&nbsp;&nbsp;&nbsp;/\&nbsp;&nbsp;&nbsp;`O'<br />
    This part of website is currently being developed. Check back later! <br />
  </span>

  <CommandStyle :pwd="'~' + $route.path" delay="1.1s" />
  <HomeButton :delay="1.1" />
</template>

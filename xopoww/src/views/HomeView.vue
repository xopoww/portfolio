<script setup lang="ts">
import CommandStyle from "../components/CommandStyle.vue";
import TerminalButton from "../components/TerminalButton.vue";
import TypedText from "../components/TypedText.vue";
</script>

<template>
  <CommandStyle />
  <TypedText text="cat hello-world.txt" class="cmd" :duration="2" /><br />

  <span class="delay" style="animation-duration: 2.1s">
    Welcome to my personal web site! Feel free to look around. <br />
  </span>

  <CommandStyle delay="2.1s" />
  <TypedText text="ls -1" class="cmd" :delay="2.5" :duration="1.5" /><br />

  <span class="delay" style="animation-duration: 4.1s">
    <TerminalButton href="/about" class="folder"> about/ </TerminalButton>
    <br />
    <TerminalButton href="/projects" class="folder"> projects/ </TerminalButton>
    <br />
    <TerminalButton href="https://github.com/xopoww" class="symlink">
      github
    </TerminalButton>
    <br />
    hello-world.txt
    <br />
  </span>

  <CommandStyle delay="4.1s" />
  <span class="cmd delay" style="animation-duration: 4.1s">
    <span class="cursor" />
  </span>
</template>

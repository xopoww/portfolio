<script setup lang="ts">
import CommandStyle from "../components/CommandStyle.vue";
import HomeButton from "../components/HomeButton.vue";
import TypedText from "../components/TypedText.vue";
</script>

<template>
  <CommandStyle pwd="~/about" />
  <TypedText text="cat aboutme.md" class="cmd" :duration="1.5" /><br />

  <span class="delay" style="animation-duration: 1.6s">
    <span class="md-heading"># Arseny Khoroshilov</span><br />
    <br />
    I'm 25 y.o. software developer at Yandex Cloud. My main interest is web
    developement, but I also sometimes peek into programming language design,
    game dev and other topics. <br />
    <br />
    My nickname (<span class="md-i">xopoww</span>) is a stylization of a
    fragment of my last name.<br />It's pronounced "<span class="md-i">khorosh</span
    >".<br />
    <br />
    If you wish to contact me, you can send me [an email](<a
      class="md-link"
      href="mailto:arseny@xopoww.com"
      >mailto:arseny@xopoww.com</a
    >).<br />
  </span>

  <CommandStyle pwd="~/about" delay="1.6s" />
  <HomeButton :delay="1.6" />
</template>

<style scoped>
.md-heading {
  font-weight: bold;
}

.md-link {
  text-decoration: underline;
  color: inherit;
}

.md-i {
  font-style: italic;
}

.md-i::before,
.md-i::after {
  content: "*";
}
</style>

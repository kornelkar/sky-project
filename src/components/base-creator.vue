<style lang="scss"></style>

<template>
  <div class="creator">
    <div class="creator__title"></div>
    <div class="creator__name">
      <div class="creator__name--title">NAZWA:</div>
      <div class="creator__name--input">
        <input type="text" />
      </div>
    </div>
    <div class="creator__description">
      <div class="creator__description--title">OPIS:</div>
      <div class="creator__description--input"></div>
      <input type="text" />
    </div>
    <div class="creator__attach-file">
      <div class="creator__attach-file--title">ZAŁĄCZ PLIK</div>
      <div class="creator__attach-file--input"></div>
    </div>
    <div v-if="constellation" class="creator__add-star"></div>
    <div class="creator__add-button"></div>
  </div>
</template>

<script>
export default defineComponent({
  setup() {},
});
</script>

<style lang="scss">
.creator {
  background-color: #272747;
  display: flex;
  flex-direction: column;
  gap: 20px;
  margin-top: 50px;
  padding: 30px;
  width: 400px;
  color: aliceblue;
  justify-items: center;
  align-items: center;

  &__title {
    color: #ebed88;
    font-size: 24px;
  }

  &__name,
  &__description {
    display: flex;
    flex-direction: column;
  }

  &__add-button {
    color: #ebed88;
    background-color: #7271A4;
  }

  &__attach-file--input {
    margin-left: 50px;
  }
}
</style>

<template>
  <div class="creator">
    <div class="creator__title">GWIAZDY</div>    <!--{{ getTitle }}-->
    <div class="creator__name">
      <label for="name" class="creator__name--title">NAZWA:</label>
      <input
        type="text"
        id="name"
        v-model="star.name"
        class="creator__name--input"
      />
    </div>
    <div class="creator__description">
      <label for="description" class="creator__description--title">OPIS:</label>
      <input
        type="text"
        id="description"
        v-model="star.description"
        class="creator__description--input"
      />
    </div>
    <div class="creator__attach-file">
      <label for="file" class="creator__attach-file--title">ZAŁĄCZ PLIK</label>
      <input type="file" id="file" class="creator__attach-file--input" />
    </div>
    <div v-if="constellation" class="creator__add-star"></div>
    <button @click="submitForm" class="creator__add-button">DODAJ</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      star: {
        name: "",
        description: "",
        file: "", //TODO: trzeba pomyslec w jakiej formie bedzie ten plik i co to bedzie wgl
      },
    };
  },

  methods: {
    submitForm() {
      console.log("WYSYŁANIE");
    },

    getTitle: "GWIAZDY" | "KONSTELACJE",
  },
};
</script>

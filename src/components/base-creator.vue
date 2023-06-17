<style lang="scss">
.creator {
  background-color: #272747;
  margin-top: 50px;
  margin: 0 50px 0 50px;
  padding: 30px;
  width: 400px;
  color: aliceblue;
  justify-items: center;
  align-items: center;
    height: 350px;

  &__title {
    color: #ebed88;
    font-size: 24px;
  }

  &__name {
    text-align: left;
  }

  &__description {
    text-align: left;
    display: flex;
    flex-direction: column;
  }

  &__add-button {
    color: #ebed88;
    background-color: #7271A4;
      margin-top: 20px;
      height: 25%;
      width: 50%;
      border: none;
  }
    &__add-button:hover{
        cursor: pointer;
        background-color: rgba(114,113,164,0.6);
    }
    input[type=text]
    {
        background-color: #B8B8B8;
        box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.25);
    }
    input[type=file]::file-selector-button
    {
        color: white;
        background-color: #7271A4;
        margin-top: 20px;
        height: 25%;
        width: 50%;
        border: none;
    }
    input[type=file]::file-selector-button:hover
    {
        cursor: pointer;
        background-color: rgba(114,113,164,0.6);
    }

  &__attach-file--input {
    margin-left: 50px;
  }
}
</style>

<template>
    <div class="creator col">
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
            <input type="file" id="file" class="creator__attach-file--input"/>
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

        getTitle: "GWIAZDY",
    },
};
</script>

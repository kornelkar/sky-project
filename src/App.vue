<script>
import BaseLevelPicker from '@/components/base-level-picker.vue'
import BaseSection from '@/components/base-section'

export default {
    components: {
        BaseLevelPicker,
        BaseSection,
    },
}

</script>

<template>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <div class="sky">
        <div class="header">
            <div class="header__title">ZARZĄDZAJ SWOIM NOCNYM NIEBEM</div>
            <div class="header__menu">
                <div on-click="widocznosc()">POZIOM WIDOCZNOŚCI</div>
                <div on-click="fazy()">FAZY KSIĘŻYCA</div>
                <div on-click="dodajGwiazde()">DODAJ GWIAZDĘ</div>
                <div on-click="dodajKonstylacje()">DODAJ KONSTYLACJĘ</div>
                <i class="expand.svg"></i>
            </div>
        </div>
        <div class="main">
            <div class="main__picker">
                <base-level-picker></base-level-picker>
            </div>
            <base-section></base-section>
        </div>
    </div>
</template>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

.header {
  width: 100%;


  &__title {
    display: flex;
    justify-content: center;
    background-color: #272747;
    font-size: 52px;
    color: #EBED88;
    padding: 72px 200px;
  }

  &__menu {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    background-color: #7271A4;
    font-size: 24px;
    padding: 15px 30px;
    color: aliceblue;
    margin-bottom: 32px;
  }

}

.main {

  &__picker {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 32px;
  }


}

</style>

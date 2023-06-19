<template>
    <div class="sky container-fluid">
        <div class="header navbar row">
            <div class="header__title row">ZARZĄDZAJ SWOIM NOCNYM NIEBEM</div>
            <div class="header__menu row">
                <i class="expand.svg"></i>
            </div>
        </div>
        <div class="row">
            <div class="row">
                <base-level-picker></base-level-picker>
            </div>
            <base-section></base-section>
            <div class="row">
            <base-creator></base-creator>
            <base-creator-constellations></base-creator-constellations>
            </div>
            <base-section-star></base-section-star>
            <base-section-constellation></base-section-constellation>
            <footer class="row mt-4">Stopka</footer>
        </div>
    </div>
</template>

<style lang="scss" scoped>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

.sky {
  padding: 0;
}

.header {
  padding-top: 0;

  &__title {
    justify-content: center;
    background-color: #272747;
    font-size: 52px;
    color: #ebed88;
    padding: 72px 200px;
  }

  &__menu {
    background-color: #7271a4;
    font-size: 24px;
    padding: 15px 30px;
    color: aliceblue;
    margin-bottom: 32px;
  }
}
footer {
  background-color: #272747;
  color: white;
  height: 150px;
  font-size: 50px;
  align-items: center;
  justify-content: center;
}
</style>

<script>
import BaseLevelPicker from "@/components/base-level-picker.vue";

import BaseSection from "@/components/base-section";

import baseCreator from "@/components/base-creator.vue";

import baseCreatorConstellations from "@/components/base-creator-constellations.vue";

import BaseSectionStar from "@/components/base-section-star.vue";
import BaseSectionConstellation from "@/components/base-section-constellation.vue";

export default {
  components: {
    BaseLevelPicker,
    BaseSection,
    baseCreator,
    baseCreatorConstellations,
    BaseSectionStar,
    BaseSectionConstellation,
  },
};
</script>

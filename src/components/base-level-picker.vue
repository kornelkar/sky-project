<template>
    <div class="picker col-lg-4 col-sm-12">
        <div class="picker__title">ZACHMURZENIE</div>
        <select class="picker__options" v-model="selectedOptionCloud" @change="weather">
            <option v-for="option in CloudOtions" :value="option.value" :key="option.id">
                {{ option.label }}
            </option>
        </select>
    </div>
    <div class="picker col-lg-4 col-sm-12">
        <div class="picker__title">POZIOM OPADÓW</div>
        <select class="picker__options" v-model="selectedOptionRainfall" @change="weather">
            <option v-for="option in RainfallOtions" :value="option.value" :key="option.id">
                {{ option.label }}
            </option>
        </select>

    </div>
    <div class="picker col-lg-4 col-sm-12">
        <div class="picker__title">POZIOM MGŁY</div>
        <select class="picker__options" v-model="selectedOptionFog" @change="weather">
            <option v-for="option in FogOptions" :value="option.value" :key="option.id">
                {{ option.label }}
            </option>
        </select>
    </div>
</template>

<style lang="scss">
.picker {


  &__title {
    background-color: #272747;
    color: #EBED88;
    font-size: 32px;
  }

  &__options {
    background-color: #B8B8B8;
    font-size: 28px;
    width: 100%;
    text-align: center;
    height: 50px;
  }
}
</style>

<script>
export default {
    data() {
        return {
            selectedOptionFog: '0', // przechowuje wybraną opcję
            FogOptions: [
                {id: 0, value: '0', label: 'Wybierz'},
                {id: 1, value: '0-f', label: 'Brak'},
                {id: 2, value: '1-f', label: 'Słaby'},
                {id: 3, value: '2-f', label: 'Umiarkowany'},
                {id: 4, value: '3-f', label: 'Gęsty'},
                {id: 5, value: '4-f', label: 'Bardzo Gęsty'},
            ],
            selectedOptionCloud: '0', // przechowuje wybraną opcję
            CloudOtions: [
                {id: 0, value: '0', label: 'Wybierz'},
                {id: 1, value: '0-c', label: 'Czyste Niebo'},
                {id: 2, value: '1-c', label: 'Lekkie Zachmurzenie'},
                {id: 3, value: '2-c', label: 'Umiarkowany'},
                {id: 4, value: '3-c', label: 'Średnie Zachmurzenie'},
                {id: 5, value: '4-c', label: 'Pełne Zachmurzenie'},
            ],
            selectedOptionRainfall: '0', // przechowuje wybraną opcję
            RainfallOtions: [
                {id: 0, value: '0', label: 'Wybierz'},
                {id: 1, value: '0-r', label: 'Brak'},
                {id: 2, value: '1-r', label: 'Mżawka'},
                {id: 3, value: '2-r', label: 'Umiarkowany'},
                {id: 4, value: '3-r', label: 'Deszcz'},
                {id: 5, value: '4-r', label: 'Śnieg'},
                {id: 6, value: '5-r', label: 'Grad'},
            ]
        };
    },
    methods: {
        weather() {
            if (this.selectedOptionCloud === "0-c")
            {
                this.selectedOptionRainfall = "0-r"
            }
        }
    }
};
</script>

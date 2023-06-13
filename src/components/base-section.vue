<template>
    <div class="section">
        <div class="section__header">
            <div class="section__header-title">FAZY KSIĘŻYCA</div>
            <div class="section__header-select">
                <select v-model="selectedOptionMoonPhase">
                    <option v-for="option in MoonPhaseOptions" :value="option.value" :key="option.id">
                        {{ option.label }}
                    </option>
                </select>
            </div>
        </div>
        <div class="section__main">
            <div class="section__main-photo">Jakiś JPG</div>
            <div class="section__main-article">
                <div class="section__main-article-title"> {{ MoonPhaseOptions[selectedOptionMoonPhase].label }}</div>
                <div class="section__main-article-paragraph">{{
                    MoonPhaseOptions[selectedOptionMoonPhase].paragraph
                    }}
                </div>
            </div>
        </div>
    </div>
</template>

<style lang="scss">
.section {
  margin-top: 34px;
  background-color: #272747;
  padding: 40px 52px 40px 0;

  &__header {
    display: flex;
    justify-content: space-between;

    &-title {
      font-size: 32px;
      background-color: #7271a4;
      padding: 16px 80px 16px 16px;
      border-top-right-radius: 50%;
      border-bottom-right-radius: 50%;
    }

    &-select {
      select {
        width: 200px;
        height: 50px;
        text-align: center;
        background-color: #b8b8b8;
      }
    }
  }

  &__main {
    display: flex;
    margin-top: 32px;

    &-photo {
      padding: 100px;
      background-color: beige;
      margin-left: 40px;
    }

    &-article {
      color: aliceblue;
      max-width: 880px;

      &-title {
        margin-bottom: 18px;
        font-size: 24px;
      }

      &-paragraph {
        justify-self: flex-start;
        margin-left: 40px;
      }
    }
  }
}
</style>

<script>
export default {
    data() {
        return {
            selectedOptionMoonPhase: 1,
            MoonPhaseOptions: [
                {id: 0, value: "0", label: "Wybierz", paragraph: "Wybierz fazę księżyca"},
                {
                    id: 1,
                    value: "1",
                    label: "Nów",
                    paragraph: "Nów - Kiedy Księżyc jest między Ziemią a Słońcem, z naszej perspektywy nie widzimy oświetlonej części Księżyca. Jest to początek nowego cyklu."
                },
                {
                    id: 2,
                    value: "2",
                    label: "Sierp",
                    paragraph: "Sierp - Kiedy Księżyc jest w fazie sierpa, widzimy tylko niewielką część oświetlonej strony, tworzącą kształt sierpa."
                },
                {
                    id: 3,
                    value: "3",
                    label: "I kwadra",
                    paragraph: "I kwadra - W tej fazie widzimy połowę Księżyca, która jest oświetlona. Jest to połowa, która jest widoczna południowo."
                },
                {
                    id: 4,
                    value: "4",
                    label: "Pełnia",
                    paragraph: "Gibbous (pełnia) - Kiedy Księżyc jest w pełni oświetlony, mamy fazę pełni. Widzimy całą oświetloną stronę Księżyca."
                },
                {
                    id: 5,
                    value: "5",
                    label: "III kwadra",
                    paragraph: "III kwadra - W tej fazie widzimy połowę Księżyca, która jest oświetlona. Jest to połowa, która jest widoczna północno."
                },
                {
                    id: 6,
                    value: "6",
                    label: "Sierp III",
                    paragraph: "Sierp - Po III kwadrze Księżyc przechodzi znowu w fazę sierpa, tym razem w odwrotnej orientacji niż na początku cyklu."
                },
                {
                    id: 7,
                    value: "7",
                    label: "Powrót do nów",
                    paragraph: "Powrót do nów - Cykl kończy się powrotem do fazy nów, a następnie zaczyna się od nowa."
                },
            ],

        };
    },
};
</script>

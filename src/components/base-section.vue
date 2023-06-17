<template>
    <div class="section row">
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
            <div class="section__main-photo"><img :src="MoonPhaseOptions[selectedOptionMoonPhase].img"
                                                  :alt="MoonPhaseOptions[selectedOptionMoonPhase].alt"></div>
            <div class="section__main-article">
                <div class="section__main-article-title"> {{ MoonPhaseOptions[selectedOptionMoonPhase].label }}</div>
                <div class="section__main-article-paragraph">
                  {{ MoonPhaseOptions[selectedOptionMoonPhase].paragraph }}
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
          cursor: pointer;

      }
    }
  }

  &__main {
    display: flex;
    margin-top: 32px;

    &-photo {
      background-color: beige;
      margin-left: 40px;
        height: 200px;

      img {
        height: 200px;
          width: 200px;
      }
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
                {
                    id: 0,
                    value: "0",
                    label: "Wybierz",
                    paragraph: "Wybierz fazę księżyca",
                    img: '',
                    alt: 'Wybierz zdjecie',
                },
                {
                    id: 1,
                    value: "1",
                    label: "Nów",
                    paragraph: "W większości języków europejskich nazwa nowiu w dosłownym tłumaczeniu brzmi: nowy księżyc. Jedna z faz Księżyca, w której Księżyc znajduje się między Słońcem a Ziemią, czyli jest w koniunkcji ze Słońcem patrząc z Ziemi. W tej pozycji cała strona Księżyca widoczna z Ziemi jest w cieniu, wobec czego Księżyc nie jest widoczny gołym okiem. Zjawisko to można zaobserwować nad zachodnim horyzontem w krótkim okresie między zachodem Słońca a zachodem Księżyca. Z tego powodu dokładny czas, a nawet data wystąpienia zjawiska z definicji zależy od położenia geograficznego obserwatora. Z astronomicznego punktu widzenia nów pojawia się wtedy, gdy jest w koniunkcji ze Słońcem w układzie ekliptycznym. Ten moment jest jednoznaczny i nie zależy od położenia, a w niektórych okolicznościach zbiega się z zaćmieniem Słońca.",

                    img: 'img/Crescent_Moon.jpg',
                    alt: 'Nów',
                },
                {
                    id: 2,
                    value: "2",
                    label: "Sierp",
                    paragraph: "Sierp - Kiedy Księżyc jest w fazie sierpa, widzimy tylko niewielką część oświetlonej strony, tworzącą kształt sierpa.",
                    img: 'img/Sierp.jpg',
                    alt: 'Sierp',
                },
                {
                    id: 3,
                    value: "3",
                    label: "I kwadra",
                    paragraph: "Faza Księżyca, w której Ziemia, Księżyc i Słońce tworzą ze sobą kąt prosty a Księżyc w tym czasie zbliża się do pełni. W tym momencie, dla obserwatorów na Ziemi widoczna jest tylko wschodnia część tarczy Księżyca. Księżyc wschodzi w środku dnia i zachodzi w środku nocy, przez co można go bardzo wygodnie obserwować. W pobliżu granicy między oświetloną i nieoświetloną częścią Księżyca, panują najlepsze warunki do obserwacji struktur na jego powierzchni takich jak kratery, góry, doliny. Podczaskwadry pierwszej amplituda pływów morskich jest obniżona i stąd określane są jako pływy kwadraturowe.. Jest to połowa, która jest widoczna południowo.",
                    img: 'img/1280px-Logroño_moon_waxing_half_moon.jpg',
                    alt: 'I kwadra'
                },
                {
                    id: 4,
                    value: "4",
                    label: "Pełnia",
                    paragraph: "Faza księżyca, podczas której Księżyc znajduje się w opozycji do Słońca. Księżyc znajduje się po przeciwnej stronie Ziemi niż Słońce. Dokładniej, pełnia występuje wtedy, gdy długości ekliptyczne Słońca i Księżyca różnią się o 180 stopni. Podczas pełni półkula Księżyca skierowana w stronę Ziemi osiąga maksimum oświetlenia, które obejmuje ją prawie w całości, a tarcza Księżyca jest widoczna w przybliżeniu jako koło. W tym czasie przeciwna jego półkula, niewidoczna z Ziemi, jest nieoświetlona. Zazwyczaj w jednym miesiącu kalendarzowym występuje jedna pełnia. Jedynie w czasie pełni możliwe jest wystąpienie zaćmienia Księżyca.",
                    img: 'img/FullMoon.jpg',
                    alt: 'Pełnia'
                },
                {
                    id: 5,
                    value: "5",
                    label: "III kwadra",
                    paragraph: "Faza Księżyca, w której Ziemia, Księżyc i Słońce tworzą ze sobą kąt prosty a Księżyc w tym czasie zbliża się do nowiu. W tym momencie, dla obserwatorów na Ziemi widoczna jest jako oświetlona tylko zachodnia część widocznej strony Księżyca. Podczas kwadr Słońce oświetla część powierzchni Księżyca zwróconą w stronę Ziemi pod małym kątem, więc jego formy morfologiczne w tym obszarze są wówczas bardzo dobrze widoczne. Najlepsze warunki do obserwacji tych struktur są przy granicy między oświetloną i nieoświetloną częścią Księżyca. Faza ta ma miejsce 21 dnia czterotygodniowego cyklu. Cień, zasłaniający prawą połowę księżycowej tarczy, będzie się teraz przesuwał w lewo i po siedmiu dniach Księżyc znajdzie się w nowiu.",
                    img: 'img/HalfMoon.jpg',
                    alt: 'III kwadra'
                },
                {
                    id: 6,
                    value: "6",
                    label: "Sierp III",
                    paragraph: "Sierp - Po III kwadrze Księżyc przechodzi znowu w fazę sierpa, tym razem w odwrotnej orientacji niż na początku cyklu.",
                    img: 'img/Sierp.jpg',
                    alt: 'Sierp III'
                },
                {
                    id: 7,
                    value: "7",
                    label: "Powrót do nów",
                    paragraph: "Powrót do nów - Cykl kończy się powrotem do fazy nów, a następnie zaczyna się od nowa.",
                    img: 'img/Crescent_Moon.jpg',
                    alt: 'Powrót do nów'
                },
            ],

        };
    },
};
</script>

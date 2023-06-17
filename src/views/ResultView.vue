 <template>
     <div class="result">
      <!-- <h2>Zarządzanie gwiazdami</h2>
        <div class="result__actions--star" v-for="star in stars" :key="star.id">
          {{ star.name }}
          <button @click="deleteStar(star.id)">Usuń</button>
          <button @click="editStar(star.id)">Edytuj</button>
          <button @click="viewStarDetails(star.id)">Szczegóły</button>
          <button @click="addToConstellation(star.id)">Dodaj do konstelacji</button>
          <button @click="removeFromConstellation(star.id)">Usuń z konstelacji</button>
          <button @click="toggleStarVisibility(star.id)">Włącz/Wyłącz</button>
        </div>
  
      <h2>Zarządzanie konstelacjami</h2>
        <div class="result__actions--constellation" v-for="constellation in constellations" :key="constellation.id">
          {{ constellation.name }}
          <button @click="deleteConstellation(constellation.id)">Usuń</button>
          <button @click="editConstellation(constellation.id)">Edytuj</button>
          <button @click="viewConstellationDetails(constellation.id)">Szczegóły</button>
          <button @click="addStarToConstellation(constellation.id)">Dodaj gwiazdę</button>
          <button @click="removeStarFromConstellation(constellation.id)">Usuń gwiazdę</button>
          <button @click="toggleConstellationVisibility(constellation.id)">Włącz/Wyłącz</button>
        </div>
   -->
    </div> 
  </template>
  
  <!-- <script>
  export default {
    data() {
      return {
        stars: [
          // Początkowe dane gwiazd
          // { id: 1, name: 'Gwiazda 1', visible: true, description: '', picture: ??, inConstellations[]: ConstellationsObject },
          // { id: 2, name: 'Gwiazda 2', visible: true, description: '', picture: ??, inConstellations[]: ConstellationsObject },
          // ...
        ],
        constellations: [
          // Początkowe dane konstelacji
          // { id: 1, name: 'Konstelacja 1', visible: true, description: '', picture: ??, starsInclude[]: starsArrayObject },
          // { id: 2, name: 'Konstelacja 2', visible: true, description: '', picture: ??, starsInclude[]: starsArrayObject },
          // ...
        ]
      };
    },
    methods: {
      // Metody obsługujące akcje
  
      deleteStar(starId) {
        // Logika usuwania gwiazdy o podanym ID
      },
      editStar(starId) {
        // Logika edycji danych gwiazdy o podanym ID
      },
      viewStarDetails(starId) {
        // Logika wyświetlania szczegółów gwiazdy o podanym ID
      },
      addToConstellation(starId) {
        // Logika dodawania gwiazdy do konstelacji
      },
      removeFromConstellation(starId) {
        // Logika usuwania gwiazdy z konstelacji
      },
      toggleStarVisibility(starId) {
        // Logika włączania/wyłączania widoczności gwiazdy
      },
      deleteConstellation(constellationId) {
        // Logika usuwania
      }
    }
}
</script> --> 
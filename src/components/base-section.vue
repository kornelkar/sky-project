<template>
    <div class="section">
        <div class="section__header">
            <div class="section__header-title">FAZY KSIĘŻYCA</div>
            <div class="section__header-select">
                <select>
                    <option value="0">WYBIERZ</option>
                </select>
            </div>  <!-- TODO: Dodać jakiś bazowy komponent do wybierania -->
        </div>
        <div class="section__main">
            <div class="section__main-photo">Jakiś JPG</div>
            <div class="section__main-article">
                <div class="section__main-article-title">PEŁNIA</div>
                <div class="section__main-article-paragraph">Lorem Ipsum is simply dummy text of the printing and
                    typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                    when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has
                    survived not only five centuries, but also the leap into electronic typesetting, remaining
                    essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets
                    containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus
                    PageMaker including versions of Lorem Ipsum.
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
      background-color: #7271A4;
      padding: 16px 80px 16px 16px;
      border-top-right-radius: 50%;
      border-bottom-right-radius: 50%;
    }

    &-select {
      select {
        width: 200px;
          text-align: center;
        background-color: #B8B8B8;
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


</script>
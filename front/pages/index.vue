<template> 
  <b-container fluid>
    <b-col offset-md="1" md="10" class="mt-3" style="color: black;">
        <b-jumbotron class="pb-5">
          <template #header>Welcome to SkyQuest</template>

          <template #lead>
            SkyQuestはパイロットを目指す皆さんを応援するサービスです。<br>
            パイロットになる方法や、飛行訓練で必要な知識などを発信します。
          </template>

          <hr class="my-4">
          
          <b-button v-if="!this.$auth.loggedIn" variant="primary" to="/signup">Sign up Now!</b-button>
          
        </b-jumbotron>

        <div>
        <b-card-group deck>
          <b-card title="パイロットになる方法" img-src="../assets/Home2.png" img-alt="Image" img-top>
            <b-card-text>
              2021年現在、エアラインパイロットを目指す方法について紹介します。
            </b-card-text>
            <template #footer>
              <b-button variant="info" to="/way">　Go!　</b-button>
            </template>
          </b-card>

          <b-card title="勉強部屋" img-src="../assets/Home1.png" img-alt="Image" img-top>
            <b-card-text>
              訓練座学の中で難しい部分や大切な知識について、まとめてみました。
            </b-card-text>
            <template #footer>
              <b-button variant="info" to="/study">　Go!　</b-button>
            </template>
          </b-card>

          <b-card title="掲示板" img-src="../assets/Home3.png" img-alt="Image" img-top>
            <b-card-text>
              飛行訓練に関する質問や、パイロットを目指す上での悩みなど、何でも話しましょう！
            </b-card-text>
            <template #footer>
              <b-button variant="info" to="/community">　Go!　</b-button>
            </template>
          </b-card>
        </b-card-group>
</div>
    </b-col>      
  </b-container>
</template>

<script>

//export
export default({
  auth: false,
  data: function () {
    return {
    }
  }
})
</script>


<style></style>



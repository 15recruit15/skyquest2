
<template> 
    <div class = "container-fluid"> 
      <div class="offset-lg-3 col-lg-6 col-md-8 offset-md-2 arrange-form blur-content">
        <h3 class = "form-title text-center">ログイン</h3>
        <div class = "form-zone">

          <Notification :message="error" v-if="error" class="mb-4 pb-3" />

          <b-form @submit.prevent="login">
            <b-form-group label="メールアドレス:">
              <b-form-input placeholder="Enter email" required v-model="email" type="email"></b-form-input>
            </b-form-group>
            <b-form-group label="パスワード:">
              <b-form-input placeholder="Enter password" required v-model="password" type="password"></b-form-input>
            </b-form-group>
            <b-button block type="submit" variant="primary">送信</b-button>
          </b-form>
          <b-link to="/signup" style="color: #33FFFF">アカウントをお持ちでない場合</b-link>
        </div>
        
      </div>
    </div>
</template>

<script>


export default {
  data: function () {
    return {
      email: '',
      password: '',
      error: null,
    }
  },
  methods: {
    async login() {
        await this.$auth.loginWith('local', {
          data: {
            password: this.password,
            email: this.email
          }
        })
        .then(
          (response) => {
            this.$router.push('/')
          },
          (error) => {
            this.error = error.response.data.errors
          }
     
        )
    }
  }
}

</script>


<style></style>



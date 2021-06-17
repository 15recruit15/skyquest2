
<template> 
  <b-container fluid> 
      <div class="offset-lg-3 col-lg-6 col-md-8 offset-md-2 arrange-form blur-content">
        <h3 class = "form-title text-center">登録ページ</h3>
        <div class = "form-zone">

          <Notification :message="error" v-if="error" class="mb-4 pb-3" />

          <b-form @submit.prevent="signUp">
              <b-form-group label="名前:">
                <b-form-input placeholder="Enter your nickname" required v-model="name" type="text"></b-form-input>
              </b-form-group>
              <b-form-group label="メールアドレス:">
                <b-form-input placeholder="Enter email" required v-model="email" type="email"></b-form-input>
              </b-form-group>
              <b-form-group label="パスワード:">
                <b-form-input placeholder="Enter password" required v-model="password" type="password"></b-form-input>
              </b-form-group>
              <b-form-group label="パスワード確認用:">
                <b-form-input placeholder="password confirmation" required v-model="password_confirmation" type="password"></b-form-input>
              </b-form-group>
              <b-button block type="submit" variant="primary">Submit</b-button>
          </b-form>
        </div>
      </div>
  </b-container>
</template>

<script>

export default{
  auth: false,
  data: function () {
    return {
        name: '',
        email: '',
        password: '',
        password_confirmation: '',
        error: null
    }
  },
  methods: {
    async signUp() {
      try{
        await this.$axios.post('/api/auth',{
            name: this.name,
            email: this.email,
            password: this.password,
            password_confirmation: this.password_confirmation
        })
            
        await this.$auth.loginWith('local', {
          data: {
            password: this.password,
            email: this.email
          },
        })
        //console.log(response.data.data.name)
        //this.getUser(response.data.data.name)
        this.$router.push('/')
        
      }catch(e){
        this.error = e.response.data.errors.full_messages
      }
    }
  }
}
</script>


<style></style>



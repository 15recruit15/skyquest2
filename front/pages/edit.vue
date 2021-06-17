
<template> 
  <b-container fluid> 
      <div class="offset-lg-3 col-lg-6 col-md-8 offset-md-2 arrange-form blur-content">
        <h3 class = "form-title text-center">アカウント情報変更</h3>
        <div class = "form-zone">

          <Notification :message="error" v-if="error" class="mb-4 pb-3" />

          <b-form @submit.prevent="update">
              <b-form-group label="名前:">
                <b-form-input placeholder="Enter new nickname" required v-model="name" type="text"></b-form-input>
              </b-form-group>
              <b-form-group label="メールアドレス:">
                <b-form-input placeholder="Enter new email" required v-model="email" type="email"></b-form-input>
              </b-form-group>
              <b-form-group label="新しいパスワード:">
                <b-form-input placeholder="Enter new password" required v-model="password" type="password"></b-form-input>
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
  auth: true,
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
    async update() {
      try{
        await this.$axios.$put('/api/auth',{
            name: this.name,
            email: this.email,
            password: this.password,
            password_confirmation: this.password_confirmation
        })
        this.$router.push('/')
        
      }catch(e){
        this.error = e.response.data.errors.full_messages
      }
    }
  }
}
</script>


<style></style>



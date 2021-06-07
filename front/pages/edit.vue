
<template> 
  <b-container fluid> 
      <div class="offset-lg-3 col-lg-6 col-md-8 offset-md-2 arrange-form blur-content">
        <h1 class = "form-title text-center">パスワード変更</h1>
        <div class = "form-zone">

          <Notification :message="error" v-if="error" class="mb-4 pb-3" />

          <b-form @submit.prevent="update">
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
    async update() {
      try{
        await this.$axios.put('/api/auth',{
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



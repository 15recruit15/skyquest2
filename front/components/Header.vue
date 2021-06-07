<template> 
  <header>
    <b-navbar toggleable="lg" type="dark" variant="info">
      <b-navbar-brand to="/">Sky Quest</b-navbar-brand>

       <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav>
          <b-nav-item to="/way">パイロットへの道</b-nav-item>
          <b-nav-item to="/study">お勉強室</b-nav-item>
          <b-nav-item to="/community">掲示板</b-nav-item>
        </b-navbar-nav>
        <b-navbar-nav v-if="this.$auth.loggedIn" class="ml-auto">
          <b-nav-item-dropdown right>
            <template #button-content>
              <em>メニュー</em>
            </template>
            <b-dropdown-item to="/">パスワード変更</b-dropdown-item>
            <b-dropdown-item @click="logout">ログアウト</b-dropdown-item>
          </b-nav-item-dropdown>
        </b-navbar-nav>
        <b-navbar-nav class="ml-auto" v-else>
          <b-nav-item to="/login">ログイン</b-nav-item>
        </b-navbar-nav>
        
      </b-collapse>
    </b-navbar>
  </header>
</template>

<script>

export default{
  auth: false,
  data: function() {
    return {
      
    }
  },
  methods: {
    async logout() {
      await this.$auth.logout();
      localStorage.removeItem("access-token")
      localStorage.removeItem("client")
      localStorage.removeItem("uid")
      localStorage.removeItem("token-type")
      this.$router.push('/');
    }
  },
  //mounted(){
  //  if (localStorage.getItem("name")) {
  //    this.user_name = localStorage.getItem("name");
  //  }
  //}
}

</script>


<style></style>



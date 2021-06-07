<template> 
  <div class = "container-fluid"> 
    <div class="blur-content offset-sm-1 col-sm-10">
      <h1>{{ this.$auth.user.name }}</h1>
    </div>
  </div>
</template> 

<script>
  export default({
    middleware: ['auth'],

  })
</script>

<style></style>
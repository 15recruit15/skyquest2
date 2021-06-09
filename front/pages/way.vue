<template> 
  <b-container fluid  style="color: black;"> 
    <b-col offset-md="1" md="10" class="text-center bg-light mb-5 py-3" style="border-radius: 5px;">
      <h2> パイロットを目指す方法　(準備中）</h2>
    </b-col>
    <b-row no-gutters>
      <b-col offset-md="1" md="5" class="bg-light p-4">

        <h3 style="border-bottom: 1px solid black;">自社養成</h3>
        <ul>
          <li><b-link to="#">ANA</b-link></li>
          <li><b-link to="#">ANA Wings</b-link></li>
          <li><b-link to="#">Peach</b-link></li>
          <li><b-link to="#">スカイマーク</b-link></li>
          <li><b-link to="#">JAL</b-link></li>
          <li><b-link to="#">J-AIR</b-link></li>
        </ul>
        
        <h3 style="border-bottom: 1px solid black;">大学</h3>
        <ul>
          <li><b-link to="#">航空大学校</b-link></li>
          <li><b-link to="#">東海大学</b-link></li>
          <li><b-link to="#">桜美林大学</b-link></li>
          <li><b-link to="#">法政大学</b-link></li>
          <li><b-link to="#">崇城大学</b-link></li>
          <li><b-link to="#">第一工科大学</b-link></li>
          <li><b-link to="#">千葉科学大学</b-link></li>
        </ul>
      </b-col>

      <b-col md="5" class="bg-light p-4"> 
        <h3 style="border-bottom: 1px solid black;">自衛隊</h3>
        <ul>
          <li><b-link to="#">航空自衛隊</b-link></li>
          <li><b-link to="#">海上保安庁</b-link></li>
        </ul>

        <h3 style="border-bottom: 1px solid black;">フライトスクール</h3>
        <ul>
          <li><b-link to="#">朝日航空</b-link></li>
          <li><b-link to="#">本田航空</b-link></li>
          <li><b-link to="#">and more...</b-link></li>
          <li><b-link to="#">海外留学</b-link></li>
        </ul>
      </b-col>
    </b-row>  
  </b-container>

</template> 

<script>
  export default({
    
  })
</script>

<style lang="scss" scoped>
li{
  font-size: 1.2rem;
  padding-bottom: 2px;
}
</style>
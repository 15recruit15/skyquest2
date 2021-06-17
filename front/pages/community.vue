<template> 
  <b-container fluid> 

        <b-col offset-md="2" md="8" class="blur-content mb-5 text-center">
            <h3  style="text-decoration:underline;">空の話をしましょう！質問も待ってます</h3>
        </b-col>
        
        <b-col offset-md="2" md="8" class="blur-content mb-5">
          <b-overlay :show="show" variant="light" opacity=0.5>
            <template #overlay>
              <div class="text-center" style="color: black;">
                <p><strong>掲示板の利用は本人確認が必要です</strong></p>
                <b-button to="/login" variant="info" class="mt-1"> ログインページへ </b-button>
              </div>
            </template>
              <b-form @submit.prevent="onSubmit" @reset="onReset" class="mb-4">
                <b-form-group
                  id="input-group-1"
                  label="タイトル (必須)"
                  label-for="input-1"
                >
                  <b-form-input
                    id="input-1"
                    v-model="form.title"
                    type="text"
                    placeholder="Title"
                    required
                  ></b-form-input>
                </b-form-group>

                <b-form-group id="" label="本文 (必須)" label-for="textarea" class="mb-5">
                  <b-form-textarea
                    id="textarea"
                    v-model="form.content"
                    placeholder=""
                    rows="10"
                    required
                    no-resize
                  ></b-form-textarea>
                </b-form-group>

                <b-form-group>
                  <b-form-file
                    accept="image/jpeg, image/png, image/gif" 
                    v-model="form.image"
                    placeholder="画像選択 (任意)"
                    size="sm"
                    class="mb-5"
                  ></b-form-file>
                </b-form-group>

                <b-button size="lg" pill type="submit" variant="primary" class="mr-3">　投稿　</b-button>
                <b-button size="lg" pill type="reset" variant="outline-danger">リセット</b-button>
              </b-form>
          </b-overlay>
          <div class="mb-4">
            <ul>
              <li>【ファイルサイズ】　2MBまで</li>
              <li>【ファイルタイプ】　gif,jpg,png</li>
              <li>【検索方法】　検索したい単語をスペースで区切って指定してください。</li>
              <li>　質問される時は、出来るだけ「具体的」にお願いします。</li>
            </ul>
          </div>
        </b-col>
        <b-col offset-md="2" md="8" >
          <div >
            <div v-for="(p,i) in posts" :key="p.id" class="questions blur-content mb-3">
                <b-card bg-variant="transparent">
                  <b-card-title class="mb-1">{{ i+1 }}. {{ p.title }}</b-card-title>
                  <b-card-text class="mb-3" style="color: #CCCCCC; border-bottom: 1px solid #CCCCCC;">投稿日: {{p.created_at.substr(0,10)}}</b-card-text>
                  <b-card-text class="pb-3" style="font-size: 1.3rem;">{{p.content}}</b-card-text>
                  <b-card-text>{{p.user}}</b-card-text>
                  <b-card-img v-bind:src="makeURL(p.image.url)"></b-card-img>   
                </b-card>
            </div>
          </div>
        </b-col>
    
  </b-container>
</template> 

<script>
export default {
  data() {
    return {
      form: {
        title: '',
        content: '',
        image: null
      },
      posts: [],
    }
  },
  methods: {
    async onSubmit() {
      if (window.confirm("投稿しますか？")){
        try{
          let formData = new FormData()
          formData.append("post[title]", this.form.title)
          formData.append("post[content]", this.form.content)
          formData.append("post[image]", this.form.image)
          const res = await this.$axios.$post('/posts',formData)
          this.posts.unshift(res)
          alert('投稿しました')
          this.onReset()
        }catch(e){
          this.error = e.response.data.errors
        }
      }
    },
    onReset() {
      this.form.title = ''
      this.form.content = ''
      this.form.image = null
    },
    makeURL(url){
      console.log(process.env.NODE_ENV);
      if (process.env.NODE_ENV === "production"){
         return url
      }else{
        let newURL = "http://localhost:3000" + url
        return newURL
      }
      end
    }
  },
  computed: {
    show: function() {
      return !this.$auth.loggedIn
    }
  },
  
  mounted() {
      this.$axios.$get('/posts').then(response =>{
        this.posts = response
      })
  }
}
</script>

<style lang="scss" scoped>

.questions{
  list-style: none;
  padding: 0;
  border-radius: 5px;
  li{
    padding: 10px 0;
  }
  .user{
    margin-top: 5em;
    padding-top: 0;
  }
  .title{
    display: block;
    margin-left: 55px;
    font-size: 1.5em;
    img{
      display: block;
      padding: 5px 0;
    }
  }
}
</style>
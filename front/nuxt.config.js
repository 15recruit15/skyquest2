export default {

  head: {
    title: 'SkyQuest',
    htmlAttrs: {
      lang: 'en'
    },
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },

  css: [
    './assets/css/application.scss'
  ],

  plugins: [
    '~/plugins/axios.js'
  ],

  components: true,

  loading: './components/Loading.vue',

  loadingIndicator: {
    name: 'circle',
    color: '#3B8070',
    background: 'white'
  },

  buildModules: [
  ],

  modules: [
    'bootstrap-vue/nuxt',
    '@nuxtjs/axios',
    '@nuxtjs/auth'
  ],

  build: {
  },

  server: {
      port: 3000,
      host: '0.0.0.0',
  },

  axios: {
    //baseURL: 'http://localhost:3000',
    baseURL: 'https://skyquest-japan-pilot.xyz',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      //'Access-Control-Allow-Origin': '*'
    },
    // https: true,
    //proxy: true
 },

router: {
  //middleware: ['auth']
},
 
auth: {
  redirect: {
    login: '/login',
    logout: '/',
    callback: false,
    home: '/login',
   },
  strategies: {
    local: {
      endpoints: {
        login: { url: '/api/auth/sign_in', method: 'post',propertyName: 'token'},
        logout: { url: '/api/auth/sign_out', method: 'delete' },
        user: false //{ url: '/users/show', method: 'get'}
       },
     }
   },
 }

}

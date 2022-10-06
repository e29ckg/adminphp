Vue.createApp({
  data() {
    return {
      q:'2254',
      url_base:'',
      url_base_app:'',
      url_base_now:'',
      datas: [],
      user: '',
      user_form: {
        username : '',
        password : '',
        repassword : '',
        fname : '',
        name : '',
        sname : '',
        dep : '',
        workgroup : '',
        phone : '',
        bank_account : '',
        bank_comment : '',
        act : 'insert',
      },
    

    isLoading : false,
  }
  },
  mounted(){
    this.url_base = window.location.protocol + '//' + window.location.host;
    this.url_base_app = window.location.protocol + '//' + window.location.host + '/adminphp/';
    // const d = 
    this.get_users()    
  },
  watch: {
    
  },
  methods: {
    get_users(){
      this.isLoading = true
      axios.post('../../server/users/users.php')
      .then(response => {
          console.log(response.data.respJSON);
          if (response.data.status) {
              this.datas = response.data.respJSON;
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
      .finally(() => {
        this.isLoading = false;
      })
    },
    get_user(uid){
      this.isLoading = true
      axios.post('../../server/users/user.php',{uid:uid})
      .then(response => {
          console.log(response.data.respJSON);
          if (response.data.status) {
              this.user = response.data.respJSON;
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
      .finally(() => {
        this.isLoading = false;
      })
      this.$refs.show_modal_user.click()
    },
    reset_user(){
      this.user = '';
    },
    user_form_insert_show(){
      this.$refs.show_modal_user_form.click()
      this.user_form.act = 'insert'
    },
    user_insert(){
      console.log('user_insert')
    },
    close_modal_user_form(){}
  },
  
        

}).mount('#usersIndex')

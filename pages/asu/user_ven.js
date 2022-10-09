Vue.createApp({
  data() {
    return {
      q:'2254',
      ven_names:'',
      ven_name_subs:'',
      vu_form:'',
      vu_form_act:'insert',
      isLoading : false,
    }
  },
  mounted(){
    this.url_base = window.location.protocol + '//' + window.location.host;
    this.url_base_app = window.location.protocol + '//' + window.location.host + '/adminphp/';
    // const d = 
    this.get_ven_names()
    this.get_ven_name_subs()
  },
  watch: {
    
  },
  methods: {
    get_ven_names(){
      this.isLoading = true
      axios.post('../../server/asu/get_ven_names.php')
      .then(response => {
          console.log(response.data.respJSON);
          if (response.data.status) {
              this.ven_names = response.data.respJSON;
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
      .finally(() => {
        this.isLoading = false;
      })
    },
    vu_add(){
      this.$refs.show_vu_form.click()
    },
    get_ven_name_subs(){
      this.isLoading = true
      axios.post('../../server/asu/get_ven_name_subs.php')
      .then(response => {
          console.log(response.data.respJSON);
          if (response.data.status) {
              this.ven_name_subs = response.data.respJSON;
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
      .finally(() => {
        this.isLoading = false;
      })
    },
    
  },
  
        

}).mount('#userVen')

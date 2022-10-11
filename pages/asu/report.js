Vue.createApp({
  data() {
    return {
      q:'2254',
      url_base:'',
      url_base_app:'',
      url_base_now:'',
      datas: '',    
    

    isLoading : false,
  }
  },
  mounted(){
    this.url_base = window.location.protocol + '//' + window.location.host;
    this.url_base_app = window.location.protocol + '//' + window.location.host + '/adminphp/';
    this.get_ven_all()
  },
  watch: {
    
  },
  methods: {
    get_ven_all(){
      this.isLoading = true
      axios.get('../../server/asu/report/reportK.php')
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
    
    

  },
  
        

}).mount('#asuReport')

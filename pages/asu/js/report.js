Vue.createApp({
  data() {
    return {
      q:'2254',
      url_base:'',
      url_base_app:'',
      url_base_now:'',
      datas: '',    
      ven_coms:'',
      ven_coms_g:'',

    isLoading : false,
  }
  },
  mounted(){
    this.url_base = window.location.protocol + '//' + window.location.host;
    this.url_base_app = window.location.protocol + '//' + window.location.host + '/adminphp/';
    // this.get_ven_all()
    this.get_ven_coms()
  },
  watch: {
    
  },
  methods: {
    get_ven_coms(){
      this.isLoading = true
      axios.post('../../server/asu/get_ven_coms.php')
      .then(response => {
          if (response.data.status) {
              this.ven_coms = response.data.respJSON;
              this.ven_coms_g = response.data.respJSON_G;

          } 
      })
      .catch(function (error) {
          console.log(error);
      })
      .finally(() => {
        this.isLoading = false;
      })
    },

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

    print(vcid){
      axios.post('../../server/asu/report/report.php',{vcid:vcid})    
          .then(response => {
              if (response.data.status) {
                var print = JSON.stringify(response.data);    
                localStorage.setItem("print",print);
                window.open('./report-print.php','_blank')

              }
          })
          .catch(function (error) {
              console.log(error);
          });

    }, 
    
    

  },
  
        

}).mount('#asuReport')

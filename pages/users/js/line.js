Vue.createApp({
  data() {
    return {
      q:'',
      url_base:'',
      url_base_app:'',
      url_base_now:'',
      datas: [],    
      line_form:'',
      act : 'insert',

    isLoading : false,
  }
  },
  mounted(){
    this.url_base = window.location.protocol + '//' + window.location.host;
    this.url_base_app = window.location.protocol + '//' + window.location.host + '/adminphp/';
    // const d = 
    this.get_lines()  
  },
  watch: {
    q(){
      this.ch_search_user()
    }
  },
  methods: {
    get_lines(){
      this.isLoading = true
      axios.post('../../server/users/line/get_lines.php')
      .then(response => {
          
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
    get_line(id){
      this.isLoading = true
      axios.post('../../server/users/line/get_line.php',{id:id})
      .then(response => {          
          if (response.data.status) {
              this.line_form = response.data.respJSON;
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
      .finally(() => {
        this.isLoading = false;
      })
      
    },   

    line_update(id){
      this.get_line(id)
      this.$refs.show_modal_line_form.click()
      this.act = 'update'
              
    },
    user_update_save(uid){
      this.isLoading = true
      axios.post('../../server/users/user_update_save.php',{user:this.user_form})
      .then(response => {
          
          if (response.data.status) {
              this.get_users()
              this.$refs.close_modal_user_update_form.click()
              let icon = 'success'
              let message = response.data.message
              this.alert(icon,message,timer=1500)
          }else{
            let icon = 'error'
              let message = response.data.message
              this.alert(icon,message,timer=0)
          }
      })
      .catch(function (error) {
          console.log(error);
      })
      .finally(() => {
        this.isLoading = false;
      })      
    },



    user_form_insert_show(){
      this.close_modal_user_form()
      this.$refs.show_modal_user_form.click()
      this.user_form.act = 'insert'
    },


    line_insert(){

      // console.log('user_insert')
      axios.post('../../server/users/line/line_insert.php',{line:this.line_form})
            .then(response => {
                
                if (response.data.status) {
                  let icon = 'success' 
                  this.alert(icon,response.data.message,1000)
                  this.$refs.close_modal_user_form.click()
                  this.get_users()
                }else{
                  let icon = 'warning' 
                  let message = response.data.message
                  this.alert(icon,message,0)
                } 
            })
            .catch(function (error) {
                console.log(error);
            })
      

    },

    close_modal_user_form(){
      this.user_form = {username : '', password : '', repassword : '', fname : '', name : '', sname : '', dep : '',
                        workgroup : '', phone : '', bank_account : '', bank_comment : '', act : 'insert'}
    },
   

    alert(icon,message,timer=0){
        swal.fire({
        icon: icon,
        title: message,
        showConfirmButton: true,
        timer: timer
      });
    },

    
    
    user_status(id,st){
      if(st == 1){
        
            this.isLoading = true;
            axios.post('../../server/users/line/line_status.php',{user_id:id,st:st})
                .then(response => {
                    
                    if (response.data.status) {
                        let icon = 'success'
                        let message = response.data.message
                        this.alert(icon,message,timer=1500)
                        this.get_users()
                    }else{
                      let icon = 'error'
                      let message = response.data.message
                      this.alert(icon,message,timer=0)
                    }
                })
                .catch(function (error) {
                    console.log(error);
                })
                .finally(() => {
                  this.isLoading = false;
                })   
        

      }else{
        this.isLoading = true;
        axios.post('../../server/users/user_update_status.php',{user_id:id,st:st})
                .then(response => {
                    
                    if (response.data.status) {
                        let icon = 'success'
                        let message = response.data.message
                        this.alert(icon,message,timer=1500)
                        this.get_users()
                    }else{
                      let icon = 'error'
                      let message = response.data.message
                      this.alert(icon,message,timer=0)
                    }
                })
                .catch(function (error) {
                    console.log(error);
                })
                .finally(() => {
                  this.isLoading = false;
                })   
      }
    },
    ch_search_user(){
      console.log(this.q)
      if(this.q.length > 0){
        this.isLoading = true;
        axios.post('../../server/users/user_search.php',{q:this.q})
          .then(response => {
              if (response.data.status){
                this.datas = response.data.respJSON;                    
              }
          })
          .catch(function (error) {
              console.log(error);
          })
          .finally(() => {
            this.isLoading = false;
          })
      }else{
        this.get_users()
      }
    },
  },
  
        

}).mount('#usersLine')

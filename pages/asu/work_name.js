Vue.createApp({
  data() {
    return {
      ven_names :'',
      ven_name_form : {
        name : '',
        srt : ''
      },
      ven_name_form_act:'insert',
      isLoading : false,
    }
  },
  mounted(){
    this.url_base = window.location.protocol + '//' + window.location.host;
    this.url_base_app = window.location.protocol + '//' + window.location.host + '/adminphp/';
    this.get_ven_names()
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
    get_ven_name(id){
      this.isLoading = true
      axios.post('../../server/asu/get_ven_name.php',{id:id})
      .then(response => {
          console.log(response.data.respJSON);
          if (response.data.status) {
            this.ven_name_form = response.data.respJSON;
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
      .finally(() => {
        this.isLoading = false;
      })      
    },
    ven_name_save(){
      if(this.ven_name_form.name != '' ){
          axios.post('../../server/asu/ven_name_act.php',{ven_name:this.ven_name_form, act:this.ven_name_form_act})
            .then(response => {
                console.log(response.data.respJSON);
                if (response.data.status) {
                  this.get_ven_names()
                  let icon = 'success' 
                  this.alert(icon,response.data.message,1000)
                  this.$refs.close_ven_name_form.click()
                  this.clear_ven_name_form()
                }else{
                  let icon = 'warning' 
                  let message = response.data.message
                  this.alert(icon,message,0)
                } 
            })
            .catch(function (error) {
                console.log(error);
            })
      }else{
        const message = []
        if(this.ven_name_form.name == ''){message.push('กรุณากรอกข้อมูลให้ครบ')}
        let icon = 'warning' 
        this.alert(icon,message,0)
      }
    },
    clear_ven_name_form(){
      this.ven_name_form = {name : ''}
      this.ven_name_form_act = 'insert'
    },
    ven_name_update_show_form(id){
      this.ven_name_form_act = 'update'
      this.get_ven_name(id)
      this.$refs.show_ven_name_form.click()
    },
    ven_name_del(){
      Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
      }).then((result) => {
        if (result.isConfirmed) {
          axios.post('../../server/asu/ven_name_act.php',{ven_name:this.ven_name_form,act:'delete'})
                .then(response => {
                    console.log(response.data.respJSON);
                    if (response.data.status) {
                      this.get_ven_names()
                      let icon = 'success' 
                      this.alert(icon,response.data.message,1000)
                      this.$refs.close_ven_name_form.click()
                      this.clear_ven_name_form()
                    }else{
                      let icon = 'warning' 
                      let message = response.data.message
                      this.alert(icon,message,0)
                    } 
                })
                .catch(function (error) {
                    console.log(error);
                  })
        }
      })

    },




    view(uid){
      this.get_user(uid)
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
      if(this.user_form.username != '' && this.user_form.password != '' && this.user_form.repassword != '' && this.user_form.fname != '' 
        && this.user_form.name != '' && this.user_form.sname != '' && this.user_form.password == this.user_form.repassword){
          axios.post('../../server/users/user_insert.php',{user:this.user_form})
            .then(response => {
                console.log(response.data.respJSON);
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
      }else{
        const message = []
        if(this.user_form.password != this.user_form.repassword){message.push('password ไม่ตรงกัน')}
        if(this.user_form.username == '' || this.user_form.password == '' || this.user_form.repassword == '' || this.user_form.fname == '' 
        || this.user_form.name == '' || this.user_form.sname == ''){message.push('กรุณากรอกข้อมูลให้ครบ')}
        let icon = 'warning' 
        this.alert(icon,message,0)
      }
    },
    close_modal_user_form(){
      this.user_form = {username : '', password : '', repassword : '', fname : '', name : '', sname : '', dep : '',
                        workgroup : '', phone : '', bank_account : '', bank_comment : '', act : 'insert'}
    },
    get_sel_fname(){
      axios.post('../../server/users/get_sel_fname.php')
      .then(response => {
          console.log(response.data.respJSON);
          if (response.data.status) {
            this.sel_fname = response.data.respJSON;
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
    },
    get_sel_dep(){
      axios.post('../../server/users/get_sel_dep.php')
      .then(response => {
          console.log(response.data.respJSON);
          if (response.data.status) {
            this.sel_dep = response.data.respJSON;
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
    },
    get_sel_group(){
      axios.post('../../server/users/get_sel_group.php')
      .then(response => {
          console.log(response.data.respJSON);
          if (response.data.status) {
            this.sel_workgroup = response.data.respJSON;
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
    },
    alert(icon,message,timer=0){
        swal.fire({
        icon: icon,
        title: message,
        showConfirmButton: true,
        timer: timer
      });
    },
    user_update(uid){
      this.isLoading = true
      axios.post('../../server/users/user.php',{uid:uid})
      .then(response => {
          console.log(response.data.respJSON);
          if (response.data.status) {
              this.user_form = response.data.respJSON;
              this.$refs.show_modal_user_update_form.click()
          } 
      })
      .catch(function (error) {
          console.log(error);
      })
      .finally(() => {
        this.isLoading = false;
      })      
    },
    user_update_save(uid){
      this.isLoading = true
      axios.post('../../server/users/user_update_save.php',{user:this.user_form})
      .then(response => {
          console.log(response.data.respJSON);
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
    user_status(id,st){
      if(st == 1){
        
            this.isLoading = true;
            axios.post('../../server/users/user_update_status.php',{user_id:id,st:st})
                .then(response => {
                    console.log(response.data.respJSON);
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
                    console.log(response.data.respJSON);
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

         
    
    }
  },  

}).mount('#workName')

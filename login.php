<?php 
  
  session_start(); // ประกาศ การใช้งาน session
  session_destroy(); // ลบตัวแปร session ทั้งหมด
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
  <title>Login Page | App</title>
  <link rel="shortcut icon" type="image/x-icon" href="assets/images/uploads/icon.ico">
  <!-- stylesheet -->
  <!-- <link rel="stylesheet" href="assets/vendor/fonts/boxicons.css" > -->
  <!-- <link rel="stylesheet" href="assets/vendor/css/core.css" class="template-customizer-core-css" > -->
  <!-- <link rel="stylesheet" href="assets/vendor/css/theme-default.css" class="template-customizer-theme-css" > -->
  <!-- <link rel="stylesheet" href="assets/css/demo.css" > -->
  <link rel="stylesheet" href="assets/vendor/css/pages/page-auth.css" >
  <link rel="stylesheet" href="./node_modules/sweetalert2/dist/sweetalert2.min.css">
  <link rel="stylesheet" href="./node_modules/bootstrap/dist/css/bootstrap.css">
</head>
<body>
  <div class="container-xxl" id="applogin">    
    
    <div class="authentication-wrapper authentication-basic container-p-y">
      <div class="authentication-inner">
        <div class="card">
          <div class="card-body">
            <div class="app-brand justify-content-center">
              <a href="index.html" class="app-brand-link gap-2">
                <span class="app-brand-text demo text-body fw-bolder"> </span>
              </a>
            </div>
            <h4 class="mb-2"></h4>
            <p class="mb-4">โปรดลงชื่อเข้าใช้งาน</p>
            <!-- Form Login -->
            <form id="formAuthentication" class="mb-3" @submit.prevent="login()">
            <!-- <form id="formAuthentication" class="mb-3" action="server/auth/login.php" method="POST"> -->
              <div class="mb-3">
                <label for="email" class="form-label">Username</label>
                <input
                  type="text"
                  class="form-control"
                  id="email"
                  name="username"
                  placeholder="Enter your username"
                  autofocus
                  v-model="user"
                >
              </div>
              <div class="mb-3 form-password-toggle">
                <div class="d-flex justify-content-between">
                  <label class="form-label" for="password">Password</label>
                </div>
                <div class="input-group input-group-merge">
                  <input
                    :type="pass_type"
                    id="password"
                    class="form-control"
                    name="password"
                    v-model="pass"
                    placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                  >
                  <span @click="click_hide()" id="show_pass" class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                </div>
              </div>
              <div class="mb-3">
                <button class="btn btn-primary d-grid w-100 mute" type="submit" name="authen" v-if="!isLoading">Sign in</button>
                <button class="btn btn-primary d-grid w-100 mute" type="submit" name="authen" disabled v-else>Loading...</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- script -->
  <!-- <script src="assets/vendor/libs/jquery/jquery.js"></script>
  <script src="assets/vendor/libs/popper/popper.js"></script> -->
  <script src="assets/vendor/js/bootstrap.js"></script>
  <script src="./node_modules/vue/dist/vue.global.js"></script>
  <script src="./node_modules/vue/dist/vue.global.prod.js"></script>
  <script src="./node_modules/axios/dist/axios.js"></script>
  <script src="./node_modules/sweetalert2/dist/sweetalert2.min.js"></script>
  <script>
    Vue.createApp({
    data() {
      return {
        user:'',        
        pass:'',        
        isLoading: false,
        pass_type:'password'
      }
    },
    mounted(){     
      
    },
    watch: {
      
    },
    methods: {
      click_hide(){
        if(this.pass_type == 'password'){
          this.pass_type = 'text'
        }else{
          this.pass_type = 'password'
        }
      }, 
      login(){
        this.isLoading = true;
        axios.post('./server/auth/login.php',{
          username:this.user,
          password:this.pass
        })
        .then(response => {
          if (response.data.status) {
            Swal.fire({
              // position: 'top-end',
              icon: 'success',
              title: 'เข้าสู่ระบบ',
              showConfirmButton: false,
              timer: 3000
            })
            setTimeout(()=> {
							var url_success = "pages/dashboard";
              window.open(url_success,'_self')
						}, 1001);
            
          } else{
            var icon    = 'warning'
            var message = response.data.message                
            this.alert(icon,message,0)

          }
        })
        .catch(function (error) {        
          console.log(error);
        })
        .finally(() => {
            this.isLoading = false;
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
          
    }
  }).mount('#applogin')
  
  
  </script>
</body>
</html>

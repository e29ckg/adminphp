<?php 

require_once('../../server/authen.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" >
    <title> Dashboard | App</title>
    <link rel="icon" type="image/x-icon" href="../../assets/images/icon.ico" >

    <link href="https://fonts.googleapis.com/css2?family=Prompt:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../node_modules/sweetalert2/dist/sweetalert2.min.css">
    
    <link rel="stylesheet" href="../../assets/vendor/fonts/boxicons.css" >
    <link rel="stylesheet" href="../../assets/vendor/css/core.css" class="template-customizer-core-css" >
    <link rel="stylesheet" href="../../assets/vendor/css/theme-default.css" class="template-customizer-theme-css" >
    <link rel="stylesheet" href="../../assets/css/demo.css" >
    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <script src="../../assets/js/config.js"></script>
            
</head>
<body>
    <div class="layout-wrapper layout-content-navbar" >
        <div class="layout-container">
            <?php require_once('../includes/_sidebar.php') ?>
            <div class="layout-page">
                <?php require_once('../includes/_navbar.php') ?>

                <!-- Content wrapper -->
                <div class="content-wrapper" id="usersIndex">
                    <div class="container-xxl flex-grow-1 container-p-y" >                        
                        <div class="row">
                            <div class="col-12 ">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                            <button class="btn btn-success btn-md" @click="user_form_insert_show()">เพิ่ม</button>
                                        </div>
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">ชื่อ-สกุล</th>
                                                <th scope="col">ตำแหน่ง</th>
                                                <th scope="col">act</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr v-for="d,index in datas">
                                                    <th scope="row">{{index+1}}</th>
                                                    <td>{{d.name}}</td>
                                                    <td>{{d.dep}}</td>
                                                    <td>
                                                        <button class="btn btn-primary btn-sm me-2 mb-1" @click="get_user(d.uid)">view</button>    
                                                        <button class="btn btn-warning btn-sm me-2 mb-1" >แก้ไข</button>    
                                                        <button class="btn btn-danger btn-sm mb-1">ลบ</button>    
                                                    </td>
                                                </tr>                                                
                                            </tbody>
                                            </table>
                                            <!-- {{datas}} -->
                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" ref="show_modal_user" hidden>
                        Launch static backdrop modal
                    </button>
  
                    <!-- Modal view -->
                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">User</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" @click="reset_user()" ref="close_modal_user"></button>
                                </div>
                                <div class="modal-body">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">{{user.id}}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">name</th>
                                                <td>{{user.name}}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">ตำแหน่ง</th>
                                                <td>{{user.dep}}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">กลุ่มงาน</th>
                                                <td>{{user.workgroup}}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Phone</th>
                                                <td>{{user.phone}}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">เลขที่บัญชี</th>
                                                <td>{{user.bank_account}}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">สาขา</th>
                                                <td>{{user.bank_comment}}</td>
                                            </tr>                                            
                                        </tbody>
                                    </table>
                                    {{user}}
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop_form" ref="show_modal_user_form" hidden>
                        Launch static backdrop modal
                    </button>
  
                    <!-- Modal view -->
                    <div class="modal fade" id="staticBackdrop_form" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">User</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" @click="reset_user()" ref="close_modal_user_form"></button>
                                </div>
                                <div class="modal-body">
                                    <form @submit.prevent="user_insert">
                                        <div class="mb-3">
                                            <label for="exampleInputEmail1" class="form-label" >username</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" v-model="user_form.username">
                                            <!-- <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div> -->
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword1" class="form-label">Password</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" v-model="user_form.password">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputPassword2" class="form-label">RePassword</label>
                                            <input type="password" class="form-control" id="exampleInputPassword2" v-model="user_form.repassword">
                                        </div>
                                        
                                        <button type="submit" class="btn btn-primary">บันทึก</button>
                                    </form>
                                    {{user_form}}
                                </div>
                            </div>
                        </div>
                    </div>
    
                    
                    <div class="content-backdrop fade"></div>

                </div>
            </div>
        </div>
        <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <?php require_once('../includes/_footer.php') ?>

    <!-- <script src="../../assets/vendor/libs/jquery/jquery.js"></script> -->
    <script src="../../assets/vendor/libs/popper/popper.js"></script>
    <script src="../../assets/vendor/js/bootstrap.js"></script>
    <script src="../../assets/vendor/js/menu.js"></script>
    <script src="../../assets/js/main.js"></script>
    <script src="../../node_modules/vue/dist/vue.global.js"></script>
    <script src="../../node_modules/vue/dist/vue.global.prod.js"></script>
    <script src="../../node_modules/axios/dist/axios.js"></script>
    <script src="../../node_modules/sweetalert2/dist/sweetalert2.min.js"></script>
    <script src="./index.js"></script>
</body>
</html>


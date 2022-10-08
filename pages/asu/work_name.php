<?php 

require_once('../../server/authen.php'); 

?>
<!DOCTYPE html>
<html lang="en">
<head>
<?php require_once('../includes/_header.php') ?>

</head>
<body>
<div id="app">
        <?php require_once('../includes/_sidebar.php') ?>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>
            <div class="page-heading">
                <h3>ชื่อเวร/กลุ่มหน้าที่</h3>
                <!-- Button trigger modal user update form-->
            </div>
            <div class="page-content" id="workName">
                <div class="mb-2">
                    <button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#ven_name" ref="show_ven_name_form" >
                        เพิ่มชื่อเวร
                    </button>
                </div>
                <section class="row">
                    <div class="col-12 col-lg-12">
                        
                        {{ven_names}}
                        <div class="row">
                            <div class="col col-4" v-for="vn in ven_names">                                
                                <div class="card" >
                                    <div class="card-body">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th colspan="2" class="text-center">{{vn.name}}</th>
                                                    <th class="text-center">
                                                        <button class="btn btn-warning btn-sm" @click="ven_name_update_show_form(vn.id)">แก้ไขชื่อ</button>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">1</th>
                                                    <td>Mark</td>
                                                    <td class="text-center"><button class="btn btn-danger btn-sm">ลบ</button></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">2</th>
                                                    <td>Jacob</td>
                                                    <td>@fat</td>
                                                </tr>
                                                <tr>
                                                    <td>@twitter</td>
                                                    <td>@twitter</td>
                                                    <td>ลบ</td>
                                                </tr>

                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <td colspan="3" class="text-center">
                                                        <button class="btn btn-success btn-sm">เพิ่มหน้าที่</button>
                                                    </td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            
                        </div>    
                    </div>
                </section>

                

                <!-- Modal VenName Form -->
                <div class="modal fade" id="ven_name" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel"v-if="ven_name_form.act == 'insert'">เพิ่มชื่อเวร</h5>
                                <h5 class="modal-title" id="staticBackdropLabel" v-else>แก้ไขชื่อเวร</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" @click="clear_ven_name_form" ref="close_ven_name_form"></button>
                            </div>
                            <div class="modal-body">
                                <form @submit.prevent="ven_name_save">                                    
                                    <div class="row">                                        
                                        <div class="col mb-3">
                                            <label for="namef" class="form-label">ชื่อเวร</label>
                                            <input type="text" class="form-control" id="namef" v-model="ven_name_form.name">
                                        </div>
                                        <div class="col mb-3">
                                            <label for="srt" class="form-label">ลำดับ</label>
                                            <input type="number" class="form-control" id="srt" v-model="ven_name_form.srt">
                                        </div>
                                    </div>
                                    <div class="pull-end">
                                        <button class="btn btn-danger" v-if="ven_name_form_act !='insert'" @click.prevent="ven_name_del()">ลบ {{ven_name_form.id}}</button>
                                        <button type="submit" class="btn btn-primary">บันทึก</button>
                                    </div>
                                </form>
                                {{ven_name_form}}
                                {{ven_name_form_act}}
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <?php require_once('../includes/_footer.php') ?>
    <script src="../../assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../../assets/js/bootstrap.bundle.min.js"></script>

    <script src="../../assets/js/main.js"></script>
    <!--  -->
    <script src="../../node_modules/vue/dist/vue.global.js"></script>
    <script src="../../node_modules/vue/dist/vue.global.prod.js"></script>
    <script src="../../node_modules/axios/dist/axios.js"></script>
    <script src="../../node_modules/sweetalert2/dist/sweetalert2.min.js"></script>
    <script src="./work_name.js"></script>
</body>

</html>
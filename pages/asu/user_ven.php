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
                <h3>เตรียมคนอยู่เวร</h3>
            </div>

            <div class="page-content" id="userVen" v-cloak>               
                <section class="row" v-for="vn in ven_names">
                    <div v-for="vns in ven_name_subs" >                         
                        <div class="col" >
                            <div class="card-body" v-if="vn.id == vns.ven_name_id">
                                <h5 class="card-title" v-if="vn.DN == 'กลางวัน'">{{vn.name}} (☀️{{vn.DN}}) {{vns.name}} </h5>
                                <h5 class="card-title" v-if="vn.DN == 'กลางคืน'">{{vn.name}} (🌙{{vn.DN}}) {{vns.name}} </h5>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" >นายพเยาว์ สนพลาย ลบ</li>
                                    <li class="list-group-item"><button class="btn btn-success" @click="vu_add">เพิ่ม</button></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </section>

                <!-- Modal venUser Form -->
                <button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#ven_user" ref="show_vu_form" hidden >
                        เพิมผู้อยู่เวร
                </button>
                <!-- Modal venUser Form -->
                <div class="modal fade" id="ven_user" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel"v-if="vu_form_act == 'insert'">เพิ่มชื่อผู้อยู่เวร</h5>
                                <h5 class="modal-title" id="staticBackdropLabel" v-else>แก้ไขชื่อผู้อยู่เวร</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" @click="clear_vu_form" ref="close_vu"></button>
                            </div>
                            <div class="modal-body">
                                <form @submit.prevent="vu_save">                                    
                                    <div class="row mb-3">                                        
                                        <div class="col mb-3">
                                            <label for="srt" class="form-label">ลำดับ</label>
                                            <!-- <input type="number" class="form-control" id="srt" v-model="ven_name_form.srt"> -->
                                        </div>
                                        <div class="col mb-3">
                                            <label for="namef" class="form-label">ชื่อเวร</label>
                                            <!-- <input type="text" class="form-control" id="namef" v-model="ven_name_form.name"> -->
                                        </div>
                                        <div class="col mb-3">
                                            <label for="DN" class="form-label">กลางวัน/กลางคืน</label>
                                            <!-- <input type="text" class="form-control" id="DN" v-model="ven_name_form.DN"> -->
                                            <!-- <select class="form-select" aria-label="Default select example" v-model="ven_name_form.DN">
                                                <option value="กลางวัน">กลางวัน</option>
                                                <option value="กลางคืน">กลางคืน</option>
                                            </select> -->
                                        </div>
                                    </div>
                                    <div class="d-grid gap-2">
                                        <!-- <button type="button" class="col-auto me-auto btn btn-danger" v-if="vu_form_act !='insert'" @click.prevent="ven_name_del()">ลบ {{ven_name_form.id}}</button> -->
                                        <button type="submit" class="col-auto btn btn-primary">บันทึก</button>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <?php require_once('../includes/_footer.php') ?>
        </div>
    </div>
    <script src="../../assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../../assets/js/bootstrap.bundle.min.js"></script>

    <script src="../../assets/js/main.js"></script>
    <!--  -->
    <script src="../../node_modules/vue/dist/vue.global.js"></script>
    <script src="../../node_modules/vue/dist/vue.global.prod.js"></script>
    <script src="../../node_modules/axios/dist/axios.js"></script>
    <script src="../../node_modules/sweetalert2/dist/sweetalert2.min.js"></script>
    <script src="./user_ven.js"></script>
</body>

</html>
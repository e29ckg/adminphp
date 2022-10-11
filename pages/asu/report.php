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
                <h3>Report</h3>
            </div>
            <div class="page-content" id="asuReport" v-cloak>
                <section class="row">
                    <div class="col-12 col-lg-12">                              
                        <div class="card">
                            <div class="card-body">

                                <h5 class="card-title">ผู้พิพากษา</h5>
                                <table class="table">
                                    <tr>
                                        <td>วัน เดือน ปี</td>
                                        <td>เวลา</td>
                                        <td>รายชื่อผู้พิพากษา</td>
                                        <td>รายชื่อเจ้าหน้าที่</td>
                                        <td>หมายเหตุ</td>
                                    </tr>
                                    <tr v-for="d in datas">
                                        <td>{{d.ven_date}}</td>
                                        <td>
                                            {{d.ven_time}}
                                        </td>
                                        <td>
                                            {{d.u_name}} <br>
                                            {{d.u_role}}
                                            <ul>
                                                <li>dddd</li>
                                                <li>dddd</li>
                                                <li>dddd</li>

                                            </ul>
                                        </td>
                                        <td> 
                                            {{d.u_name}} <br>
                                            {{d.u_role}}
                                        </td>
                                        <td>หมายเหตุ</td>
                                    </tr>
                                </table>  
                                {{datas}}                                          
                            </div>                            
                            
                        </div>    
                    </div>
                </section>


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
    <script src="./report.js"></script>
</body>

</html>
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
            <header class="mb-3 d-print-none">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <div class="page-heading d-print-none">
                <h3>Report</h3>
            </div>
            <div class="page-content" id="asuReport" v-cloak>
            <section class="row" >           
                    <div class="col-12 col-lg-12">
                        <!-- {{ven_coms}} -->
                        <!-- {{ven_coms_g}} -->
                        <div class="row">
                            <div class="col-12 text-end mb-2">
                                <button class="btn btn-success btn-sm" @click="ven_com_add()">เพิ่มคำสั่ง</button>
                            </div>
                            <div class="col col-12">                                
                                <div class="card" v-for='cvg in ven_coms_g'>
                                    <div class="card-body" >
                                        
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th colspan="3" class="text-start">
                                                    เวรเดือน {{cvg.ven_month}} 
                                                    </th>

                                                </tr>
                                            </thead>
                                            <tbody  v-for="vc in ven_coms">
                                                <tr v-if="vc.ven_month == cvg.ven_month">
                                                        <td >  
                                                            เลขคำสั่งที่ {{vc.ven_com_num}} | ลงวันที่ {{vc.ven_com_date}} | {{vc.ven_com_name}} ({{vc.ven_name}})
                                                            <!-- | {{vc.ref}} | {{vc.status}}  -->
    
                                                        </td>
                                                        <td class="text-end" style="width: 50px;">
                                                            
                                                        </td>
                                                        <td class="text-end col " style="width: 120px;">
                                                            <button class="btn btn-warning btn-sm me-2" @click="print(vc.id)">เอกสารแนบท้าย</button>
                                                        </td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                                                
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
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
    <script src="./js/report.js"></script>
</body>

</html>
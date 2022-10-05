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
    
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css' rel='stylesheet' />
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js'></script>
    
</head>
<body>
    <div class="layout-wrapper layout-content-navbar" >
        <div class="layout-container">
            <?php require_once('../includes/_sidebar.php') ?>
            <div class="layout-page">
                <?php require_once('../includes/_navbar.php') ?>

                <!-- Content wrapper -->
                <div class="content-wrapper" id="dashboard">
                    <div class="container-xxl flex-grow-1 container-p-y" >                        
                        <div class="row">
                            <div class="col-12 ">
                                <div class="card">
                                    <div class="card-body">
                                        <div id='calendar' ref="calendar"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" ref="show_modal" hidden>
                        Launch static backdrop modal
                    </button>
  
                    <!-- Modal -->
                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" @click="reset_ven_com()" ref="close_modal"></button>
                                </div>
                                <div class="modal-body">
                                    <form @submit="save_ven_com()">
                                        
                                    
                                    
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >Close</button>
                                            <button type="submit" class="btn btn-primary" >save</button>
                                        </div>
                                    </form>
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


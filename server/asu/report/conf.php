<?php

use function PHPSTORM_META\type;

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,HEAD,OPTIONS,POST,PUT");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
// header("'Access-Control-Allow-Credentials', 'true'");
// header('Content-Type: application/javascript');
header("Content-Type: application/json; charset=utf-8");

include "../../connect.php";
include "../../function.php";

$data = json_decode(file_get_contents("php://input"));



if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if($_SESSION['AD_ROLE'] != 9){
        http_response_code(200);
        echo json_encode(array('staus' => false, 'message' => 'ไม่มีสิทธิ์'));
        exit;
    }

    if($data->vc){
        $data = $data->vc;
    }else{
        http_response_code(200);
        echo json_encode(array('staus' => false, 'message' => 'no-data'));
        exit;
    }    

$datas = array();
    // The request is using the POST method
    try{
        $ven_name = $data->ven_name;
        $ven_com_date = $data->ven_com_date;
        $sql = "UPDATE ven SET status = 1 WHERE ven_name = '$data->ven_name' AND  ven_month = '$data->ven_month'";
        $query = $conn->prepare($sql);       
        $query->execute();   

        http_response_code(200);
        echo json_encode(array('status' => true, 'message' => 'สำเร็จ '.$data->ven_month));
        exit;
       
    }catch(PDOException $e){
        echo "Faild to connect to database" . $e->getMessage();
        http_response_code(400);
        echo json_encode(array('status' => false, 'message' => 'ERROR เกิดข้อผิดพลาด..' . $e->getMessage()));
    }
}
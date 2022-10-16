<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,HEAD,OPTIONS,POST,PUT");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
// header("'Access-Control-Allow-Credentials', 'true'");
// header('Content-Type: application/javascript');
header("Content-Type: application/json; charset=utf-8");

include "../../connect.php";
include "../../function.php";

// $data = json_decode(file_get_contents("php://input"));


if ($_SERVER['REQUEST_METHOD'] === 'GET') {

$datas = array();

    // The request is using the POST method
    try{
        $sql = "SELECT * FROM ven_change GROUP BY ven_month ORDER BY ven_month DESC LIMIT 20";
        $query = $conn->prepare($sql);
        // $query->bindParam(':kkey',$data->kkey, PDO::PARAM_STR);
        $query->execute();
        $res_g = $query->fetchAll(PDO::FETCH_OBJ);
        
        $sql = "SELECT * FROM ven_change WHERE status=1 OR status=2 ORDER BY id DESC LIMIT 100";
        $query = $conn->prepare($sql);
        // $query->bindParam(':kkey',$data->kkey, PDO::PARAM_STR);
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_OBJ);

        if($query->rowCount() > 0){                        //count($result)  for odbc
            // foreach($result as $rs){
            //     array_push($datas,array(
            //         'id'    => $rs->id,
            //         'name'  => $rs->name,
            //         'DN'  => $rs->DN,
            //         'srt'  => $rs->srt
            //     ));
            // }
            http_response_code(200);
            echo json_encode(array('status' => true, 'message' => 'สำเร็จ', 'respJSON' => $result ,'respJSON_G' => $res_g ));
            exit;
        }
     
        http_response_code(200);
        echo json_encode(array('false' => true, 'message' => 'ไม่พบข้อมูล '));
    
    }catch(PDOException $e){
        echo "Faild to connect to database" . $e->getMessage();
        http_response_code(400);
        echo json_encode(array('status' => false, 'message' => 'เกิดข้อผิดพลาด..' . $e->getMessage()));
    }
}
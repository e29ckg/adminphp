<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,HEAD,OPTIONS,POST,PUT");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
// header("'Access-Control-Allow-Credentials', 'true'");
// header('Content-Type: application/javascript');
header("Content-Type: application/json; charset=utf-8");

include "../connect.php";
include "../function.php";

$data = json_decode(file_get_contents("php://input"));

// http_response_code(200);
// echo json_encode(array('status' => true, 'message' => 'ok', 'responseJSON' => $data));
// exit; 

// The request is using the POST method
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $datas = array();   

    try{
        
        
            $data_event   = $data->data_event; 
            $id   = $data_event->id;
            $ven_com_id    =json_encode($data_event->ven_com_id);

            $create_at  = Date("Y-m-d h:i:s");

            $sql = "UPDATE ven SET ven_com_id=:ven_com_id 
                    WHERE id = :id";   

            $query = $conn->prepare($sql);
            $query->bindParam(':ven_com_id',$ven_com_id, PDO::PARAM_STR);
            $query->bindParam(':id',$id, PDO::PARAM_INT);
            $query->execute();

            http_response_code(200);
            echo json_encode(array('status' => true, 'message' => 'ok', 'responseJSON' => $data));
            exit;  
        
        
    }catch(PDOException $e){
        echo "Faild to connect to database" . $e->getMessage();
        http_response_code(400);
        echo json_encode(array('status' => false, 'message' => 'เกิดข้อผิดพลาด..' . $e->getMessage()));
    }
}





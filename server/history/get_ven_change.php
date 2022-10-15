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

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user_id = $data->user_id;
    
    $datas = array();

    // The request is using the POST method
    try{
        $sql = "SELECT vc.*, p.*
                FROM ven_change as vc  
                INNER JOIN profile as p
                ON p.user_id = vc.user_id1 OR p.user_id = vc.user_id2
                WHERE vc.user_id2 = :user_id2 OR vc.user_id1 = :user_id1 
				ORDER BY vc.create_at DESC				
                LIMIT 100";
        $query = $conn->prepare($sql);
        $query->bindParam(':user_id2',$user_id, PDO::PARAM_INT);
        $query->bindParam(':user_id1',$user_id, PDO::PARAM_INT);
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_OBJ);

        if($query->rowCount() > 0){                        //count($result)  for odbc
            // foreach($result as $rs){
            //     $rs->DN == 'กลางวัน' ? $d = '☀️' : $d = '🌙';
            //     array_push($datas,array(
            //         'id'    => $rs->id,
            //         'title' => $d.' '.$rs->u_name,
            //         'start' => $rs->ven_date.' '.$rs->ven_time,
            //         'backgroundColor' => 'blue',
            //     ));
            // }
            http_response_code(200);
            echo json_encode(array('status' => true, 'massege' => 'สำเร็จ', 'respJSON' => $result));
            exit;
        }
     
        http_response_code(200);
        echo json_encode(array('status' => true, 'massege' => 'ไม่พบข้อมูล '));
    
    }catch(PDOException $e){
        echo "Faild to connect to database" . $e->getMessage();
        http_response_code(400);
        echo json_encode(array('status' => false, 'massege' => 'เกิดข้อผิดพลาด..' . $e->getMessage()));
    }
}



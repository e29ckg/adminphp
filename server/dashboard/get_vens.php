<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,HEAD,OPTIONS,POST,PUT");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
// header("'Access-Control-Allow-Credentials', 'true'");
// header('Content-Type: application/javascript');
header("Content-Type: application/json; charset=utf-8");

include "../connect.php";

// $data = json_decode(file_get_contents("php://input"));

if ($_SERVER['REQUEST_METHOD'] == 'GET') {

$datas = array();


    // The request is using the POST method
    try{
        $sql = "SELECT id, ven_date, ven_time, u_name, DN
        FROM ven    
        WHERE status = 1 OR status = 2
        ORDER BY ven_date DESC, ven_time ASC
        LIMIT 200";
        $query = $conn->prepare($sql);
        // $query->bindParam(':kkey',$data->kkey, PDO::PARAM_STR);
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_OBJ);

        if($query->rowCount() > 0){                        //count($result)  for odbc
            foreach($result as $rs){
                $rs->DN == 'กลางวัน' ? $d = '☀️' : $d = '🌙';
                array_push($datas,array(
                    'id'    => $rs->id,
                    'title' => $d.' '.$rs->u_name,
                    'start' => $rs->ven_date.' '.$rs->ven_time,
                    'backgroundColor' => 'blue',
                ));
            }
            http_response_code(200);
            echo json_encode(array('status' => true, 'massege' => 'สำเร็จ', 'respJSON' => $datas));
            exit;
        }
     
        http_response_code(200);
        echo json_encode(array('status' => true, 'massege' => 'ไม่พบข้อมูล ', 'respJSON' => $datas));
    
    }catch(PDOException $e){
        echo "Faild to connect to database" . $e->getMessage();
        http_response_code(400);
        echo json_encode(array('status' => false, 'massege' => 'เกิดข้อผิดพลาด..' . $e->getMessage()));
    }
}



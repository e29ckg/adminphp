<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,HEAD,OPTIONS,POST,PUT");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
// header("'Access-Control-Allow-Credentials', 'true'");
// header('Content-Type: application/javascript');
header("Content-Type: application/json; charset=utf-8");
include "../../connect.php";
include "../../function.php";

$data = json_decode(file_get_contents("php://input"));

// http_response_code(200);
// echo json_encode(array('status' => true, 'message' => 'ok', 'responseJSON' => $data));
// exit; 

// The request is using the POST method
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $datas = array();    
    $act = $data->act;

    try{
        if($act == 'insert'){

            $id = time();
            $ven_date       = $data->ven_date;
            $ven_time       = $data->ven_time;
            $DN             = $data->DN;
            $ven_month      = $data->ven_month;
            $ven_name       = $data->ven_name;
            $ven_con_name = '';

            $sql_vcid = "SELECT id, ref, ven_com_name, ven_com_num FROM ven_com WHERE ven_month = '$ven_month' AND ven_name = '$ven_name' LIMIT 1 ";
            $query_vcid = $conn->prepare($sql_vcid);
            $query_vcid->execute();
            $res_vcid = $query_vcid->fetch(PDO::FETCH_OBJ);

            if($query_vcid->rowCount() < 1){    
                http_response_code(200);
                echo json_encode(array('status' => false, 'message' => 'กรุณาออกคำสั่ง ' . $ven_name .' เดือน '.$ven_month , 'responseJSON' => $data));
                exit; 
            }
            if($res_vcid){
                $r_vcid     = $res_vcid->id;
                $r_ref      = $res_vcid->ref;
                $ven_com_name       = $res_vcid->ven_com_name;
                $ven_com_num_all    = $res_vcid->ven_com_num;
            }else{
                $r_vcid     = '';
                $r_ref      = '';
                $ven_com_name       = '';
                $ven_com_num_all    = '';
            } 

            $ven_com_id     = json_encode([$r_vcid]);
            $user_id        = $data->uid;
            $u_role         = $data->u_role;
            $ven_com_name   = $ven_com_name;
            $ref1           = generateRandomString();
            $ref2           = $r_ref;
            $price          = $data->price;
            $status         = 2 ;
            $create_at      = Date("Y-m-d h:i:s");
         
            $sql_VU = "SELECT * FROM ven WHERE user_id = $user_id AND ven_date = '$ven_date' LIMIT 1 ";
            $query_VU = $conn->prepare($sql_VU);
            $query_VU->execute();
            $res_VU = $query_VU->fetch(PDO::FETCH_OBJ);

            if($res_VU){
                http_response_code(200);
                echo json_encode(array('status' => false, 'message' => 'วันนี้มีเวรอยู่แล้ว', 'respJSON' => $res_VU));
                exit;
            }

            if($DN =='กลางคืน'){
                $ven_date_u1 = date("Y-m-d", strtotime('+1 day', strtotime($ven_date)));
                $sql = "SELECT * FROM ven WHERE user_id = $user_id AND ven_date = '$ven_date_u1' AND DN='กลางวัน' LIMIT 1";
                $query = $conn->prepare($sql);
                $query->execute();
                $res = $query->fetch(PDO::FETCH_OBJ);

                if($res){
                    http_response_code(200);
                    echo json_encode(array('status' => false, 'message' => 'วันพรุ่งนี้('.$ven_date_u1.')มีกลางวัน', 'respJSON' => $res));
                    exit;
                }
            }
            if($DN =='กลางวัน'){
                $ven_date_u1 = date("Y-m-d", strtotime('-1 day', strtotime($ven_date)));
                $sql = "SELECT * FROM ven WHERE user_id = $user_id AND ven_date = '$ven_date_u1' AND DN='กลางคืน' LIMIT 1";
                $query = $conn->prepare($sql);
                $query->execute();
                $res = $query->fetch(PDO::FETCH_OBJ);

                if($res){
                    http_response_code(200);
                    echo json_encode(array('status' => false, 'message' => 'วันที่('.$ven_date_u1.')มีเวรกลางคืน', 'respJSON' => $res));
                    exit;
                }
            } 

            $sql_u = "SELECT fname, name, sname FROM profile WHERE user_id =:user_id LIMIT 1 ";
            $query_u = $conn->prepare($sql_u);
            $query_u->bindParam(':user_id',$user_id, PDO::PARAM_INT);
            $query_u->execute();
            $res_u = $query_u->fetch(PDO::FETCH_OBJ);

            $u_name = $res_u->fname.$res_u->name. ' '.$res_u->sname;

            $sql = "INSERT INTO ven(id, ven_date, ven_time, DN, ven_month, ven_com_id, user_id, u_name, u_role, ven_name, ven_com_name, ven_com_num_all, ref1, ref2, price, `status`, create_at) 
                    VALUE(:id, :ven_date, :ven_time, :DN, :ven_month, :ven_com_id, :user_id, :u_name, :u_role, :ven_name, :ven_com_name, :ven_com_num_all, :ref1, :ref2, :price, :status, :create_at);";        
            $query = $conn->prepare($sql);
            $query->bindParam(':id',$id, PDO::PARAM_INT);
            $query->bindParam(':ven_date',$ven_date, PDO::PARAM_STR);
            $query->bindParam(':ven_time',$ven_time, PDO::PARAM_STR);
            $query->bindParam(':DN',$DN, PDO::PARAM_STR);
            $query->bindParam(':ven_month',$ven_month, PDO::PARAM_STR);
            $query->bindParam(':ven_com_id',$ven_com_id, PDO::PARAM_STR);
            $query->bindParam(':user_id',$user_id, PDO::PARAM_STR);
            $query->bindParam(':u_name',$u_name, PDO::PARAM_STR);
            $query->bindParam(':u_role',$u_role, PDO::PARAM_STR);
            $query->bindParam(':ven_name',$ven_name, PDO::PARAM_STR);
            $query->bindParam(':ven_com_name',$ven_com_name, PDO::PARAM_STR);
            $query->bindParam(':ven_com_num_all',$ven_com_num_all, PDO::PARAM_STR);
            $query->bindParam(':ref1',$ref1 , PDO::PARAM_STR);
            $query->bindParam(':ref2',$ref2 , PDO::PARAM_STR);
            $query->bindParam(':price',$price , PDO::PARAM_STR);
            $query->bindParam(':status',$status , PDO::PARAM_INT);
            $query->bindParam(':create_at',$create_at , PDO::PARAM_STR);
            $query->execute();

            http_response_code(200);
            echo json_encode(array('status' => true, 'message' => 'ok', 'responseJSON' => $data));
            exit;                
        }    
        if($act == 'update'){
            $vc   = $data->vc; 
            $id   = $vc->id;

            $ven_com_num    = $vc->ven_com_num;
            $ven_com_date   = $vc->ven_com_date;
            $ven_month      = $vc->ven_month;
            $ven_com_name   = $vc->ven_com_name;
            $ven_name       = $vc->ven_name;

            $create_at  = Date("Y-m-d h:i:s");

            $sql = "UPDATE ven_com SET ven_com_num=:ven_com_num, ven_com_date=:ven_com_date, ven_month=:ven_month, ven_com_name=:ven_com_name, ven_name=:ven_name 
                    WHERE id = :id";   

            $query = $conn->prepare($sql);
            $query->bindParam(':ven_com_num',$ven_com_num, PDO::PARAM_STR);
            $query->bindParam(':ven_com_date',$ven_com_date, PDO::PARAM_STR);
            $query->bindParam(':ven_month',$ven_month, PDO::PARAM_STR);
            $query->bindParam(':ven_com_name',$ven_com_name, PDO::PARAM_STR);
            $query->bindParam(':ven_name',$ven_name, PDO::PARAM_STR);
            $query->bindParam(':id',$id, PDO::PARAM_INT);
            $query->execute();

            http_response_code(200);
            echo json_encode(array('status' => true, 'message' => 'ok', 'responseJSON' => $datas));
            exit;                
        }  
        if($act == 'delete'){
            $id     = $data->id;
            $sql = "DELETE FROM ven_com WHERE id = $id";
            $conn->exec($sql);

            http_response_code(200);
            echo json_encode(array('status' => true, 'message' => 'DEL ok'));
            exit;                
        }  
        if($act == 'status'){
            $id     = $data->id;
            $st     = $data->st;
            $sql = "UPDATE ven_com SET `status`= $st WHERE id = $id";
            $conn->exec($sql);

            http_response_code(200);
            echo json_encode(array('status' => true, 'message' => 'ok'));
            exit;                
        } 
        
    }catch(PDOException $e){
        echo "Faild to connect to database" . $e->getMessage();
        http_response_code(400);
        echo json_encode(array('status' => false, 'message' => 'เกิดข้อผิดพลาด..' . $e->getMessage()));
    }
}





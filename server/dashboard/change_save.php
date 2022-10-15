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

        // $ven_date           = $rsv1->ven_date;
        // $ven_time           = $rsv1->ven_time;
        // $DN                 = $rsv1->DN;
        // $ven_month          = $rsv1->ven_month;
        // $ven_com_id         = $rsv1->ven_com_id;
        // $ven_com_idb        = $rsv1->ven_com_idb;
        // $user_id            = $rsv1->user_id;
        // $u_name             = $rsv1->u_name;
        // $u_role             = $rsv1->u_role;
        // $ven_name           = $rsv1->ven_name; 
        // $ven_com_name       = $rsv1->ven_com_name;
        // $ven_com_num_all    = $rsv1->ven_com_num_all;
        // $r_ref1             = $ref;
        // $r_ref2             = $rsv1->ref1;
        // $price              = $rsv1->price;
        // $status             = 2 ;
        // $create_at          = Date("Y-m-d h:i:s");

// The request is using the POST method
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
    $ch_v1 =$data->ch_v1;
    $ch_v2 =$data->ch_v2;

    $datas = array();    
    // $act = $data->act;

    try{   
        $conn->beginTransaction();
        
        $idv1   = time();
        $idv2   = $idv1 + 1;
        $ref    =  generateRandomString();
        $status             = 2 ;
        $create_at          = Date("Y-m-d h:i:s");
        
        $sql    = "SELECT * FROM ven WHERE id = :id AND ven.status=1";
        $query  = $conn->prepare($sql);
        $query->bindParam(':id',$ch_v1->id, PDO::PARAM_INT);
        $query->execute();
        $rsv1 = $query->fetch(PDO::FETCH_OBJ);
        if($query->rowCount() == 0){
            http_response_code(200);
            echo json_encode(array('status' => false, 'message' => 'ใบเวรนี้ '.$ch_v1->id.' ไม่สามารถเปลี่ยนได้'));
            exit;
        }

        $sql    = "SELECT * FROM ven WHERE id = :id AND ven.status=1";
        $query  = $conn->prepare($sql);
        $query->bindParam(':id',$ch_v2->id, PDO::PARAM_INT);
        $query->execute();
        $rsv2 = $query->fetch(PDO::FETCH_OBJ);
        if($query->rowCount() == 0){
            http_response_code(200);
            echo json_encode(array('status' => false, 'message' => 'ใบเวรนี้ '.$ch_v2->id.' ไม่สามารถเปลี่ยนได้'));
            exit;
        }   
        
        /**  สร้างเวรใบที่1 */
        $sql = "INSERT INTO ven(id, ven_date, ven_time, DN, ven_month, ven_com_id, ven_com_idb, user_id, u_name, u_role, ven_name, ven_com_name, ven_com_num_all, ref1, ref2, price, `status`, update_at, create_at) 
                    VALUE(:id, :ven_date, :ven_time, :DN, :ven_month, :ven_com_id, :ven_com_idb, :user_id, :u_name, :u_role, :ven_name, :ven_com_name, :ven_com_num_all, :ref1, :ref2, :price, :status, :update_at, :create_at);";        
        $query = $conn->prepare($sql);
        $query->bindParam(':id',$idv1, PDO::PARAM_INT);
        $query->bindParam(':ven_time',$rsv1->ven_time, PDO::PARAM_STR);
        $query->bindParam(':ven_date',$rsv2->ven_date, PDO::PARAM_STR);
        $query->bindParam(':DN',$rsv2->DN, PDO::PARAM_STR);
        $query->bindParam(':ven_month',$rsv2->ven_month, PDO::PARAM_STR);
        $query->bindParam(':ven_com_id',$rsv2->ven_com_id, PDO::PARAM_STR);
        $query->bindParam(':ven_com_idb',$rsv2->ven_com_idb, PDO::PARAM_STR);
        $query->bindParam(':user_id',$rsv1->user_id, PDO::PARAM_INT);
        $query->bindParam(':u_name',$rsv1->u_name, PDO::PARAM_STR);
        $query->bindParam(':u_role',$rsv1->u_role, PDO::PARAM_STR);
        $query->bindParam(':ven_name',$rsv2->ven_name, PDO::PARAM_STR);
        $query->bindParam(':ven_com_name',$rsv2->ven_com_name, PDO::PARAM_STR);
        $query->bindParam(':ven_com_num_all',$rsv2->ven_com_num_all, PDO::PARAM_STR);
        $query->bindParam(':ref1',$ref , PDO::PARAM_STR);
        $query->bindParam(':ref2',$rsv2->ref2 , PDO::PARAM_STR);
        $query->bindParam(':price',$rsv2->price , PDO::PARAM_STR);
        $query->bindParam(':status',$status , PDO::PARAM_INT);
        $query->bindParam(':update_at',$create_at , PDO::PARAM_STR);
        $query->bindParam(':create_at',$create_at , PDO::PARAM_STR);
        $query->execute();

        /**  สร้างเวรใบ2 */
        $sql = "INSERT INTO ven(id, ven_date, ven_time, DN, ven_month, ven_com_id, ven_com_idb, user_id, u_name, u_role, ven_name, ven_com_name, ven_com_num_all, ref1, ref2, price, `status`, update_at, create_at) 
                    VALUE(:id, :ven_date, :ven_time, :DN, :ven_month, :ven_com_id, :ven_com_idb, :user_id, :u_name, :u_role, :ven_name, :ven_com_name, :ven_com_num_all, :ref1, :ref2, :price, :status, :update_at, :create_at);";        
        $query = $conn->prepare($sql);
        $query->bindParam(':id',$idv2, PDO::PARAM_INT);
        $query->bindParam(':ven_date',$rsv1->ven_date, PDO::PARAM_STR);
        $query->bindParam(':ven_time',$rsv1->ven_time, PDO::PARAM_STR);
        $query->bindParam(':DN',$rsv1->DN, PDO::PARAM_STR);
        $query->bindParam(':ven_month',$rsv1->ven_month, PDO::PARAM_STR);
        $query->bindParam(':ven_com_id',$rsv1->ven_com_id, PDO::PARAM_STR);
        $query->bindParam(':ven_com_idb',$rsv1->ven_com_idb, PDO::PARAM_STR);
        $query->bindParam(':user_id',$rsv2->user_id, PDO::PARAM_INT);
        $query->bindParam(':u_name',$rsv2->u_name, PDO::PARAM_STR);
        $query->bindParam(':u_role',$rsv2->u_role, PDO::PARAM_STR);
        $query->bindParam(':ven_name',$rsv1->ven_name, PDO::PARAM_STR);
        $query->bindParam(':ven_com_name',$rsv1->ven_com_name, PDO::PARAM_STR);
        $query->bindParam(':ven_com_num_all',$rsv1->ven_com_num_all, PDO::PARAM_STR);
        $query->bindParam(':ref1',$ref , PDO::PARAM_STR);
        $query->bindParam(':ref2',$rsv1->ref1 , PDO::PARAM_STR);
        $query->bindParam(':price',$rsv1->price , PDO::PARAM_STR);
        $query->bindParam(':status',$status , PDO::PARAM_INT);
        $query->bindParam(':update_at',$create_at , PDO::PARAM_STR);
        $query->bindParam(':create_at',$create_at , PDO::PARAM_STR);
        $query->execute();

        /**สร้างใบเปลี่ยนเวร */

        $sql = "INSERT INTO ven_change(id, ven_month, ven_com_id, ven_id1, ven_id2, ven_id1_old, ven_id2_old,  user_id1, user_id2, ref1, `status`, create_at) 
        VALUE(:id, :ven_month, :ven_com_id, :ven_id1, :ven_id2, :ven_id1_old, :ven_id2_old, :user_id1, :user_id2, :ref1, :status, :create_at);";        
        
        $query = $conn->prepare($sql);
        $query->bindParam(':id',$idv1, PDO::PARAM_INT);
        $query->bindParam(':ven_month',$rsv1->ven_month, PDO::PARAM_STR);
        $query->bindParam(':ven_com_id',$rsv1->ven_com_id, PDO::PARAM_STR);
        $query->bindParam(':ven_id1',$idv1, PDO::PARAM_INT);
        $query->bindParam(':ven_id2',$idv2, PDO::PARAM_INT);
        $query->bindParam(':ven_id1_old',$rsv1->id, PDO::PARAM_INT);
        $query->bindParam(':ven_id2_old',$rsv2->id, PDO::PARAM_INT);
        $query->bindParam(':user_id1',$rsv1->user_id, PDO::PARAM_INT);
        $query->bindParam(':user_id2',$rsv2->user_id, PDO::PARAM_INT);
        $query->bindParam(':ref1',$ref, PDO::PARAM_STR);
        $query->bindParam(':status',$status , PDO::PARAM_INT);
        $query->bindParam(':create_at',$create_at , PDO::PARAM_STR);
        
        $query->execute();

        $status = 4;
        $sql = "UPDATE ven SET update_at=:update_at, ven.status =:status  WHERE id = :id";   
        $query = $conn->prepare($sql);
        $query->bindParam(':update_at',$create_at , PDO::PARAM_STR);
        $query->bindParam(':status',$status, PDO::PARAM_INT);
        $query->bindParam(':id',$ch_v1->id, PDO::PARAM_INT);
        $query->execute();

        $sql = "UPDATE ven SET update_at=:update_at, ven.status =:status  WHERE id = :id";   
        $query = $conn->prepare($sql);
        $query->bindParam(':update_at',$create_at , PDO::PARAM_STR);
        $query->bindParam(':status',$status, PDO::PARAM_INT);
        $query->bindParam(':id',$ch_v2->id, PDO::PARAM_INT);
        $query->execute();
        
        $conn->commit();

        http_response_code(200);
        echo json_encode(array('status' => true, 'message' => 'ok', 'responseJSON' =>'', 'rsv1' => $rsv1,'rsv2' => $rsv2));
        exit;                
                 
        
        
    }catch(PDOException $e){
        $conn->rollback();
        echo "Faild to connect to database" . $e->getMessage();
        http_response_code(400);
        echo json_encode(array('status' => false, 'message' => 'เกิดข้อผิดพลาด..' . $e->getMessage()));
    }
}




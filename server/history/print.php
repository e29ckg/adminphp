<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,HEAD,OPTIONS,POST,PUT");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
// header("'Access-Control-Allow-Credentials', 'true'");
// header('Content-Type: application/javascript');
header("Content-Type: application/json; charset=utf-8");

include '../../vendor/autoload.php';
use PhpOffice\PhpWord\IOFactory;
use PhpOffice\PhpWord\TemplateProcessor;

include "../connect.php";
include "../function.php";

$data = json_decode(file_get_contents("php://input"));

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $data->id;
    
    $datas = array();

    // The request is using the POST method
    try{
        $sql = "SELECT vc.id , ven_month, ven_date1, ven_date2,ven_com_num_all,DN,u_role,user_id1,user_id2,vc.status
                FROM ven_change as vc  
                WHERE vc.id = :id";
        $query = $conn->prepare($sql);
        $query->bindParam(':id',$id, PDO::PARAM_INT);
        $query->execute();
        $result = $query->fetch(PDO::FETCH_OBJ);

        if($query->rowCount() > 0){                        //count($result)  for odbc
            foreach($result as $rs){
                // $rs->DN == 'กลางวัน' ? $d = '☀️' : $d = '🌙';
                // $sql = "SELECT id , fname, profile.name, sname, img
                //         FROM profile   
                //         WHERE user_id = :user_id ";
                // $query = $conn->prepare($sql);
                // $query->bindParam(':user_id',$rs->user_id1, PDO::PARAM_INT);
                // $query->execute();
                // $user1 = $query->fetch(PDO::FETCH_OBJ);

                // $sql = "SELECT id , fname, profile.name, sname, img
                //         FROM profile   
                //         WHERE user_id = :user_id ";
                // $query = $conn->prepare($sql);
                // $query->bindParam(':user_id',$rs->user_id2, PDO::PARAM_INT);
                // $query->execute();
                // $user2 = $query->fetch(PDO::FETCH_OBJ);

                // array_push($datas,array(
                //     'id'    => $rs->id,
                //     'ven_month' => $rs->ven_month,
                //     'ven_date1' => $rs->ven_date1,
                //     'ven_date2' => $rs->ven_date2,
                //     'ven_com_num_all' => $rs->ven_com_num_all,
                //     'DN' => $rs->DN,
                //     'u_role' => $rs->u_role,
                //     'user1' => $user1->fname.$user1->name.' '.$user1->sname,
                //     'img1' => $user1->img,
                //     'user2' => $user2->fname.$user2->name.' '.$user2->sname,
                //     'img2' => $user2->img,
                //     'status' => $rs->status,
                // ));


                /**สร้างเอกสาร docx */
                $templateProcessor = new TemplateProcessor('ven_tm.docx');//เลือกไฟล์ template ที่เราสร้างไว้
                $templateProcessor->setValue('doc_date', time());//อัดตัวแปร รายตัว
                // $templateProcessor->setValue('month', $month);//อัดตัวแปร รายตัว
                // $templateProcessor->setValue('price_d', $price_d);
                // $templateProcessor->setValue('price_n', $price_n_1);
                // $templateProcessor->setValue('count', $count);
                // $templateProcessor->setValue('price_all', $price_all_thai);
                // $templateProcessor->setValue('price_all_text', $price_all_text);
                $templateProcessor->saveAs('../../uploads/ven.docx');//สั่งให้บันทึกข้อมูลลงไฟล์ใหม่

            }
            http_response_code(200);
            echo json_encode(array('status' => true, 'message' => 'OK', 'respJSON' => $datas));
            exit;
        }
     
        http_response_code(200);
        echo json_encode(array('status' => true, 'message' => 'ไม่พบข้อมูล '));
    
    }catch(PDOException $e){
        echo "Faild to connect to database" . $e->getMessage();
        http_response_code(400);
        echo json_encode(array('status' => false, 'message' => 'เกิดข้อผิดพลาด..' . $e->getMessage()));
    }
}



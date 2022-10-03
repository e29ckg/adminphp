<?php 

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,HEAD,OPTIONS,POST,PUT");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
// header('Content-Type: text/html; charset=UTF-8');
header("Content-Type: application/json; charset=utf-8");
require_once('../connect.php');
require_once('../function.php');

$data = json_decode(file_get_contents("php://input"));

// if (isset($_POST['authen'])) {
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // $username = cleanData($_POST['username']);
    // $password = cleanData($_POST['password']);
    $username = cleanData($data->username);
    $password = cleanData($data->password);
    
    $stmt = $conn->prepare("SELECT * FROM users WHERE username = :username AND status = 'true' ");
    $stmt->execute(array(":username" => $username));
    $row = $stmt->fetch(PDO::FETCH_ASSOC);


    if( !empty($row) && password_verify($password, $row['password']) ) {
        unset($row['password']);
        $_SESSION['AD_ID'] = $row['u_id'];
        $_SESSION['AD_FIRSTNAME'] = $row['firstname'];
        $_SESSION['AD_LASTNAME'] = $row['lastname'];
        $_SESSION['AD_USERNAME'] = $row['username'];
        $_SESSION['AD_IMAGE'] = $row['image'];
        $_SESSION['AD_ROLE'] = $row['role'];
        $_SESSION['AD_STATUS'] = $row['status'];
        
        // header('Location: ../../pages/index.php');    
        
        http_response_code(200);
        $response = array('status'=>true,'message' => 'success');
        echo json_encode($response);

    } else {
        // echo "<script> alert('ไม่สามารถเข้าสู่ระบบได้')</script>";
        // header("Refresh:0; url=../../login.php");
        http_response_code(200);
        $response = array('status'=>false,'message' => 'ไม่สามารถเข้าระบบได้');
        echo json_encode($response);
    }
}
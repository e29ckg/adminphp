<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
date_default_timezone_set("Asia/Bangkok");

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET,HEAD,OPTIONS,POST,PUT");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
// header("'Access-Control-Allow-Credentials', 'true'");
// header('Content-Type: application/javascript');
header("Content-Type: application/json; charset=utf-8");

include "../../connect.php";
include "../../function.php";

$data = json_decode(file_get_contents("php://input"));

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
	$date_now = date("Y-m-d");
	$sToken = "";
	$sMessage = "";

	$sql = "SELECT * FROM line WHERE name = 'ven'";
	$query = $conn->prepare($sql);
	$query->execute();
	$res = $query->fetch(PDO::FETCH_OBJ);
	$sToken = $res->token;

	$sMessage .= DateThai($date_now)."\n";

	$sql = "SELECT v.*
                FROM ven as v
                WHERE v.ven_date = '$date_now' AND (v.status=1 OR v.status=2)
				ORDER BY v.ven_time ASC";
        $query = $conn->prepare($sql);
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_OBJ);

		foreach($result as $rs){
			$rs->DN == 'กลางวัน' ? $sMessage .= "☀️ ": $sMessage .= "🌙 " ; 
			$sMessage .= $rs->u_name."\n";
		}
	echo sendLine($sToken,$sMessage);

	
	// $chOne = curl_init(); 
	// curl_setopt( $chOne, CURLOPT_URL, "https://notify-api.line.me/api/notify"); 
	// curl_setopt( $chOne, CURLOPT_SSL_VERIFYHOST, 0); 
	// curl_setopt( $chOne, CURLOPT_SSL_VERIFYPEER, 0); 
	// curl_setopt( $chOne, CURLOPT_POST, 1); 
	// curl_setopt( $chOne, CURLOPT_POSTFIELDS, "message=".$sMessage); 
	// $headers = array( 'Content-type: application/x-www-form-urlencoded', 'Authorization: Bearer '.$sToken.'', );
	// curl_setopt($chOne, CURLOPT_HTTPHEADER, $headers); 
	// curl_setopt( $chOne, CURLOPT_RETURNTRANSFER, 1); 
	// $result = curl_exec( $chOne ); 

	// //Result error 
	// if(curl_error($chOne)) 
	// { 
	// 	echo 'error:' . curl_error($chOne); 
	// } 
	// else { 
	// 	$result_ = json_decode($result, true); 
	// 	echo "status : ".$result_['status']; echo "message : ". $result_['message'];
	// } 
	// curl_close( $chOne ); 
    
}    
?>
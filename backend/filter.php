<?php

$id = $_GET['id_sni'];

include('connect.php');

header("Cache-Control: no-cache, no-store, must-revalidate"); // limpa o cache
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=utf-8");     

# Verifique se o registro existe

$query = "SELECT * FROM snippets WHERE id_sni = ".$id;


 
$result = mysqli_query($conn, $query);

$arr_json = [];
$contador = 0;

if($result){
    while($row = mysqli_fetch_array($result)){
        $arr_json[$contador] = ['id_sni' => $row["id_sni"], 'title_sni' => $row["title_sni"], 'description_sni' => $row["description_sni"], 'syntax_sni' => htmlEntities($row["syntax_sni"]), 'classification_sni' => $row["classification_sni"], 'language_sni' => $row["language_sni"], 'category_sni' => $row["category_sni"], 'subcategory_sni' => $row["subcategory_sni"]];
        $contador++;        
    }
    echo json_encode($arr_json);               
}





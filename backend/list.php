<?php

    include('./conect.php');

    header("Cache-Control: no-cache, no-store, must-revalidate"); // limpa o cache
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=utf-8");     
	
	# Verifique se o registro existe
	
	$query = "SELECT * FROM snippets ORDER BY title_sni ASC";
	
    $result = mysql_query($query);

    $arr_json = [];
    $contador = 0;
	
	if($result){
		while($row = mysql_fetch_array($result)){
			$descricao = $row["title_sni"];
            $syntax = $row["syntax_sni"];
            $arr_json[$contador] = ['id_sni' => $row["id_sni"], 'title_sni' => $row["title_sni"], 'syntax_sni' => $row["syntax_sni"], 'classification_sni' => $row["classification_sni"], 'language_sni' => $row["language_sni"], 'category_sni' => $row["category_sni"], 'subcategory_sni' => $row["subcategory_sni"]];
            //echo $syntax;
            $contador++;
            //echo "Título: ".$title." Syntax: ".$syntax."br/>";
            //echo '<table class="table table-dark"><thead><tr><th>Descrição</th><th>Sintaxe</th></tr></thead><tbody><tr>';
            //echo "<td>".$descricao."</td>";
            //echo "<td>".$syntax."</td>";
            //echo '</tr></tbody></table>';
            
        }

        //print_r($arr_json);
        //die();
        //$result['email'] = '$email';
        //$result['nome'] = '$nome';
        echo json_encode($arr_json);               
    }
    
    











?>
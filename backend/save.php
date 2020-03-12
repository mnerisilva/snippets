<?php

include('connect.php');


if(count($_POST) > 0){
	if($_POST['type'] == 1){
		$title          =$_POST['title'];
		$description    =$_POST['description'];
		$syntax         =$_POST['syntax'];
		$classification =$_POST['classification'];
		$language       =$_POST['language'];
		$category       =$_POST['category'];
		$subcategory    =$_POST['subcategory'];
		$sql = "INSERT INTO `snippets`( `title_sni`, `description_sni`,`syntax_sni`,`classification_sni`,`language_sni`,`category_sni`,`subcategory_sni`) 
		VALUES ('$title','$description','$syntax','$classification','$language','$category','$subcategory')";
		if (mysqli_query($conn, $sql)) {
			echo json_encode(array("statusCode"=>200));
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
		mysqli_close($conn);
	}
}


?>
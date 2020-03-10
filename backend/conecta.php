<?php


  


    $servername = "localhost";
    $database = "snippets";
    $username = "root";
    $password = "";
    $snippets_table="snippets";
    // Create connection
    $conn = mysql_connect($servername, $username, $password);
    // Check connection
    if (!$conn) {
        die("Conexão falhou: " . mysqli_connect_error());
    }
    
    //mysqli_close($conn);

    mysql_select_db($database);










?>
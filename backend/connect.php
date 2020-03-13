<?php    
    $servername = "localhost";
    $database = "snippets_test";
    $username = "root";
    $password = "";
    $snippets_table="snippets";
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $database);
    // Check connection
    if (!$conn) {
        die("Conexão falhou: " . mysqli_connect_error());
    }
    mysqli_set_charset($conn, 'utf8mb4')
?>
<?php

    session_start();
    require_once "../../clases/categorias.php";
    $categorias = new categorias();

    $datos = array(
        "idUsuario" => $_SESSION['idUsuario'],
        "categoria" => $_POST['categoria'] 
    );


    echo $categorias->agregarCategoria($datos);

?>
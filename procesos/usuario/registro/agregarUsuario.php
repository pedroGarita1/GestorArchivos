<?php

    require_once "../../../clases/usuario.php";

    $password = sha1($_POST['password']);
    $fechaNacimiento = explode("-",$_POST['fechaNacimiento']);
    $fechaNacimiento = $fechaNacimiento[2] . "-" . $fechaNacimiento[1] . "-" . $fechaNacimiento[0];
    $datos = array(
        "nombre" => $_POST['nombre'],
        "fechaNacimiento" => $fechaNacimiento, 
        "correo" => $_POST['correo'],
        "usuario" => $_POST['usuario'],
        "password" => $password


    );

    $usuario = new Usuario();
    echo $usuario->agregarUsuario($datos);
    



?>
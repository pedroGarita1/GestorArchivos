<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <?php require_once "procesos/dependencias.php";?>
</head>

<body>
    <div class="wrapper fadeInDown">
        <div id="formContent">
            <div class="fadeIn first">
                <img src="img/archivos.png" id="icon"
                    alt="User Icon" />
                <h1>Gestor de Archivos</h1>
            </div>

            <form method="POST" id="frmLogin" onsubmit="return logear()">
                <input type="text" id="login" class="fadeIn second" name="login" placeholder="Usuario" required="">
                <input type="password" id="password" class="fadeIn third" name="password" placeholder="Contraseña" required="">
                <input type="submit" class="fadeIn fourth" value="Entrar">
            </form>

            <!-- Remind Passowrd -->
            <div id="formFooter">
                <a class="underlineHover" href="registro.php">Registrate</a>
            </div>

        </div>
    </div>


<script type="text/javascript">

    function logear(){
        $.ajax({
            type:"POST",
            data:$("#frmLogin").serialize(),
            url:"procesos/usuario/login/login.php",
            success:function(r){
                
                r = r.trim();
                if(r == 1){
                    window.location = "vistas/inicio.php";
                }else{
                    swal("D:","Fallo al entrar", "error");
                }

            }
        });
        return false;
    }

</script>

</body>

</html>
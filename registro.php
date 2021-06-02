<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>Registro</title>
    <?php require_once "procesos/dependencias.php"?>
</head>
<body>

    <div class="wrapper fadeInDown">
        <div id="formContent">
            <div class="fadeIn first">
                <img src="img/archivos.png" id="icon"
                    alt="User Icon" />
                <h1>REGISTRAR</h1>
            </div>

            <form id="frmRegistro" method="POST" onsubmit="return agregarUsuarioNuevo()">
                <label>Nombre Completo</label>
                <input type="text" name="nombre" id="nombre" class="fadeIn second" required="">
                <label>Fecha de nacimiento</label>
                <input type="text" name="fechaNacimiento" id="fechaNacimiento" class="fadeIn second" required="" autocomplete="off" readonly>
                <label>Email o Correo</label>
                <input type="text" name="correo" id="correo" class="fadeIn second" required="">
                <label>Nombre de usuario</label>
                <input type="text" name="usuario" id="usuario" class="fadeIn second" required="">
                <label>Password</label>
                <input type="password" name="password" id="password" class="fadeIn second" required="">
                <br>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-3 text-center"><button class="btn btn-outline-info">Registrar</button></div>
                    <div class="col-sm-3 text-center"><a class="btn btn-outline-warning" href="index.php">Login</a></div>
                    <div class="col-sm-3"></div>
                </div>
                
                </form>

            <!-- Remind Passowrd -->
            <div id="formFooter">
                <hr>
            </div>

        </div>
    </div>

    <script type="text/javascript">


        $(function(){

            var fechaA = new Date();
            var yyyy = fechaA.getFullYear();

            $("#fechaNacimiento").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '1900:' + yyyy,
                dateFormat: "dd-mm-yy"
            });


        });



        function agregarUsuarioNuevo(){
            $.ajax({
                method: "POST",
                data: $('#frmRegistro').serialize(),
                url: "procesos/usuario/registro/agregarUsuario.php",
                success:function(r){
                    r = r.trim();
                    
                    if(r == 1){
                        $("#frmRegistro")[0].reset();
                        swal(":D","Agregado con exito", "success");
                    }else if(r == 2){
                        console.log(r);
                        swal("Este usuario ya existe");
                    }else{
                        console.log(r);
                        swal("D:","No se pudo agregar el usuario","error")
                    }


                } 
            });
            return false;
        }
    </script>
    
</body>
</html>
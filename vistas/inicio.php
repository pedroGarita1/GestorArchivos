<?php 

session_start();

    if(isset($_SESSION['usuario'])){
         include_once "header.php";

?>


        <div class="container">
            <div class="row">
                <div class="col mt-4">
                    <div class="jumbotron jumbotron-fluid">
                        <div class="container">
                            <h1 class="display-6">Bienvenido</h1>
                            <p class="lead">
                                <?php
                            
                                    include_once "inicio/carrusel.php";
                                    include_once "inicio/tarjeta.php"
                                ?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


                    

<?php
         include_once "footer.php";
    }else{
        header("location:../index.php");
    }


?>
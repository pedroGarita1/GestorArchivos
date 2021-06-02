<?php 

session_start();

    if(isset($_SESSION['usuario'])){
         include_once "header.php";
        
?>


<div class="container">
  <div class="row mt-4">
    <div class="col">

        <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-6">Categorias</h1>

            <div class="row">
                <div class="col-sm-4">
                    <span class="btn btn-outline-info" data-toggle="modal" data-target="#modalAgregaCategoria">
                    <span class="fas fa-folder-plus"></span> Agrega Nueva Categoria
                    </span>
                </div>
            </div>
            <hr>
        
            <div class="row">
                <div class="col-sm-12">
                    <div id="tablasCategorias"></div>
                </div>
            </div>
            
        </div>
    </div>

    </div>
  </div>
</div>


<!-- Modal insert-->
<div class="modal fade" id="modalAgregaCategoria" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Agregar Nueva Categoria</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="frmCategorias">
            <label>Nombre de la categoria</label>
            <input type="text" name="nombreCategoria" id="nombreCategoria" class="form-control">

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btnGuardarCategoria">Guardar</button>
      </div>
    </div>
  </div>
</div>

<!--Modal Update-->


<!-- Modal -->
<div class="modal fade" id="modalActualizarCategoria" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Actualizar Categoria</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form id="frmActualizaCategoria">
        <input type="text" id="idCategoria" name="idCategoria" hidden="">
        <label>Categoria</label>
        <input type="text" id="categoriaU" name="categoriaU" class="form-control">
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-warning" id="btnActualizaCategoria">Actualizar</button>
      </div>
    </div>
  </div>
</div>




<?php
    include_once "footer.php";
?>

<!--Depenencias de categorias todas las funciones js de categorias-->
<script src="../js/categorias.js"></script>


<script type="text/javascript"> 
    $(document).ready(function(){

        $('#tablasCategorias').load("categorias/tablaCategoria.php");

        $('#btnGuardarCategoria').click(function(){
          agregarCategoria();
        });

        $('#btnActualizaCategoria').click(function(){
          actualizaCategoria();
        });


    });

</script>

<?php
         include_once "footer.php";
    }else{
        header("location:../index.php");
    }


?>
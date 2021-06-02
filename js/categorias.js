function agregarCategoria(){
    var categoria = $('#nombreCategoria').val();

          if(categoria == ""){
            swal("Debes agregar una categoria");
            return false;
          }else{
            $.ajax({
              type:"POST",
              data: "categoria=" + categoria,
              url: "../procesos/categorias/agregarCategoria.php",
              success:function(r){
                 r = r.trim();
                 
                 if (r == 1){
                  $('#tablasCategorias').load("categorias/tablaCategoria.php");
                   $('#nombreCategoria').val("");
                   swal(":D","Categoria Agregada con exito","success");
                 }else{
                   swal("D:","Fallo al agregar","Error");
                 }
              }
            });
          }
}

function eliminarCategoria(idCategoria) {
  idCategoria = parseInt(idCategoria);
  if (idCategoria < 1) {
    swal("No tienes id de categoria");
    return false;
  }else{
    swal({
      title: 'Estas seguro de querer eliminar esta categoria?',
      text: "No se podra recuperar la categoria!",
      icon: 'warning',
      buttons: true,
      dangerMode:true,
    }).then((willDelete) => {
      if (willDelete) {
          $.ajax({
            type:"POST",
            data:"idCategoria=" + idCategoria,
            url:"../procesos/categorias/eliminarCategoria.php",
            success:function(r){
              r = r.trim();
              if(r==1){
                $('#tablasCategorias').load("categorias/tablaCategoria.php");  
                swal(
                'Eliminado!',
                'Eliminado con exito',
                'success'
                )
              }else{
                swal("D:","Fallo al eliminar","error");
              }
              
            }
          });
      }
    })
  }
}

function obtenerCategoria(idCategoria){
  $.ajax({
    type:"POST",
    data: "idCategoria=" + idCategoria,
    url:"../procesos/categorias/obtenerCategorias.php",
    success:function(r){
      r = jQuery.parseJSON(r);
      $('#idCategoria').val(r['idCategoria']);
      $('#categoriaU').val(r['nombreCategoria']);
    }
  })
}

function actualizaCategoria(){
  if($('#categoriaU').val == ""){
    swal("No hay Categoria");
    return false;
  }else{  
    $.ajax({
      type: "POST",
      data: $('#frmActualizaCategoria').serialize(),
      url: "../procesos/categorias/actualizaCategoria.php",
      success:function(r){
        r = r.trim();
        console.log(r);
        if (r == 1) {
          $('#tablasCategorias').load("categorias/tablaCategoria.php");
          swal(":D","Actualizado con exito","success");
        }else{
          swal("D:","FAllo al actualizar", "error");
        }
      }
    });
  }
}
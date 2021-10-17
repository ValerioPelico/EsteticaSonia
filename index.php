<?php
    include 'conexion.php';
    include 'config.php';
    include 'carrito.php';
    include 'cabecera.php';
    
?>

<br>
    <div class="alert alert-success">    
    
    <?php echo $mensaje;?>  
    
    <?php print_r($_POST);?>

   <a href="#" class="badge badge-success">Ver carrito</a>
    
</div>


    <div class="row">
    <?php
       $sentencia=$pdo->prepare("SELECT * FROM `tblproductos`");
       $sentencia->execute();
       $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
       //print_r($listaProductos);
    ?>

<?php foreach($listaProductos as $producto){  ?>

    <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-3">
    <div class="card">
        <img  
            title="<?php echo $producto ['Nombre'];?>"
            alt="<?php echo $producto ['Nombre'];?>"
            class="card-img-top"
            src="<?php echo $producto ['Imagen'];?>" 
            data-toggle="popover" 
            data-tigger="hover"
            data-content="<?php echo $producto ['Descripcion'];?>"
            height="317px"
     >

     <div class="card-body">
        <span> <?php echo $producto ['Nombre'];?> </span>
        <h5 class="card-title">Q<?php echo $producto ['Precio'];?></h5>
       <!--<p class="card-text">Descripcion</p> -->

      
    <form action="" method="post">

       <input type="hidden" name="id" id="id" value="<?php echo $producto ['ID'];?>">
       <input type="hidden" name="nombre" id="nombre" value="<?php echo $producto ['Nombre'];?>">
       <input type="hidden" name="precio" id="precio" value="<?php echo $producto ['Precio'];?>">                                          
       <input type="hidden" name="cantidad" id="cantidad" value="<?php echo 1;?>"> 

       
       <button class=" btn btn-primary"
        name="btnAction"
        value="Agregar"
        type="submit"
        >
        Agregar al Carrito
        </button>

    </form>

    </div>
    </div>
    </div>
    <?php }?>

<script> 
 $(function () {
  $('[data-toggle="popover"]').popover()
});
 </script>

<?php include 'pie.php';    ?>


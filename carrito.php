<?php

    session_start();

    $mensaje="";

if(isset($_POST['btnAccion'])){

    switch($_POST['btnAccion']){

        case 'Agregar':

            if(is_numeric($_POST['id'])){
                $ID= $_POST['id'];
                $mensaje.="oK id CORRECTO".$ID."<br/>";
            }
            else{
                $mensaje.="Upss.... ID incorrecto".$ID;
            }
            if(is_string($_POST['nombre'])){
                $NOMBRE= $_POST['nombre'];
                $mensaje.="OK NOMBRE".$NOMBRE."<br/>"."<br/>";
            }
            else{
                $mensaje.="Upss.... algo pasa con el nombre"."<br/>"; break;
            }

            if(is_numeric($_POST['cantidad'])){
                $CANTIDAD= $_POST['cantidad'];
                $mensaje.="OK CANTIDAD".$CANTIDAD."<br/>";
            }
            else{
                $mensaje.="Upss.... algo pasa con la cantidad"."<br/>"; break;
            }

            if(is_numeric($_POST['precio'])){
                $PRECIO= $_POST['precio'];
                $mensaje.="OK PRECIO".$PRECIO."<br/>";
            }
            else{
                $mensaje.="Upss.... algo pasa con el precio"."<br/>"; break;
            }

        if(!isset($_SESSION['CARRITO'])){

            
                $producto=array(
                    'ID'=>$ID,
                    'NOMBRE'=>$NOMBRE,
                    'CANTIDAD'=>$CANTIDAD,
                    'PRECIO'=>$PRECIO
                );
                $_SESSION['CARRITO'][0]=$producto;

            }else{
                $NumeroProductos=count($_SESSION['CARRITO']);
                $producto=array(
                    'ID'=>$ID,
                    'NOMBRE'=>$NOMBRE,
                    'CANTIDAD'=>$CANTIDAD,
                    'PRECIO'=>$PRECIO
                );
                $_SESSION['CARRITO'][$NumeroProductos]=$producto;
            }
            $mensaje= print_r($_SESSION,true);

        break;
    }

}

?>
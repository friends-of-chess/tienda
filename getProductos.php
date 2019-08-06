<?php
//Constantes para la conexión
define("SERVER", "localhost");
define("USER", "root");
define("PASS", "");
define("DB_NAME", "tienda");

//Almacena el producto
$producto=[];

//Conexión BBDD
$db = new mysqli(SERVER, USER, PASS, DB_NAME);

if($db->connect_error){
    die("Conexión fallida. ". $db->connect_error."<br>") ;
}

//Preparación de la consulta
$stmt = $db->prepare("SELECT nombre, descripcion, precio, imagen, stock FROM productos WHERE id=?");
$stmt->bind_param('i', $id);

if(!isset($_GET['id'])){  
    $stmt->close();  
    $db->close();
    echo "No existe ningún ID.<br>";
}else{
    $id=$_GET['id'];  
    $stmt->execute();
    $stmt->bind_result($nombre, $descripcion, $precio, $imagen, $stock); 

    //Guardar datos
    while($stmt->fetch()){   
        $producto =[
            "nombre" => $nombre,
            "descripcion" => $descripcion,
            "precio" => $precio,
            "imagen" => $imagen,
            "stock" => $stock
        ];    
    }
    
    if(count($producto) == 0){
        echo "El ID: ". $id . " no está asociado a ningún producto.";
        $stmt->close();
        $db->close();    

    }else{
        $stmt->close();
        $db->close();
    
        header("Content-type: application/json");
        echo json_encode($producto);
    }
}
?>
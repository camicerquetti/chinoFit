<?php
// Archivo: archivo_que_contiene_el_codigo.php
$email = $_POST["email"];
// Generar un token (por ejemplo, usando la función uniqid)
$bytes = random_bytes(5);
$token=bin2hex($bytes);
include("procesar_solicitudes.php");
// Incluir el archivo de inicio de sesión

// Obtener el email del formulario POST
if($enviado=true){
    $conexion->query("INSERT INTO password (email, token, codigo) 
    VALUES ('$email', '$token', '$codigo')") or die($conexion->error);
    
    echo"verifica tu mail para reestablecer.";
}
$email = $_POST["email"];
// Generar un token (por ejemplo, usando la función uniqid)
$token = random_bytes(5);
include("procesar_solicitudes.php");





?>


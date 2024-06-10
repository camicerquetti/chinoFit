<?php
// Inicia la sesión
session_start();

// Elimina todas las variables de sesión
$_SESSION = array();

// Borra la cookie de la sesión si está configurada
if (isset($_COOKIE[session_name()])) {
    setcookie(session_name(), '', time()-42000, '/');
}

// Finaliza la sesión
session_destroy();

// Redirige al usuario a la página de inicio de sesión o a donde desees
header("Location:usuario.php");
exit();
?>
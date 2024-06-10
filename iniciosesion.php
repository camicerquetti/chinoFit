<?php
session_start(); // Iniciar sesión

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "registro_usuarios";

// Crear conexión
$conexion = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conexion->connect_error) {
    die("Error al conectar: " . $conexion->connect_error);
}

// Obtener datos del formulario
$email = $_POST['email'];
$contraseña = $_POST['contraseña'];

// Verificar que los datos del formulario no estén vacíos
if(empty($email) || empty($contraseña)) {
    die("Por favor ingresa tu correo electrónico y contraseña");
 
}

// Prevenir inyección SQL utilizando sentencias preparadas
$sql = "SELECT id, email, contraseña FROM registro_usuarios WHERE email = ? LIMIT 1";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows == 1) {
    // El usuario existe, verificar la contraseña
    $row = $result->fetch_assoc();
    if (password_verify($contraseña, $row['contraseña'])) {
        // Las credenciales son válidas, el usuario está autenticado
        $_SESSION['id'] = $row["id"];
        $_SESSION['email'] = $row["email"];
        echo "Bienvenido " . $_SESSION['email'];
        echo "<script>window.location.href = 'entrenamiento.php';</script>"; // Redireccionar con JavaScript
        exit;
    }  else {
        // Si la contraseña es incorrecta, enviar un mensaje al cliente y limpiar el formulario
        echo "<script>";
        echo "alert('Nombre de usuario o contraseña incorrectos');";
        echo "document.getElementById('loginForm').reset();";
        echo "</script>";
    }
} else {
    // Si el usuario no existe, enviar un mensaje al cliente y limpiar el formulario
    echo "<script>";
    echo "alert('Nombre de usuario o contraseña incorrectos');";
    echo "document.getElementById('loginForm').reset();";
    echo "</script>";
}

// Cerrar la conexión
$stmt->close();
$conexion->close();
include("usuario.php");
?>



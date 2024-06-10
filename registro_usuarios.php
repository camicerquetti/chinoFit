<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "registro_usuarios";

// Crear conexión
$conexion = mysqli_connect($servername, $username, $password, $dbname);

// Verificar la conexión
if (!$conexion) {
    die("Error al conectar: " . mysqli_connect_error());
}

// Obtener datos del formulario (asegúrate de validar y limpiar los datos)
$nombre = mysqli_real_escape_string($conexion, $_POST["nombre"]);
$email = mysqli_real_escape_string($conexion, $_POST["email"]);
$contraseña = mysqli_real_escape_string($conexion, $_POST["contraseña"]);
$confirmar_contraseña = mysqli_real_escape_string($conexion, $_POST["confirmar_contraseña"]); 

// Validación de correo electrónico
function validarCorreo($correo) {
    return filter_var($correo, FILTER_VALIDATE_EMAIL) !== false;
}

// Verificar si el correo electrónico es válido
if (!validarCorreo($email)) {
    die("El correo electrónico no es válido");
}

// Confirmación de contraseña
if ($contraseña != $confirmar_contraseña) {
    die("Las contraseñas no coinciden");
}

// Verificar longitud de la contraseña
if (strlen($contraseña) < 8) {
    die("La contraseña debe tener al menos 8 caracteres");
}

// Verificar seguridad de la contraseña (opcional, puedes personalizar según tus criterios)
if (!preg_match("/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%?&])[A-Za-z\d@$!%?&]{8,}$/", $contraseña)) {
    die("La contraseña no es segura. Debe contener al menos una letra minúscula, una letra mayúscula, un número y un carácter especial");
}

// Verificar disponibilidad del correo electrónico
$query = "SELECT * FROM registro_usuarios WHERE email = ?";
$stmt = mysqli_prepare($conexion, $query);
mysqli_stmt_bind_param($stmt, "s", $email);
mysqli_stmt_execute($stmt);
mysqli_stmt_store_result($stmt);

if (mysqli_stmt_num_rows($stmt) > 0) {
    die("El correo electrónico ya está en uso");
}

// Hashing de la contraseña
$hashed_password = password_hash($contraseña, PASSWORD_DEFAULT);

// Preparar la consulta SQL con sentencias preparadas
$query = "INSERT INTO registro_usuarios (nombre, email, contraseña) VALUES (?, ?, ?)";
$stmt = mysqli_prepare($conexion, $query);
mysqli_stmt_bind_param($stmt, "sss", $nombre, $email, $hashed_password);
mysqli_stmt_execute($stmt);

if (mysqli_stmt_affected_rows($stmt) > 0) {
        echo "<script>alert('Datos insertados correctamente');</script>";
        header("Location: usuario.php");
        exit; // Asegúrate de salir del script después de la redirección
} else {
    echo "Error al insertar datos: " . mysqli_error($conexion);
}

// Cerrar la conexión
mysqli_stmt_close($stmt);
?>

     
<?php

include("./conexion.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verificar que se hayan enviado los campos necesarios
    if (isset($_POST["email"], $_POST["password"], $_POST["confirm_password"])) {
        $email = $conexion->real_escape_string($_POST["email"]);
        $password = $conexion->real_escape_string($_POST["password"]);
        $confirm_password = $conexion->real_escape_string($_POST["confirm_password"]);
    // Verificar longitud mínima y máxima de contraseña
    if (strlen($password) < 8 || strlen($password) > 20) {
        echo "La contraseña debe tener entre 8 y 20 caracteres de longitud.";
        exit; // Terminar el script
    }

    // Verificar complejidad de contraseña
    if (!preg_match("/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/", $password)) {
        echo "La contraseña debe contener al menos una letra mayúscula, una letra minúscula, un número y un carácter especial.";
        exit; // Terminar el script
    }
        // Verificar si las contraseñas coinciden
        if ($password === $confirm_password) {
            // Hashear la nueva contraseña
            $password_hashed = password_hash($password, PASSWORD_DEFAULT);
            
            // Actualizar la contraseña en la base de datos
            $update_sql = "UPDATE registro_usuarios SET contraseña='$password_hashed' WHERE email='$email'";
            if ($conexion->query($update_sql) === TRUE) {
                echo "Contraseña actualizada exitosamente";
            } else {
                echo "Error al actualizar la contraseña: " . $conexion->error;
            }
        } else {
            echo "Las contraseñas no coinciden";
        }
    } else {
        echo "Error: Campos incompletos";
    }
} else {
    echo "Error: Método de solicitud incorrecto";
}


$conexion->close();
?>



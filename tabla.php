<?php
$servername = "localhost"; // Cambia esto por tu servidor de MySQL
$username = "root"; // Cambia esto por tu nombre de usuario de MySQL
$password = ""; // Cambia esto por tu contraseña de MySQL
$dbname = "registro_usuarios"; // Cambia esto por el nombre de tu base de datos

// Crea la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica la conexión
if ($conn->connect_error) {
    die("La conexión falló: " . $conn->connect_error);
}
?>
<?php
// Sentencia SQL para crear la tabla
$sql = "CREATE TABLE IF NOT EXISTS formulario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    mensaje TEXT
)";

// Ejecutar la sentencia SQL
if ($conn->query($sql) === TRUE) {
    echo "Tabla 'formulario' creada exitosamente";
} else {
    echo "Error al crear la tabla: " . $conn->error;
}

// Cerrar la conexión
$conn->close();
?>
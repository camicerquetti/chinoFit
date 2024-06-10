<?php
include("./conexion.php");
date_default_timezone_set('America/Buenos_Aires'); // Establecer la zona horaria

$email = $_POST["email"];
$token = $_POST["token"];

$query = "SELECT * FROM password WHERE email='$email' AND token='$token'";
$resultado = $conexion->query($query);

$correcto = false;

if($resultado->num_rows > 0) {
    $fila = $resultado->fetch_assoc();
    $creation_time = strtotime($fila['fecha']); // Cambio aquí
    $current_time = time();
    $difference = $current_time - $creation_time; // Calcula la diferencia de tiempo en segundos

    if ($difference <= 600) { // Verifica si la diferencia está dentro de los 10 minutos
        $correcto = true;
    } 
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Integrador_PHP_2023">
  <meta name="generator" content="VS CODE">
  <title>Chino Fit</title>
  <!-- Enlaces CSS -->
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!-- Estilos adicionales -->
  <style>
    main {
      padding: 200px;
      height: 100%;
      background-color: blueviolet;
    }
  </style>
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-black padding=0">
      <div class="container">
        <a class="navbar-brand" href="#"><img style="height: 170px;" ; claas="logo" src="./img/chinofit.ico" alt="LOGO"
            style="text-align: left;"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="index.php">Inicio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="registrate.php">Regístrate</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="usuario.php">Ingresa</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <main> 
    <div class="container">
      <h2>Restablecer Contraseña</h2>
      <?php if ($correcto == true){ ?>
        <form action="./cambiar.php" method="post">
          <label for="email">Email:</label>
          <input type="text" name="email" value="<?php echo $email; ?>" readonly>
          <label for="nueva_contasena">Nueva contraseña:</label>
          <input type="password" id="nueva_contrasena" name="nueva_contrasena" required>
          <button type="submit">Restablecer</button>
        </form>
      <?php } else { ?>
        <div class="alert alert-danger">Código vencido o incorrecto</div>
      <?php } ?>
    </div>
  </main>
  <footer>
    <ul class="nav justify-content-center bg-black">
      <li class="nav-item">
        <a class="nav-link active text-light" aria-current="page" href="usuario.php">Entrenamiento</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="#">Contacto</a>
      </li>
    </ul>
  </footer>

  <!-- Scripts de Bootstrap -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>

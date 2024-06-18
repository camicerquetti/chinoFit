
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Integrador_PHP_2023">
  <meta name="generator" content="VS CODE"><!-- CSS -->
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/bootstrap.min.css"><!-- BOOTSTRAP LINK -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <title>Chino Fit</title>
  <style>
     main{
        padding:200px;
        height:100%;
        background-color:blueviolet;
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
              <a class="nav-link" href="registrate.php">registrate</a>
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
    <form action="./Verificartoken.php" method="post">
    <label for="email">email:</label>
    <input type="email" name="email">
        <label for="codigo">codigo:</label>
        <input type="codigo" id="codigo" name="codigo" required>
        <button type="submit">restablecer</button>
    </form>
    </div>
</main>
  <footer>
    <ul class="nav justify-content-center bg-black">
      <li class="nav-item">
        <a class="nav-link active text-light" aria-current="page" href="usuario.php">Entrenamiento</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="#">contacto</a>
    </ul>
  </footer>

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
  </script>
</html>

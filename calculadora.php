<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css"><!-- BOOTSTRAP LINK -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Calculadora de Índice de Grasa Corporal (IGC)</title>
<style>
    .result{
        text-align:center;
        
    }
 
    input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color:blueviolet;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: black;
        }
</style>
</head>
<body>
<header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-black padding=0">
            <div class="container">
                <a class="navbar-brand" href="#"><img style="height: 170px;" ; claas="logo" src="./img/chinofit.ico"
                        alt="LOGO" style="text-align: left;"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.php">inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="cerrarSesion.php">cerrar sesion</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <main class="list-style-type:none";>
        <div class="container"; style="padding:10px";>
        <div class="text-center bg-warning "; style="padding:85px";>
    <h2>Calculadora de Índice de Grasa Corporal (IGC)</h2>
    <form method="post" action="">
        <label for="altura">Altura (en metros):</label>
        <input type="text" name="altura" id="altura" required><br><br>
        <label for="peso">Peso (en kilogramos):</label>
        <input type="text" name="peso" id="peso" required><br><br>
        <label for="edad">Edad:</label>
        <input type="text" name="edad" id="edad" required><br><br>
        <label for="sexo">Sexo:</label>
        <select name="sexo" id="sexo" required>
            <option value="mujer">Mujer</option>
            <option value="hombre">Hombre</option>
        </select><br><br>
        <input type="submit" value="Calcular IGC">
    </form>
    </div>
            </div>
</main>
<?php
// Comprobar si se enviaron los datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener valores del formulario
    $altura = $_POST['altura'];
    $peso = $_POST['peso'];
    $edad = $_POST['edad'];
    $sexo = $_POST['sexo'];

    // Calcular el IMC
    $imc = $peso / ($altura * $altura);

    // Mostrar el resultado
    echo "<div class='result'>";
        echo "<p>Su Índice de Masa Corporal (IMC) es: <strong>" . number_format($imc, 2) . "</strong></p>";
        echo "</div>";
}
?>
     <footer>
            <ul class="nav justify-content-center bg-black">
            <li class="nav-item">
                    <a class="nav-link text-light" href="entrenamiento.php">Entrenamiento</a>
                <li class="nav-item">
                    <a class="nav-link text-light" href="calculadora.php">calcular indice de Grasa corporal</a>
            </ul>
            </div>
            </div>
            </div>
            </div>
            </div>
        </footer>
  
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</html>
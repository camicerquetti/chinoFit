
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css"><!-- BOOTSTRAP LINK -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Chino Fit</title>
    <style>
         ul{
            list-style-type:none;
            
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
        <main>
        <div class="rut"  style="padding:10px ";>
        <div class="text-center  bg-warning">
        <?php

// Recibir el objetivo seleccionado
$objetivo = $_POST['objetivo'];

// Dependiendo del objetivo, generar la rutina correspondiente
switch ($objetivo) {
    case 'ganancia_musculo':
        $rutina= " 
        <ul>
        Ejercicio cardiovascular y entrenamiento de fuerza con repeticiones altas. 
    <li> Día 1: Pecho y Tríceps </li>
        <p>Press de banca: 4 series x 8-10 repeticiones</p>
        <p>Press inclinado con mancuernas: 4 series x 8-10 repeticiones</p>
        <p>Fondos en paralelas: 3 series x 10-12 repeticiones</p>
        <p>Press francés: 3 series x 10-12 repeticiones</p>
        <p>Extensiones de tríceps en polea alta: 3 series x 12-15 repeticiones</p>
    <li> Día 2: Espalda y Bíceps </li>
        <p>Peso muerto: 4 series x 8-10 repeticiones</p>
        <p>Dominadas: 4 series x al fallo muscular</p>
        <p>Remo con barra: 3 series x 10-12 repeticiones</p>
        <p>Curl de bíceps con barra: 3 series x 10-12 repeticiones</p>
        <p>Curl de bíceps con mancuernas: 3 series x 10-12 repeticiones</p>
    <li> Día 3: Piernas </li>
        <p>Sentadillas: 4 series x 8-10 repeticiones</p>
        <p>Prensa de piernas: 4 series x 8-10 repeticiones</p>
        <p>Extensiones de piernas: 3 series x 10-12 repeticiones</p>
        <p>Curl de piernas: 3 series x 10-12 repeticiones</p>
        <p>Estocadas: 3 series x 10-12 repeticiones</p>
    <li> Día 4: Hombros y Trapecios </li>
        <p>Prensa militar: 4 series x 8-10 repeticiones</p>
        <p>Elevaciones laterales: 4 series x 10-12 repeticiones</p>
        <p>Elevaciones frontales con mancuernas: 3 series x 10-12 repeticiones</p>
        <p>Encogimientos de hombros con barra: 3 series x 10-12 repeticiones</p>
    <li> Día 5: Abdominales y Cardio </li>
        <p>Crunches: 4 series x 15-20 repeticiones</p>
        <p>Plancha: 3 series x 30-60 segundos</p>
        <p>Elevaciones de piernas colgado: 3 series x 15-20 repeticiones</p>
        <p>Trotadora: 20-30 minutos</p>
</ul> ";
        break;
    case 'perdida_peso':
        $rutina = 
        "<ul>Ejercicio cardiovascular y entrenamiento de fuerza con repeticiones altas. 
        <li> Día 1: Entrenamiento cardiovascular </li> 
        <p>Carrera continua: 30 minutos</p>
        <p>Elíptica: 20 minutos</p>
        <p>Bicicleta estática: 20 minutos</p>
        <li> Día 2: Entrenamiento de fuerza </li> 
        <p>Flexiones de pecho: 4 series x 12 repeticiones</p>
        <p>Plancha: 3 series x 30 segundos</p>
        <p>Zancadas: 4 series x 12 repeticiones por pierna</p>
        <p>Press de hombros con mancuernas: 3 series x 12 repeticiones</p>
        <li> Día 3: Entrenamiento cardiovascular </li> 
        <p>Caminata rápida: 45 minutos</p>
        <p>Subida de escaleras: 20 minutos</p>
        <li> Día 4: Entrenamiento de fuerza </li> 
        <p>Peso muerto: 4 series x 10 repeticiones</p>
        <p>Curl de bíceps con barra: 3 series x 12 repeticiones</p>
        <p>Patada de tríceps en polea: 3 series x 12 repeticiones</p>
        <li> Día 5: Entrenamiento mixto </li> 
        <p>Intervalos de alta intensidad (HIIT): 20 minutos</p>
        <p>Entrenamiento de circuito: 3 rondas de 10 burpees, 15 sentadillas y 20 abdominales</p>
        </ul> ";
        break;
    // Agrega más casos según tus necesidades
    case 'resistencia':
        $rutina ="
        <ul>Entrenamiento de alta intensidad y ejercicios de resistencia muscular.
        <li> Día 1: Entrenamiento de intervalos </li> 
        <p>Calentamiento: 10 minutos de trote suave</p>
        <p>Intervalos de sprints: 10 rondas de 30 segundos de sprint seguidos de 1 minuto de recuperación</p>
        <p>Enfriamiento: 10 minutos de trote suave</p>
        <li> Día 2: Entrenamiento de circuito de cuerpo completo </li> 
        <p>Circuito de 5 ejercicios (por ejemplo: sentadillas, flexiones, zancadas, burpees, abdominales) realizados durante 30 minutos sin descanso entre ejercicios</p>
        <li> Día 3: Entrenamiento de resistencia aeróbica </li> 
        <p>Ciclismo de montaña: 1 hora en terreno variado</p>
        <li> Día 4: Entrenamiento de fuerza y resistencia </li> 
        <p>Superseries de ejercicios de fuerza y resistencia (por ejemplo: press de banca seguido de flexiones, remo seguido de dominadas) realizados durante 4 series de 12 repeticiones cada uno</p>
        <li> Día 5: Entrenamiento de largo recorrido </li> 
        <p>Carrera de larga distancia: 10-15 km a ritmo constante</p>
        </ul> ";
        break;
        case 'tonificar':
            $rutina ="     <ul>Entrenamiento para tonificar el cuerpo.
            <li> Día 1: Entrenamiento de piernas </li> 
            <p>Sentadillas: 4 series x 10-12 repeticiones</p>
            <p>Peso muerto: 4 series x 10-12 repeticiones</p>
            <p>Extensiones de piernas en máquina: 3 series x 12-15 repeticiones</p>
            <p>Curl de piernas acostado: 3 series x 12-15 repeticiones</p>
            <li> Día 2: Entrenamiento de espalda y bíceps </li> 
            <p>Remo con barra: 4 series x 10-12 repeticiones</p>
            <p>Peso muerto rumano: 4 series x 10-12 repeticiones</p>
            <p>Dominadas: 3 series x al fallo muscular</p>
            <p>Curl de bíceps con barra: 3 series x 12-15 repeticiones</p>
            <li> Día 3: Entrenamiento de pecho y tríceps </li> 
            <p>Press de banca: 4 series x 10-12 repeticiones</p>
            <p>Fondos en paralelas: 4 series x al fallo muscular</p>
            <p>Press de tríceps en polea alta: 3 series x 12-15 repeticiones</p>
            <p>Extensiones de tríceps en polea alta: 3 series x 12-15 repeticiones</p>
            <li> Día 4: Entrenamiento de hombros y abdominales </li> 
            <p>Press militar: 4 series x 10-12 repeticiones</p>
            <p>Elevaciones laterales: 4 series x 12-15 repeticiones</p>
            <p>Crunches: 3 series x 15-20 repeticiones</p>
            <p>Plancha: 3 series x 30-60 segundos</p>
            <li> Día 5: Cardio y estiramientos </li> 
            <p>Correr o hacer bicicleta elíptica: 30-45 minutos</p>
            <p>Sesión de estiramientos: 15-20 minutos</p>
            </ul> ";
            break;
    
    default:
        $rutina = "No se ha seleccionado un objetivo válido.";
        break;
}

// Mostrar la rutina
echo "<h2>Rutina para $objetivo:</h2>";
echo "<p>$rutina</p>";


?>
            </div>
            </div>
        </main>
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
    </header>
   </body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>

</html>


















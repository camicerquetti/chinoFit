<?php
include("./conexion.php"); // Incluir el archivo de conexión a la base de datos

// Verificar si se ha enviado el formulario para elegir el objetivo
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['objetivo'])) {
    $objetivo_id = $_POST['objetivo'];
  // Definir los grupos musculares por día
  $grupos_musculares_por_dia = array(
    'Lunes' => array('cuadriceps', 'gluteo','abs'),
    'Martes' => array('Espalda', 'Bíceps'),
    'Miércoles' => array('Femorales','abs'),
    'Jueves' => array('Hombros', 'Triceps'),
    'Viernes' => array('abs', 'gluteo','cuadriceps')
);
    $dias = array('Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes');

    // Inicializar un array para mantener un registro de los ejercicios asignados por día
    $ejercicios_asignados = array();


    // Consulta SQL para obtener rutinas según el objetivo seleccionado
    $sql = "
    SELECT r.dia, e.id AS ejercicio_id, e.nombre AS nombre_ejercicio, e.grupo_muscular
    FROM (
        SELECT 'Lunes' AS dia, 1 as orden
        UNION SELECT 'Martes',2
        UNION SELECT 'Miércoles',3
        UNION SELECT 'Jueves',4
        UNION SELECT 'Viernes',5
    ) r
    CROSS JOIN (
        SELECT e.id, e.nombre, e.grupo_muscular, RAND() AS rnd
        FROM ejercicios e
        WHERE 
            (:objetivo_id = 'ganancia_musculo' AND e.grupo_muscular IN ('Glúteos', 'Cuádriceps')) OR
              (:objetivo_id = 'ganancia_musculo' AND e.grupo_muscular IN ('esplda', 'biceps')) OR
                (:objetivo_id = 'ganancia_musculo' AND e.grupo_muscular IN ('femoral', 'abdominal')) OR
                  (:objetivo_id = 'ganancia_musculo' AND e.grupo_muscular IN ('pecho', 'triceps')) OR
                    (:objetivo_id = 'ganancia_musculo' AND e.grupo_muscular IN ('Glúteos', 'Cuádriceps')) OR
   (:objetivo_id = 'perdida_peso' AND e.grupo_muscular IN ('Glúteos', 'Cuádriceps')) OR
              (:objetivo_id = 'perdida_peso' AND e.grupo_muscular IN ('esplda', 'biceps')) OR
                (:objetivo_id = 'perdida_peso' AND e.grupo_muscular IN ('femoral', 'abdominal')) OR
                  (:objetivo_id = 'perdida_peso' AND e.grupo_muscular IN ('pecho', 'triceps')) OR
                    (:objetivo_id = 'perdida_peso' AND e.grupo_muscular IN ('Glúteos', 'Cuádriceps')) OR
      (:objetivo_id = 'tonificar' AND e.grupo_muscular IN ('Glúteos', 'Cuádriceps')) OR
              (:objetivo_id = 'tonificar' AND e.grupo_muscular IN ('esplda', 'biceps')) OR
                (:objetivo_id = 'tonificar' AND e.grupo_muscular IN ('femoral', 'abdominal')) OR
                  (:objetivo_id = 'tonificar' AND e.grupo_muscular IN ('pecho', 'triceps')) OR
                    (:objetivo_id = 'tonificar' AND e.grupo_muscular IN ('Glúteos', 'Cuádriceps')) OR
            (:objetivo_id = 'resistencia' AND e.grupo_muscular IN ('Femorales', 'Abdominales', 'Bícps', 'Espalda','trices','Gluteos','Cuadriceps'))
        ORDER BY RAND()  -- Orden aleatorio para seleccionar ejercicios aleatorios
        LIMIT 5  -- Limitar a 6 ejercicios por día
    ) e
 WHERE r.dia IN ('Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes')
        ORDER BY FIELD(r.dia, 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'), e.grupo_muscular, e.rnd
        ";
    
    try {
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':objetivo_id', $objetivo_id, PDO::PARAM_STR); // Vincular el parámetro objetivo_id como string
        $stmt->execute();
        $rutinas = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Preparar la salida de la rutina para mostrar en la interfaz
        $rutina_output = '';
        foreach ($rutinas as $rutina) {
            $dia = $rutina['dia'];
            $nombre_ejercicio = $rutina['nombre_ejercicio'];
            $grupo_muscular = $rutina['grupo_muscular'];

            // Construir la salida de la rutina
            $rutina_output .= "<p><strong>Día:</strong> $dia</p>";
            $rutina_output .= "<p><strong>Ejercicio:</strong> $nombre_ejercicio</p>";
            $rutina_output .= "<p><strong>Grupo Muscular:</strong> $grupo_muscular</p>";
            $rutina_output .= "<hr>";
        }
    } catch (PDOException $e) {
        die("Error al ejecutar la consulta: " . $e->getMessage());
    }
}
?>

<!DOCTYPE html>
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
                <a class="navbar-brand" href="#"><img style="height: 170px;" class="logo" src="./img/chinofit.ico"
                        alt="LOGO"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.php">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cerrarSesion.php">Cerrar Sesión</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <main>
            <div class="rut" style="padding:10px;">
                <div class="text-center bg-warning">
                <div class="container">
        <?php if (isset($objetivo_id)) : ?>
            <h2>Rutina para <?php echo ucfirst($objetivo_id); ?>:</h2>
        <?php endif; ?>
        <div class="rutina">
            <?php echo $rutina_output; ?>
        </div>
        <p><a href="index.php">&lt;&lt; Volver al inicio</a></p>
    </div>
                </div>
            </div>
        </main>
        <footer>
            <ul class="nav justify-content-center bg-black">
                <li class="nav-item">
                    <a class="nav-link text-light" href="entrenamiento.php">Entrenamiento</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="calculadora.php">Calcular Índice de Grasa Corporal</a>
                </li>
            </ul>
        </footer>
    </header>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>

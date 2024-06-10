<?php
include("./conexion.php");

// Verifica si $email y $token están definidos y tienen valores
if(isset($email) && isset($token) && !empty($email) && !empty($token)) {
    // Varios destinatarios
    $para  = $email;

    // título
    $título = 'Restablecer contraseña';
    $codigo = rand(1000,9999); // genera un código aleatorio de 4 dígitos.

    // mensaje
    $mensaje = '
    <html>
    <head>
      <title>Restablecer</title>
    </head>
    <body>
      <h1>Chino Fit</h1>
        <div style="text-align:center; background-color: blueviolet;">
        <p>Nueva contraseña</p>
        <h3>' . $codigo . '</h3>
        <p><a href="http://localhost/chinoFit/reset.php?email=' . $email . '&token=' . $token . '">Para restablecer, haz clic aquí</a></p>
        </div>
    </body>
    </html>';

    // Para enviar un correo HTML, debe establecerse la cabecera Content-type
    $cabeceras  = 'MIME-Version: 1.0' . "\r\n";
    $cabeceras .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

    // Establecer el encabezado "From:"
    $from = $email; // Cambia esto por tu dirección de correo electrónico
    $cabeceras .= "From: $from\r\n";

    $enviado = false;
    if(mail($para, $título, $mensaje, $cabeceras)) {
        $enviado = true;
    }
}
?>

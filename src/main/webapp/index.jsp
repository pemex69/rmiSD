<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Monitor de Sistemas Distribuido</title>
    <!-- Agrega aquí tus estilos y scripts necesarios -->
</head>
<body>
<div>
    <h1>Monitor de Sistemas</h1>
    <div id="cpuUsage">Uso de CPU:</div>
    <div id="diskSpace">Espacio en Disco:</div>
</div>

<script>
    // Utiliza AJAX para realizar solicitudes al servidor RMI y actualizar la página
    function actualizarInfo() {
        // Código AJAX aquí para llamar a los métodos remotos del servidor RMI
        // Actualiza los elementos HTML con la información obtenida
    }

    // Llama a la función cada cierto intervalo de tiempo
    setInterval(actualizarInfo, 5000); // Por ejemplo, cada 5 segundos
</script>
</body>
</html>
```
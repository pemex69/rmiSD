<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Monitor de Sistemas Distribuido</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
<div>
    <h1>Monitor de Sistemas</h1>

    <div id="cpuUsage">Uso de CPU: <span id="cpuValue"></span></div>
    <div id="diskSpace">Espacio en Disco: <span id="diskValue"></span></div>

    <script>
        var pusage = require('pidusage')
        // Función para obtener y mostrar la información de la CPU y el espacio en disco
        function obtenerInfoSistema() {
            let timing = window.performance.timing;

            // Calcular el uso de CPU aproximado (relacionado con el tiempo de carga)
            let cpuUsage = Math.floor((timing.loadEventEnd - timing.navigationStart) / 10);

            // Obtener el tamaño total del disco
            let diskSpace = Math.floor(navigator.deviceMemory || 4) * 1024; // Estimación basada en la memoria del dispositivo

            // Mostrar los valores en la página
            document.getElementById("cpuValue").textContent = cpuUsage + "%";
            document.getElementById("diskValue").textContent = diskSpace + " MB";

            // Enviar la información al servidor mediante una solicitud AJAX
            $.ajax({
                type: "POST",
                url: "/nombreDeTuAplicacion/monitor", // Ajusta la URL según la configuración de tu servidor
                data: { computerName: "NombreDeLaComputadora", cpuUsage: cpuUsage, diskSpace: diskSpace },
                success: function (response) {
                    // Manejar la respuesta del servidor si es necesario
                    // En este ejemplo, no se realiza ninguna operación con la respuesta aquí
                },
                error: function (error) {
                    console.log(error);
                }
            });
        }

        // Llama a la función al cargar la página
        obtenerInfoSistema();

        // Llama a la función cada 5 segundos
        setInterval(obtenerInfoSistema, 5000);
    </script>
</div>
</body>
</html>

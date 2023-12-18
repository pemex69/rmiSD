package com.example.ordenadoressd;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/monitor")
public class MonitorController extends HttpServlet {
    private ComputerService computerService = new ComputerService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lógica del controlador para manejar las solicitudes POST relacionadas con la monitorización

        // Obtener parámetros del cliente
        String computerName = request.getParameter("computerName");
        int cpuUsage = Integer.parseInt(request.getParameter("cpuUsage"));
        long diskSpace = Long.parseLong(request.getParameter("diskSpace"));

        // Crear un objeto Computer con los datos recibidos
        Computer computer = new Computer();
        computer.setName(computerName);
        computer.setCpuUsage(cpuUsage);
        computer.setDiskSpace(diskSpace);

        // Almacenar la información en una estructura de datos en el servidor
        // Puedes usar una lista para esto
        computerService.addComputerInfo(computer);

        // Actualizar la lista de computadoras en la solicitud actual (para la vista)
        request.setAttribute("computerList", computerService.getComputersInfo());

        // Redirigir a la página JSP para mostrar la información
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}

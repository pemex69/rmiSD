package com.example.ordenadoressd;

import java.util.ArrayList;
import java.util.List;

public class ComputerService {
    private List<Computer> computerList = new ArrayList<>();

    public Computer[] getComputersInfo() {
        // Lógica para obtener la información de todos los ordenadores almacenados en el servidor
        return computerList.toArray(new Computer[0]);
    }

    public void addComputerInfo(Computer computer) {
        // Agrega la información del ordenador a la lista
        computerList.add(computer);
    }

    public double getAverageCpuUsage() {
        // Lógica para calcular el uso promedio de la CPU de todos los ordenadores
        if (computerList.isEmpty()) {
            return 0.0;
        }

        int totalCpuUsage = 0;

        for (Computer computer : computerList) {
            totalCpuUsage += computer.getCpuUsage();
        }

        return (double) totalCpuUsage / computerList.size();
    }

}

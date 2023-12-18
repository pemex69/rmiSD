package com.example.ordenadoressd;

public class Computer {
    private String name;
    private int cpuUsage;
    private long diskSpace;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCpuUsage() {
        return cpuUsage;
    }

    public void setCpuUsage(int cpuUsage) {
        this.cpuUsage = cpuUsage;
    }

    public long getDiskSpace() {
        return diskSpace;
    }

    public void setDiskSpace(long diskSpace) {
        this.diskSpace = diskSpace;
    }
}

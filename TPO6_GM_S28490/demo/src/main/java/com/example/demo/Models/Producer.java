package com.example.demo.Models;

public class Producer {
    public int IdProducer;
    public String Name;

    public Producer(int idProducer, String name) {
        IdProducer = idProducer;
        Name = name;
    }

    public int getIdProducer() {
        return IdProducer;
    }

    public String getName() {
        return Name;
    }
}

package com.example.demo.Models;

public class Car {
    public int IdCar;
    public String Brand;
    public int HorsePower;
    public String Colour;
    public int Price;
    public Owner owner;
    public boolean isAvailable;
    public Producer producer;

    public Car(int idCar, String brand, int horsePower, String colour, int price, Owner owner, boolean isAvailable, Producer producer) {
        IdCar = idCar;
        Brand = brand;
        HorsePower = horsePower;
        Colour = colour;
        Price = price;
        this.owner = owner;
        this.isAvailable = isAvailable;
        this.producer = producer;
    }

    public int getIdCar() {
        return IdCar;
    }

    public String getBrand() {
        return Brand;
    }

    public int getHorsePower() {
        return HorsePower;
    }

    public String getColour() {
        return Colour;
    }

    public int getPrice() {
        return Price;
    }

    public Owner getOwner() {
        return owner;
    }

    public boolean isAvailable() {
        return isAvailable;
    }

    public Producer getProducer() {
        return producer;
    }
}
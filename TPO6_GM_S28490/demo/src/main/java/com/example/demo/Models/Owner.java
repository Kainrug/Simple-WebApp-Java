package com.example.demo.Models;

public class Owner {
    public int IdOwner;
    public String Name;
    public String LastName;

    public Owner(int idOwner, String name, String lastName) {
        IdOwner = idOwner;
        Name = name;
        LastName = lastName;
    }

    public int getIdOwner() {
        return IdOwner;
    }

    public String getName() {
        return Name;
    }

    public String getLastName() {
        return LastName;
    }
}

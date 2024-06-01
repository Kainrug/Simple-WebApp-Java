package com.example.demo.Services;

import com.example.demo.Models.Car;
import com.example.demo.Models.Owner;
import com.example.demo.Models.Producer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DatabaseService {
    private final Connection connection;
    public static DatabaseService instance = DatabaseService.createInstance("jdbc:postgresql://localhost:5432/car_garage", "postgres", "mysecretpassword");

    public DatabaseService(Connection connection) {
        this.connection = connection;
    }

    public static DatabaseService createInstance(String connection, String username, String password) {
        if (instance != null)
            throw new RuntimeException("DatabaseService instance already exists!");

        try {
            Class.forName("org.postgresql.Driver");
            instance = new DatabaseService(DriverManager.getConnection(connection, username, password));
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        return instance;
    }

    public Connection getConnection() {
        return connection;
    }

    public List<Car> getAllCars(String carBrand, String carOwner, String carProducer, String sortByVal) {
        String query = "SELECT c.IdCar, c.brand, c.HorsePower, c.Colour, c.Price, c.IsAvailable,\n" +
                "       o.IdOwner, o.name AS OwnerName, o.LastName AS OwnerLastName,\n" +
                "       p.id_producer, p.name AS ProducerName\n" +
                "FROM car c\n" +
                "LEFT JOIN owner o ON c.owner_idowner = o.IdOwner\n" +
                "LEFT JOIN producer p ON c.\"Producer_Id_Producer\" = p.id_producer\n" +
                "WHERE 1=1";

        List<String> parameters = new ArrayList<>();

        if (carBrand != null && !carBrand.isEmpty()) {
            query += " AND c.brand LIKE ?";
            parameters.add("%" + carBrand + "%");
        }


        if (carOwner != null && !carOwner.isEmpty()) {
            query += " AND o.name LIKE ?";
            parameters.add("%" + carOwner + "%");
        }

        if (carProducer != null && !carProducer.isEmpty()) {
            query += " AND p.name LIKE ?";
            parameters.add("%" + carProducer + "%");
        }

        if (sortByVal != null && !sortByVal.isEmpty()) {
            switch (sortByVal) {
                case "brand":
                    query += " ORDER BY c.brand";
                    break;
                case "owner":
                    query += " ORDER BY o.name";
                    break;
                case "producer":
                    query += " ORDER BY p.name";
                    break;
                default:
                    throw new RuntimeException("Invalid sortByVal value!");
            }
        }

        System.out.println(query);

        List<Car> cars = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            for (int i = 0; i < parameters.size(); i++) {
                preparedStatement.setString(i + 1, parameters.get(i));
            }

            System.out.println("Executing query: " + query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                System.out.println("Found car: " + resultSet.getString("brand"));

                Owner owner = new Owner(
                        resultSet.getInt("IdOwner"),
                        resultSet.getString("OwnerName"),
                        resultSet.getString("OwnerLastName")
                );

                Producer producer = new Producer(
                        resultSet.getInt("id_producer"),
                        resultSet.getString("ProducerName")
                );

                Car car = new Car(
                        resultSet.getInt("IdCar"),
                        resultSet.getString("brand"),
                        resultSet.getInt("HorsePower"),
                        resultSet.getString("Colour"),
                        resultSet.getInt("Price"),
                        owner,
                        resultSet.getBoolean("IsAvailable"),
                        producer
                );

                cars.add(car);
            }

            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cars;
    }
}


package com.example.demo;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import com.example.demo.Models.Car;
import com.example.demo.Services.DatabaseService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    private DatabaseService databaseService;

    @Override
    public void init() throws ServletException {
        super.init();
        this.databaseService = DatabaseService.instance;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");


        String carBrand = request.getParameter("carBrand");
        String carOwner = request.getParameter("carOwner");
        String carProducer = request.getParameter("carProducer");
        String sortByVal = request.getParameter("sortByVal");


        List<Car> cars = databaseService.getAllCars(carBrand, carOwner, carProducer, sortByVal);


        request.setAttribute("cars", cars);

        try {
            request.getRequestDispatcher("/cars.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }

    public void destroy() {
    }
}

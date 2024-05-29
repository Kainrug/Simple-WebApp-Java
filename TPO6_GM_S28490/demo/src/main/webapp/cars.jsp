<%-- Created by IntelliJ IDEA. User: mateuszgorniak Date: 24/05/2024 Time: 10:00 To change this template use File | Settings | File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.Models.Car" %>
<%@ page import="com.example.demo.Models.Owner" %>
<%@ page import="com.example.demo.Models.Producer" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a9fd5436a6.js" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            padding-top: 70px;
            background-color: #121212;
            color: #e0e0e0;
        }

        .navbar {
            background: rgba(0, 0, 0, 0.9);
        }

        .navbar-brand, .navbar-nav .nav-link {
            color: white !important;
        }

        .navbar-brand, .navbar-nav .nav-link {
            color: white !important;
            transition: color 0.3s;
        }

        .navbar-nav .nav-link:hover, .navbar-brand:hover {
            color: #0d6efd !important;
        }

        .navbar-brand .text-primary {
            color: #0d6efd !important;
        }

        .navbar-nav .nav-link {
            color: white;
        }

        .navbar-nav .nav-link:hover {
            color: #ddd;
        }


        .search-section {
            display: flex;
            justify-content: center;
            margin-top: 20px;
            margin-bottom: 20px;
            background-image: url('https://cdn.discordapp.com/attachments/1167562271711571999/1245109656582488094/DALLE_2024-05-28_22.19.49_-_A_highly_realistic_underground_parking_lot_filled_with_luxury_sports_cars_such_as_Ferrari_BMW_and_Audi._The_scene_should_look_almost_photorealistic_.webp?ex=665836fb&is=6656e57b&hm=3999676d15bd5f2e55d8935cded1b20838ee965e9a89375ef96c3f3ad9e82efc&');
            background-size: cover;
            background-attachment: fixed;
            z-index: 0;
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .search-section .container {
            max-width: 800px;
            background: rgba(0, 0, 0, 0.7);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .search-section .form-label {
            font-weight: bold;
            color: #e0e0e0;
        }

        .search-section .form-control {
            border-radius: 5px;
            background: #333;
            color: #e0e0e0;
            border: 1px solid #444;
        }

        .search-section .form-control::placeholder {
            color: #bbb;
        }

        .search-section .btn-primary {
            background-color: #0d6efd;
            border-color: #0d6efd;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .search-section .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004494;
        }

        .search-section h1 {
            color: white;
            margin-bottom: 20px;
        }

        .carCount {
            margin-top: 20px;
            margin-bottom: 20px;
            font-size: 40px;
        }

        .card {
            margin-bottom: 20px;
            border: none;
            border-radius: 10px;
            overflow: hidden;
            background: #222;
            color: #e0e0e0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            z-index: -10;
        }

        .card-body {
            padding: 20px;
        }

        .card-title {
            color: #0d6efd;
            margin-bottom: 10px;
        }

        .card-text {
            color: #bbb;
        }

        .card-text span {
            font-weight: bold;
            color: #0d6efd;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg position-fixed top-0 w-100 py-3">
    <div class="container">
        <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-car"></i> Mateusz<span class="text-primary">Cars</span></a>
        <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                aria-label="Toggle navigation">
            <i class="bi bi-list"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto">
                <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                <a class="nav-link" href="index.jsp">Team</a>
                <a class="nav-link" href="contact.jsp">Contact</a>
            </div>
        </div>
    </div>
</nav>



<section class="search-section">
    <div class="container">
        <h1 class="text-center">Find Your Car</h1>
        <div class="row">
            <form action="hello-servlet" method="get">
                <div class="col-md-12 mb-3">
                    <label for="carBrand" class="form-label">Car Brand:</label>
                    <input type="text" class="form-control" id="carBrand" name="carBrand" placeholder="Enter car brand">
                </div>
                <div class="col-md-12 mb-3">
                    <label for="carOwner" class="form-label">Car Owner:</label>
                    <input type="text" class="form-control" id="carOwner" name="carOwner" placeholder="Enter car owner">
                </div>
                <div class="col-md-12 mb-3">
                    <label for="carProducer" class="form-label">Car Producer:</label>
                    <input type="text" class="form-control" id="carProducer" name="carProducer" placeholder="Enter car producer">
                </div>
                <div class="col-md-12 mb-3">
                    <label for="sortByVal" class="form-label">Sort By:</label>
                    <select class="form-control" id="sortByVal" name="sortByVal">
                        <option value="">Select...</option>
                        <option value="brand">Brand</option>
                        <option value="owner">Owner</option>
                        <option value="producer">Producer</option>
                    </select>
                </div>
                <div class="col-md-12 text-center">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </form>
        </div>
    </div>
</section>

<section>
    <div class="container">
        <p class="carCount text-center" id="description">
            Queried cars: <%= (request.getAttribute("cars") != null) ? ((List<Car>) request.getAttribute("cars")).size() : 0 %>
        </p>
        <div class="row">
            <%
                List<Car> cars = (List<Car>) request.getAttribute("cars");
                if (cars != null && !cars.isEmpty()) {
                    for (Car car : cars) {
            %>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title"><%= car.getBrand() %></h4>
                        <p class="card-text"><span>Owner:</span> <%= car.getOwner().getName() %> <%= car.getOwner().getLastName() %></p>
                        <p class="card-text"><span>Producer:</span> <%= car.getProducer().getName() %></p>
                        <p class="card-text"><span>Horse Power:</span> <%= car.getHorsePower() %> hp</p>
                        <p class="card-text"><span>Colour:</span> <%= car.getColour() %></p>
                        <p class="card-text"><span>Price:</span> <%= car.getPrice() %> zl</p>
                        <p class="card-text"><span>Available:</span> <%= car.isAvailable() ? "Yes" : "No" %></p>
                    </div>
                </div>
            </div>
            <%
                }
            } else {
            %>
            <div class="col-md-12">
                <p>No cars found.</p>
            </div>
            <% } %>
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

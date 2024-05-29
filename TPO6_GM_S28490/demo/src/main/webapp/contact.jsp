<!DOCTYPE html>
<html>
<head>
    <title>Contact</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a9fd5436a6.js" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #000;
            color: white;
            margin: 0;
            padding: 0;
            height: 100%;
        }
        .navbar {
            background: rgba(0, 0, 0, 0.7);
            z-index: 1;
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
        .contact {
            background-image: url("https://wallpaperaccess.com/full/6566198.jpg");
            background-size: cover;
            background-position: center;
            color: white;
            min-height: calc(100vh - 56px);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .contact::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }
        .section-title {
            font-size: 3rem;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }
        .underline {
            width: 5rem;
            height: 0.25rem;
            background: #0d6efd;
            margin: 0 auto 2rem auto;
        }
        .contact-item {
            margin-bottom: 2rem;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 1rem;
            border-radius: 10px;
        }
        .contact-item h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }
        .social-media a {
            color: white;
            margin: 0 0.5rem;
            font-size: 1.5rem;
            transition: color 0.3s;
        }
        .social-media a:hover {
            color: #0d6efd;
        }
        .footer {
            background: rgba(0, 0, 0, 0.7);
            color: white;
            text-align: center;
            padding: 1rem 0;
            position: absolute;
            bottom: 0;
            width: 100%;
        }
        main {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
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

<main>
    <section id="contact" class="contact py-5">
        <h2 class="section-title">Contact</h2>
        <div class="underline mx-auto"></div>
        <div class="container">
            <div class="row text-center contact-us">
                <div class="col-sm-6 col-lg-4 contact-item order-1">
                    <h3>Headquarters</h3>
                    <p>ul. Koszykowa 86</p>
                    <p>01-490 Warszawa</p>
                    <p>+48 123 123 123</p>
                    <p>mateuszcars@gmail.com</p>
                </div>
                <div class="col-lg-4 order-0 order-lg-1 contact-item">
                    <h3>Social Media</h3>
                    <div class="social-media">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 contact-item order-1">
                    <h3>Headquarter in London</h3>
                    <p>Mil Street 0</p>
                    <p>00-000 London</p>
                    <p>+44 123 123 123</p>
                    <p>mateuszcars@gmail.com</p>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 Mateusz Cars. All Rights Reserved.</p>
        </div>
    </footer>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
<!DOCTYPE html>
<html>
<head>
  <title>Mateusz Cars</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/a9fd5436a6.js" crossorigin="anonymous"></script>
  <style>
    body {
      font-family: 'Open Sans', sans-serif;
      background-image: url("https://wallpaperaccess.com/full/9296454.gif");
      background-size: cover;
      background-position: center;
      background-attachment: fixed;
      color: white;
    }
    .navbar {
      background: rgba(0, 0, 0, 0.7);
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
    .hero {
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      color: white;
      background: rgba(0, 0, 0, 0.5);
    }
    .underline{
      width: 60px;
      height: 4px;
      background-color: #039dff;
      margin: 0 auto 40px;
    }
    .card {
      background: rgba(255, 255, 255, 0.8);
      border: none;
      z-index: -10;
    }
    .footer {
      background: rgba(0, 0, 0, 0.7);
      color: white;
      text-align: center;
      padding: 1rem 0;
    }
    .card-title {
      text-align: center;
      margin-bottom: 20px;
      text-transform: uppercase;
    }
    .card-text{
      margin-bottom: 10px;
      text-align: center;
      text-transform: uppercase;
    }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg position-fixed top-0 w-100 py-3">
  <div class="container">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-car"></i></i> Mateusz<span class="text-primary">Cars</span></a>
    <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
            aria-label="Toggle navigation">
      <i class="bi bi-list"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav ms-auto">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
        <a class="nav-link" href="#team">Team</a>
        <a class="nav-link" href="contact.jsp">Contact</a>
      </div>
    </div>
  </div>
</nav>

<section class="hero">
  <div class="container">
    <h1 class="display-3">Welcome to Mateusz Cars</h1>
    <p class="lead">Your trusted car dealership</p>
    <form action="hello-servlet" method="get">
    <a href="hello-servlet" class="btn btn-primary btn-lg">Explore Our Cars</a>
    </form>
  </div>
</section>


<section id="team" class="team">
<div class="container my-5">
  <h2 class="text-center mb-4">Team</h2>
  <div class="underline"></div>
  <div class="row">
    <div class="col-md-4 mb-4">
      <div class="card">
        <img src="https://cdn.discordapp.com/attachments/1167562271711571999/1245112133524389919/DALLE_2024-05-28_22.30.47_-_A_powerful_distinguished_Black_man_standing_in_an_impressive_office._He_is_dressed_in_a_sharp_tailored_suit_exuding_confidence_and_authority._The_o.webp?ex=66579089&is=66563f09&hm=245d33d1a54bc8daf89f8c163fa3cf9bf8d8fd6df8950d8bee1cddb065e47626&" class="card-img-top" alt="Car 1">
        <div class="card-body">
          <h5 class="card-title">PROGRAMISTA</h5>
          <p class="card-text">Szef wszystkich szefow, nikt nie zna jego imienia.Podwlani mowia na niego pan prezes</p>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card">
        <img src="https://cdn.discordapp.com/attachments/1167562271711571999/1245112532226801835/DALLE_2024-05-28_22.32.22_-_A_rugged_Black_man_with_a_strong_build_dressed_in_construction_worker_attire_standing_at_a_construction_site._He_is_smoking_a_cigarette_and_holding_.webp?ex=665790e8&is=66563f68&hm=240bddd0ec1b19b7a14edc70b361f212cdde53d872c991a1f4abd0e208e9e909&" class="card-img-top" alt="Car 2">
        <div class="card-body">
          <h5 class="card-title">Budowlaniec</h5>
          <p class="card-text">Pan Wiesio, moze i nie robi najlepiej ale za to nie tanio</p>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card">
        <img src="https://cdn.discordapp.com/attachments/1167562271711571999/1245269446961135626/FF210EE4-485A-4976-A3CA-CB2E2CB6175A.webp?ex=6658cbcc&is=66577a4c&hm=9cdb1d85a60d48a652db12fe0482b94682c0e3921f9746d3fafdc30ff375e636&" class="card-img-top" alt="Car 3">
        <div class="card-body">
          <h5 class="card-title">Dzial Sprzatajacy</h5>
          <p class="card-text">Hania i Ania stale dbaja o porzadek w naszym garazu</p>
        </div>
      </div>
    </div>
  </div>
</div>
</section>

<footer class="footer">
  <div class="container">
    <p>&copy; 2024 Mateusz Cars. All Rights Reserved.</p>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
<?php
    include('classes/dbc.php');

    $sqlAkcio = 'SELECT * FROM akcio';
    $result = mysqli_query($conn, $sqlAkcio);
    $akcioFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $sqlKaland = 'SELECT * FROM kaland';
    $result = mysqli_query($conn, $sqlKaland);
    $kalandFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $sqlDrama = 'SELECT * FROM drama';
    $result = mysqli_query($conn, $sqlDrama);
    $dramaFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $sqlHorror = 'SELECT * FROM horror';
    $result = mysqli_query($conn, $sqlHorror);
    $horrorFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $sqlAnimacio = 'SELECT * FROM animacio';
    $result = mysqli_query($conn, $sqlAnimacio);
    $animacioFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    // mysqli_free_result($result);
    //
    // mysqli_close($conn);



?>


<!doctype html>
<html lang="en" class="h-100">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v4.1.1">
  <title>Filmadatbázis</title>



  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <!-- Font Awesome -->
  <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>


  <!-- Bootstrap scripts -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

  <!-- Custom styles for this template -->
  <link href="style.css" rel="stylesheet">

</head>


<body>
  <section class="nav-section">

    <!-- Fixed navbar -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top">
      <a class="navbar-brand" href="index.php"> <img src="img/icon.png" alt=""> </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="categories.php">Categories</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="allMovies.php">Movies</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="allSeries.php">Series</a>
          </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Movie, series..." aria-label="Search">
          <button class="btn btn-light my-2 my-sm-0" type="submit">Search</button>
        </form>

        <button class="sign-in btn btn-dark my-2 my-sm-0" type="submit"><a class="login-btn" href="addMovie.php">Add movie</a></button>
        <button class="sign-in btn btn-dark my-2 my-sm-0" type="text"><a class="login-btn" href="login.html">Log In</a></button>


      </div>
    </nav>

  </section>



  <!-- Begin page content -->
  <!-- <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img/1.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="img/2.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="img/3.jpg" class="d-block w-100" alt="...">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div> -->



      <div class="main-container">
        <h4 class="valami"> <a href="akcio.php">Akció »</a></h4>
        <div class="card-deck">
          <?php foreach($akcioFilmek as $akcio) { ?>
                <div class='card'>
                    <a href='movie.php?id= <?php echo $akcio['movieid'] ?>'>
                <img class="card-img-top" src="img/<?php echo ($akcio['img']); ?>" alt="">
                  </a>
                </div>

          <?php
              }
            ?>
        </div>



        <h4 class="valami">Kaland</h4>
        <div class="card-deck">
          <?php foreach($kalandFilmek as $kaland) { ?>
                <div class='card'>
                <a href='movie.php?id= <?php echo $kaland['movieid'] ?>'>
                  <img class="card-img-top" src="img/<?php echo ($kaland['img']); ?>" alt="">
                  </a>
                </div>

          <?php
              }
            ?>
        </div>


      <h4 class="valami">Dráma</h4>
      <div class="card-deck">
        <?php foreach($dramaFilmek as $drama) { ?>
              <div class='card'>
              <a href='movie.php?id= <?php echo $drama['movieid'] ?>'>
                <img class="card-img-top" src="img/<?php echo ($drama['img']); ?>" alt="">
                </a>
              </div>
        <?php
            }
          ?>
      </div>


      <h4 class="valami">Horror</h4>
      <div class="card-deck">
        <?php foreach($horrorFilmek as $horror) { ?>
              <div class='card'>
              <a href='movie.php?id= <?php echo $horror['movieid'] ?>'>
                <img class="card-img-top" src="img/<?php echo ($horror['img']); ?>" alt="">
                </a>
              </div>

        <?php
            }
          ?>
      </div>

      <h4 class="valami">Animáció</h4>
      <div class="card-deck">
        <?php foreach($animacioFilmek as $animacio) { ?>
              <div class='card'>
              <a href='movie.php?id= <?php echo $animacio['movieid'] ?>'>
                <img class="card-img-top" src="img/<?php echo ($animacio['img']); ?>" alt="">
                </a>
              </div>

        <?php
            }
          ?>
      </div>



  </div>
</body>
  <footer class="footer mt-auto py-3">
    <div class="container">
      <span>Copyright 2020</span>
    </div>
  </footer>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script>
    window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')
  </script>
  <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

</html>

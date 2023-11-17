<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <title>Hello, world!</title>
</head>

<body class="body-color">
  <!-- //navigation Component Start-->
  <nav class="navbar navbar-expand-lg navbar-light bg-white">
    <img class="img col-sm-1" src="/images/logo.png" alt="Generic placeholder image">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto  col-md-6">
        <li class="nav-item active">
          <a class="nav-link text-dark" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="SellviewPage">House-for-sell</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="RentviewPage">House-for-Rent</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Dropdown
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item text-dark" href="#">Action</a>
            <a class="dropdown-item text-dark" href="#">Another action</a>
            <div class="dropdown-divider text-dark"></div>
            <a class="dropdown-item text-dark" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link  text-info" href="logout">Logout</a>
        </li>
      </ul>
       <!-- Record Data Start-->
       <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="btn-group float-right">
              <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
               Registration for house
              </button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="Form" >To Selling house</a>
                <a class="dropdown-item" href="RentForm">To Rent</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      
     <!-- Record Data End--> 
    </div>
  </nav>
  <!-- //navigation Component End -->

  <!-- purpose section starts -->

  <div class="card mb-1 align-item-center">
    <img class="card-img-top" src="/images/dream-house.jpg" alt="Card image cap">
  </div>

  <div class="container-fluid p-5 m-0" style="background-color:#E6E6FA ;">
    <div class="row m-5">
      <div class="col">
        <h1 class="text-center text-dark text-large"> Get the <span class="text-info"> Right home</span> of your dream
        </h1>
        <h3 class="text-center text-dark text-large">We believe in dreams and we will make sure your <span
            class="text-info">dreams comes true</span> </h3>
      </div>
    </div>
  </div>
  <!-- purpose section end -->

  <!-- first card after the purpose starts -->

  <div class="container-fluid d-flex">
    <div class="col-md-6">
      <div class="media mt-5">
        <img class="mr-3" style="width: 10rem;" src="images/img2.jpeg" alt="Generic placeholder image">
        <div class="media-body">
          <h5 class="mt-0">Media heading</h5>
          Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
          purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
          vulputate fringilla. Donec lacinia congue felis in faucibus.
        </div>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
      <div class="media mt-5 ">
        <img class="mr-3" style="width: 10rem;" src="images/white-house.jpg" alt="Generic placeholder image">
        <div class="media-body">
          <h5 class="mt-0">Media heading</h5>
          Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
          purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
          vulputate fringilla. Donec lacinia congue felis in faucibus.
        </div>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
      <div class="media mt-5 ">
        <img class="mr-3" style="width: 10rem;" src="images/img1.jpg" alt="Generic placeholder image">
        <div class="media-body">
          <h5 class="mt-0">Media heading</h5>
          Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
          purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
          vulputate fringilla. Donec lacinia congue felis in faucibus.
        </div>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
    <div class="col-md-6">
      <div class="card mb-3 mt-5">
        <img class="card-img-top" src="images/white-house.jpg" alt="Card image cap">
        <div class="card-body">
          <h1 class="card-title">It doesn't hurt to keep practicing</h1>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
            additional content. This content is a little bit longer. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Dignissimos voluptas at neque quasi maiores tempore eos in veritatis fugiat
            aliquid?</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
    </div>
  </div>
  <!-- first card after the purpose end -->

  <div class="container-fluid d-flex">

    <div class="col-md-6">
      <div class="card mb-3  mt-5">
        <img class="card-img-top" src="images/img1.jpg" alt="Card image cap">
        <div class="card-body">
          <h1 class="card-title">It doesn't hurt to keep practicing</h1>
          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
            additional content. This content is a little bit longer. Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Dignissimos voluptas at neque quasi maiores tempore eos in veritatis fugiat
            aliquid11?</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="media  mt-5">
        <img class="mr-3" style="width: 10rem;" src="images/white-house.jpg" alt="Generic placeholder image">
        <div class="media-body">
          <h5 class="mt-0">Media heading</h5>
          Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
          purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
          vulputate fringilla. Donec lacinia congue felis in faucibus.
        </div>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
      <div class="media  mt-5">
        <img class="mr-3" style="width: 10rem;" src="images/img2.jpeg" alt="Generic placeholder image">
        <div class="media-body">
          <h5 class="mt-0">Media heading</h5>
          Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
          purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
          vulputate fringilla. Donec lacinia congue felis in faucibus.1
        </div>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
      <div class="media  mt-5">
        <img class="mr-3" style="width: 10rem;" src="images/white-house.jpg" alt="Generic placeholder image">
        <div class="media-body">
          <h5 class="mt-0">Media heading</h5>
          Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras
          purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi
          vulputate fringilla. Donec lacinia congue felis in faucibus.
        </div>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>

  <!-- end of recently added section  -->

  <!-- !-- Second row of Card starts -->
  <div class="container-fluid " style="background-color: lightblue;">
    <h1 class="py-5 text-center">Start learning </h1>
    <div class="container-fluid d-flex ">
      <div class="card m-auto " style="width: 18rem;">
        <img class="card-img-top" src="images/img2.jpeg" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
            card's content.</p>
          
        </div>
      </div>

      <div class="card mr-auto" style="width: 18rem;">
        <img class="card-img-top" src="images/white-house.jpg" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
            card's content.</p>
          
        </div>
      </div>


      <div class="card mr-auto " style="width: 18rem;">
        <img class="card-img-top" src="images/img2.jpeg" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
            card's content.</p>
          
        </div>
      </div>
    </div>
    <!-- !-- Second row of Card end -->

    <!-- Second row of Card starts -->
    <div class="container-fluid mt-4 d-flex ">
      <div class="card ml-auto  mb-4  mr-auto" style="width: 18rem;">
        <img class="card-img-top" src="images/img1.jpg" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
            card's content.</p>
          
        </div>
      </div>

      <div class="card mr-auto  mb-4 " style="width: 18rem;">
        <img class="card-img-top" src="images/white-house.jpg" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
            card's content.</p>
         
        </div>
      </div>


      <div class="card mr-auto  mb-4 " style="width: 18rem;">
        <img class="card-img-top" src="images/img1.jpg" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
            card's content.</p>
         
        </div>
      </div>
    </div>
  </div>
  <span class="mt-5"></span>
  <!-- !-- Second row of Card end -->

  <!-- /carosule starts -->
  <div id="carouselExampleIndicators" class="carousel slide mt-5 ml-5 mr-5 mb-5" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <video class="d-block w-100" controls src="video/video1.mp4" alt="First slide"></video>
      </div>
      <div class="carousel-item">
        <video class="d-block w-100" controls src="video/video2.mp4" alt="First slide"></video>
      </div>
      <div class="carousel-item">
        <video class="d-block w-100" controls src="video/video3.mp4" alt="First slide"></video>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    <div class="carousel-caption d-none d-md-block">
      <h5>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat, labore.</h5>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, maiores?</p>
    </div>
  </div>
  <!-- /carosule end -->

  <!-- reviews starts -->
  <hr style="border: 1px solid rgb(195, 208, 221);">

  <!-- logo image starts.. -->
  <nav class="navbar navbar-light  ">
    <a class="navbar-brand" href="#">
      <img src="images/logo.png" class="col-sm-2 " alt="">
    </a>
  </nav>
  <!-- logo image end.. -->

  <div class="container-fluid d-flex ">
  <div class="container ml-3  d-flex">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Carrer <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Deals</a>
      </li>
    </ul>


    <ul class="navbar-nav ml-5 ">
      <li class="nav-item active">
        <a class="nav-link" href="">Properts <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"> New Properts</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Branch</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Our Service</a>
      </li>
    </ul>
  </div>
  <form class="container-fluid col-md-6 " method="post" action="/send">
    <p class="card-text"><small class="text-muted">Feedback or Complain</small></p>
    <div class="form-group ml-auto">
      <label for="exampleInputEmail1">Email address</label>
      <input type="email" class="form-control col-md-6" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email">
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Feedback</label>
      <input type="text" class="form-control col-md-6" name="feedback" id="exampleInputPassword1" placeholder="Enter your feed">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
   
  </form>
  
</div>
  <!-- social-media starts..  -->
  
  <div class="container-fluid ">
    <div>Follow us on</div>
    <i class="fa-brands fa-youtube fa-2xl mt-5 ml-4 " style="color: #e90101;"></i>
    <i class="fa-brands fa-facebook fa-2xl ml-4" style="color: #005eff;"></i>
    <i class="fa-brands fa-twitter fa-2xl ml-4" style="color: #005cfa;"></i>
    <i class="fa-brands fa-instagram fa-2xl ml-4" style="color: #ea2e41;"></i>
  </div>

  <hr style="border: 1px solid rgb(195, 208, 221);">
  <!-- social-media end..  -->

  <!-- reviews end -->


  <!-- font awesome kits starts  -->
  <script src="https://kit.fontawesome.com/9d0c5215d1.js" crossorigin="anonymous"></script>
  <!-- font awesome kits end -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>

</html>
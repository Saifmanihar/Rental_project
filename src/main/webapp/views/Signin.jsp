<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .section1 {
        margin: auto;
        font-family: Verdana, Geneva, Tahoma, sans-serif;

    }

    .column {
        display: flex;
    }

    .lb-name {
        display: flex;
        margin-bottom: 10px;
    }

    .par-field {
        display: flex;
    }

    .field {
        margin-right: 20px;
        margin-top: 200px;
        
    }

    .field1 {
        margin-top: 200px;
       
    }

    .leftcolumn,
    .rightcolumn {
        flex-basis: 50%;

    }

    .Name-input {
        height: 6vh;
        width: 15vw;
        border-radius: 10px;
        background-color: rgba(235, 235, 235, 0.838);
        border: none;
        text-indent: 15px;
        box-shadow: none;
        transition: box-shadow 0.3s ease;
    }

    .Name-input:hover {
        border: 2px solid green;
        box-shadow: 0 0 5px rgb(112, 255, 76);
    }

    #Name-input1,#Name-input4, #Name-input5 {
        width: 485px;
        height: 6vh;
        border: none;
        border-radius: 10px;
        background-color: rgba(235, 235, 235, 0.838);
        text-indent: 15px;
        transition: box-shadow 0.3 ease-in-out;
    }

    #Name-input1:hover {

        border: 2px solid green;
        box-shadow: 0 0 5px rgb(112, 255, 76);
    }

    .par-email {
        margin-top: 40px;
    }

    input#Name-input2 {
        height: 20px;
        width: 20px;
        box-shadow: none;

    }

    .lb-name2 {
        margin-left: 6px;
        margin-bottom: 40px;
    }

    .sp-lb1 {
        margin-left: 30px;
        color: blue;
    }

    #sp-lb2 {
        color: black;
    }

    #par-condition {
        margin-bottom: 300px;
    }

    .rightcolumn {
        overflow-y: hidden;
        margin-left: 900px;
    }

    .leftcolumn,
    .log-img1 {
        width: 50%;
        height: 734px;
        margin-right: 150px;
        flex-shrink: 0;
        position: fixed;
    }

    .btn {
        height: 40px;
        width: 200px;
        font-size: 20px;
        border-radius: 10px;
        background-color: chocolate;
        border: none;
        margin-top: 30px;
        margin-left: 0px;
        cursor: pointer;
        transition: box-shadow 0.5 ease;
        box-shadow: none;
    }

    .btn:hover {
        box-shadow: 0 0 10px coral;
        background-color: coral;

    }

    .breaker {
        position: absolute;
        margin-top: 150px;
        width: 220px;
        flex: none;
    }

    .sp1 {
        position: absolute;
        left: 1125px;
        top: 160px;
    }

    .breaker1 {
        position: absolute;
        margin-top: 150px;
        left: 1155px;
        width: 220px;
    }

    .btn-google {
        height: 35px;
        border-radius: 10px;
        border: none;
        color: blue;
        width: 30vw;
        position: absolute;
        top: 100px;
        transition: box-shadow 0.5 ease;
        box-shadow: none;
        cursor: pointer;
    }

    .btn-google:hover {
        box-shadow: 0 0 10px coral;
        background-color: blue;
        color: aliceblue;

    }

    .redirect-page {
        position: absolute;
        left: 1230px;
        top: 20px;
    }
    .container{
        display: flex;
    }
</style>

<body>
    <div class="section1">
        <div class="column">
        
            <div class="card mb-1">
                <img src="/images/img1.jpg" class=" log-img1">
            </div>
            <div class="rightcolumn">
                <p class="redirect-page">Already have an account<a href="Login">Login</a> </p>
                <div class="sign-google">
                    <button class="btn-google" type="submit">G Sign in with Google</button>
                </div>
                <div class="par-field">
                    <div class="breaker">
                        <hr>
                    </div>
                    <span class="sp1"> Or </span>
                    <div class="breaker1">
                        <hr>
                    </div>

                 

                    <form action="/Save" method="post">
                        <div class="container">
                        <div class="field">

                            <label for="user_name" class="lb-name">Name</label>
                            <input type="text" required name="user_name" autocomplete="on" class="Name-input">
                        </div>
                        <div class="field1">
                            <label for="phone_number" class="lb-name">Phone-Number</label>
                            <input type="text" required name="phone_number" autocomplete="off" class="Name-input">
                        </div>
                    </div>
                </div>
                <div class="par-email">
                    <label for="email" class="lb-name">E-mail</label>
                    <input type="email" required  name="email" autocomplete="off" id="Name-input1">
                </div>
                <div class="par-email">
                    <label for="password" class="lb-name">Password</label>
                    <input type="password" required name="password" autocomplete="off" placeholder="6+character"
                        id="Name-input4">
                </div>
                <div class="par-email">
                    <label for="conform_password" class="lb-name">Conform password</label>
                    <input type="password"required name="conform_password" autocomplete="off" placeholder="6+character"
                        id="Name-input5">
                </div>

                <div class="par-email" id="par-condition">
                    <input type="checkbox" name="" required autocomplete="off" id="Name-input2">
                    <label for="" class="lb-name2">Creating an account mean's you're okay with our terms of <br>
                        <span class="sp-lb1"> Service, Privacy <span id="sp-lb2">and our default and</span> Notification
                            Setting </label> <br>
                    <button type="submit" class="btn">Sign In </button>
                
                    <% if (request.getAttribute("error") != null && !request.getAttribute("error").toString().isEmpty()) { %>
                        <p style="color: red;"><%= request.getAttribute("error") %></p>
                    <% } %>
                    
                </div>
                </form>
            </div>
        </div>

    </div>
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
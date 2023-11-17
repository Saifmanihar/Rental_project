<%@ page import="com.api.web.practice.rental.model.Rent" language="java" contentType="text/html" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
    <style>
        /* Add your custom styles here if needed */
    </style>
</head>

<body class="bg-light">
    <!-- <nav class="navbar navbar-light bg-light ">
        <form class="form-inline ml-auto pt-4 pb-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </nav> -->
    <div class="container col-lg-12 mt-5">
        <div class="card mb-3 ">
            <!-- jsp code for sellinghouse -->
            <% List<Rent> RentList = (List<Rent>) request.getAttribute("RentviewPage");
                if (RentList != null && !RentList.isEmpty()) {
                for (Rent rent : RentList) {
            %>
            <img class="card-img-top img-fluid" src="data:image/*;base64,<%= rent.getImgBase64() %>" alt="House Image">
        </div>
        <div class="container p-3 bg-white rounded">
            <h1 class="text-dark">Details of House</h1>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="UserName" class="text-success">UserName</label>
                    <input type="Name" required class="form-control" readonly name="UserName" id=""
                        value="<%= rent.getUserName() %>" placeholder="User-Name">
                </div>

                <div class="form-group col-md-6">
                    <label for="Phone" class="text-success">PhoneNumber</label>
                    <input type="text" required class="form-control" readonly name="Phone" value="<%= rent.getPhone() %>"
                        placeholder="Phone-Number">
                </div>

                <div class="form-group col-md-6">
                    <label for="Email" class="text-success">Email-ID</label>
                    <input type="Email" required class="form-control" readonly id="inputEmail4" name="Email"
                        value="<%= rent.getEmail() %>" placeholder="Email-Id">
                </div>
                <div class="form-group col-md-6">
                    <label for="Price" class="text-success">Price</label>
                    <input type="text" required class="form-control" readonly id="" name="Price"
                        value="<%= rent.getPrice() %>" placeholder="Enter your price">
                </div>
            </div>
            <div class="form-group">
                <label for="Address" class="text-success">Address</label>
                <input type="text" required class="form-control" readonly id="inputAddress" name="Address"
                    value="<%= rent.getAddress() %>" placeholder="1234 Main St">
            </div>
            <div class="form-group">
                <label for="Area" class="text-success">Area</label>
                <input type="text" required class="form-control" readonly id="inputArea" name="Area"
                    value="<%= rent.getArea() %>" placeholder="Area of house">
            </div>

            <hr class="my-4">

            <% } } %>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
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

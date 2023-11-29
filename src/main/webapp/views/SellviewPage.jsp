<%@ page import="com.api.web.practice.rental.model.Selling" language="java" contentType="text/html" %>
    <%@ page import="java.util.List" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">

            <title>Hello, world!</title>
         
            
            <style>
                #box {
                    position: relative;

                }

                #SearchResult {
                    position: absolute;
                    top: 100%;
                    left: 0;
                    z-index: 1;
                }
            </style>
        </head>

        <body class="">

            <nav class="navbar navbar-light bg-light">
                <a class="navbar-brand" href="#">
                  <img src="/images/logo.png" class="col-md-2" alt="">
                </a>
              </nav>

            <div class="container col-lg-10 mt-5">
                <div class="card mb-3">
                    <div class="container p-3 bg-white rounded">
                    <!-- jsp code for sellinghouse -->
                    <% List<Selling> sellingList = (List<Selling>) request.getAttribute("SellviewPage");
                            if (sellingList != null && !sellingList.isEmpty()) {
                            for (Selling sel : sellingList) {
                            %>
                            <img class="card-img-top img-fluid" src="data:image/*;base64,<%= sel.getImgBase64() %>"
                                alt="House Image">
               
                
                    <h1 class="text-dark">Details of House</h1>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="UserName" class="text-success">UserName</label>
                            <input type="Name" required class="form-control" readonly name="UserName" id=""
                                value="<%= sel.getUserName() %>" placeholder="User-Name">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="Phone" class="text-success">PhoneNumber</label>
                            <input type="text" required class="form-control" readonly name="Phone"
                                value="<%= sel.getPhone() %>" placeholder="Phone-Number">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="Email" class="text-success">Email-ID</label>
                            <input type="Email" required class="form-control" readonly id="inputEmail4" name="Email"
                                value="<%= sel.getEmail() %>" placeholder="Email-Id">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="Price" class="text-success">Price</label>
                            <input type="text" required class="form-control" readonly id="" name="Price"
                                value="<%= sel.getPrice() %>" placeholder="Enter your price">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="Address" class="text-success">Address</label>
                        <input type="text" required class="form-control" readonly id="inputAddress" name="Address"
                            value="<%= sel.getAddress() %>" placeholder="1234 Main St">
                    </div>
                    <div class="form-group">
                        <label for="Area" class="text-success">Area</label>
                        <input type="text" required class="form-control" readonly id="inputArea" name="Area"
                            value="<%= sel.getArea() %>" placeholder="Area of house">
                    </div>
                    <td><a href="/chat/<%= sel.getId() %>" class="text-warning font-weight-bold">Drop a message to
                            owner</a></td>


                    <hr class="my-4">

                    <% } } %>
                </div>
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
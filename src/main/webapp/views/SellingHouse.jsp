<%@ page import="com.api.web.practice.rental.model.Selling" language="java" contentType="text/html" %>
  <%@ page import="java.util.List" %>
  
    <!doctype html>
    <html lang="en">

    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

      <title>Hello, world!</title>
      <script src="https://kit.fontawesome.com/9d0c5215d1.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <!-- Check if the "message" attribute is present in the model -->
       <h3>${message}</h3>
      
      <div class="container pt-5 d-flex justify-content-between">
        <a href="/home" class="">Visit-Home-page</a>
        <h1 class="text-center ">Database</h1>
        <a href="/RentingHouse" class="">Visit-RentDatabase-page</a>
      </div>
      <div class="container my-5">
        <table class="table table-hover table-bordered ">
          <thead class="thead-dark">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Username</th>
              <th scope="col">PhoneNumber</th>
              <th scope="col">Emial-Id</th>
              <th scope="col">Price</th>
              <th scope="col">Addres</th>
              <th scope="col">Area</th>
              <th scope="col">Img</th>
              <th scope="col" colspan="3">Action</th>
             
            </tr>
          </thead>
          <tbody>
            <% List<Selling> sellingList = (List<Selling>) request.getAttribute("SellingHouse");
                if (sellingList != null && !sellingList.isEmpty()) {
                for (Selling sel : sellingList) {
                %>
                <tr>
                  <td>
                    <%= sel.getId() %>
                  </td>
                  <td>
                    <%= sel.getUserName() %>
                  </td>
                  <td>
                    <%= sel.getPhone() %>
                  </td>
                  <td>
                    <%= sel.getEmail() %>
                  </td>
                  <td>
                    <%= sel.getPrice() %>
                  </td>
                  <td>
                    <%= sel.getAddress() %>
                  </td>
                  <td>
                    <%= sel.getArea() %>
                  </td>
                  <td>
                    <nav class="navbar navbar-light bg-light">
                      <a class="navbar-brand" href="#">
                        <img src="data:image/*;base64,<%= sel.getImgBase64() %>" class="img-fluid" alt="">
                      </a>
                    </nav>
                  </td>
                  <td><a href="/edit/<%= sel.getId() %>"><i class="fas fa-pen-to-square"></i></a></td>
                  <td>
                    <a href="/delete/ <%= sel.getId()%>"><i style="color: red;" class="fas fa-trash"></i></a>
                  </td>
                </tr>
                <% } } %>
                

          </tbody>
        </table>
      </div>
      <!-- //Editing with script .. Expression logic is not working here -->

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
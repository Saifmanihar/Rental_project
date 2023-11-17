<%@ page import="com.api.web.practice.rental.model.Selling" %>
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
</head>
<body>
<div class="container p-5">
    <c:forEach var="edit" items="${SellingHouse}">
        <form class="mr-auto py-5" method="post" action="/EditForm">
          <input type="hidden" name="id"  value="${edit.id}">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="userName">UserName</label>
                    <input type="Name" class="form-control" name="userName" value="${edit.userName}" placeholder="User-Name">
                </div>
                <div class="form-group col-md-6">
                    <label for="phone">PhoneNumber</label>
                    <input type="text" class="form-control" name="phone" value="${edit.phone}" placeholder="Phone-Number">
                </div>
                <div class="form-group col-md-6">
                    <label for="email">Email-ID</label>
                    <input type="Email" class="form-control" id="inputEmail4" value="${edit.email}" name="email" placeholder="Email-Id">
                </div>
                <div class="form-group col-md-6">
                    <label for="price">Price</label>
                    <input type="text" class="form-control" name="price" value="${edit.price}" placeholder="Enter your price">
                </div>
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" class="form-control" name="address" value="${edit.address}" placeholder="1234 Main St">
            </div>
            <div class="form-group">
                <label for="area">Area</label>
                <input type="text" class="form-control" name="area" value="${edit.area}" placeholder="Area of house">
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </c:forEach>
</div>
<!-- Additional scripts here... -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>

<%@ page import ="com.api.web.practice.rental.model.Message" language="java" contentType="text/html" %>
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
    </head>

    <body>
      <!-- Just an image -->
      <nav class="navbar navbar-light bg-light">
        <a class="navbar-brand" href="#">
          <img src="/images/logo.png" class="col-md-2" alt="">
        </a>
      </nav>
      
      <div class="container bg-light col-md-10 border">
        <div>Chatting with</div>
        <c:forEach var="chat" items="${SellviewPage}">
          <input type="hidden" name="id" value="${chat.id}">
          <p class="text-primary font-weight-bold">${chat.userName}</p>
          <hr class="p-0">
        </c:forEach>

        <!-- message for owner starts -->
        <form action="/message" method="post" >
        <label for="message" class="text-success">You</label>
        <textarea type="textarea" required class="form-control col-md-10 p-1 mb-3" placeholder="Make sure to write the name and phone-number, So the owner can connect with you further." name="message" style="resize: none;" id="inputMessage"></textarea>
        <button type="submit" class="btn btn-primary" onclick="showSuccess()">Submit</button>
        </form>
   
   
      </div>
       <!-- message for owner ends -->

       <!-- <div class="alert alert-warning alert-dismissible fade" id="response" role="alert" style="display: none;">
        Your data has been sent.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div> -->
    
    <script>
        function showSuccess() {
           alert("message send");
        }
    </script>

      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
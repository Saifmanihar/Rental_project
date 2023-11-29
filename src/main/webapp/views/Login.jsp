<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
        position: fixed;
    }

    .lb-name {
        display: flex;
        margin-bottom: 10px;
    }

    .par-field {
        display: flex;
        margin-top: 40px;
    }

    .field {
        margin-right: 20px;
        margin-top: 100px;
    }

    .leftcolumn,
    .rightcolumn {
        flex-basis: 50%;
        
    }

    .Name-input {
        width: 485px;
        height: 6vh;
        border-radius: 10px;
        background-color: rgba(235, 235, 235, 0.838);
        border: none;
        text-indent: 15px;
        box-shadow: none; 
        transition: box-shadow 0.3s ease;
    }
    .Name-input:hover{
        border: 2px solid green;
        box-shadow: 0 0 5px rgb(112, 255, 76);
    }

    #Name-input1 {
        width: 485px;
        height: 6vh;
        border: none;
        border-radius: 10px;
        background-color: rgba(235, 235, 235, 0.838);
        text-indent: 15px;
        transition: box-shadow 0.3 ease-in-out;
    }
    #Name-input1:hover{
        
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
        overflow-y: auto;
        margin-left: 900px;
      
    }

    .leftcolumn,
    .log-img1 {
        width: 50%;
        height: 734px;
        margin-right: 150px;
        flex-shrink: 0;
        position: fixed;
        margin-top: 3px;
    }
    .btn{
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
    .btn:hover{
        box-shadow: 0 0 10px coral;
       background-color: coral;
      
    }
    

    
    
   
    .redirect-page{
        position: absolute;
        left: 1150px;
        top: 20px;
    }
   
</style>

<body>
    <div class="section1">
        <div class="column">
            <div class="leftcolumn">
                <img src="/images/img1.jpg" class="log-img1">
            </div>
            <div class="rightcolumn">
                <p class="redirect-page">Don't have an account <a href="Signin">Sign In</a> </p>
            
                <div class="par-field">
                    
                    <form action="Login" method="post">
                    <div class="field">
                       
                        <label for="email" class="lb-name">Email</label>
                        <input type="text" placeholder="Email" required name="email" autocomplete="on" class="Name-input">
                    </div>
                    
                </div>
               
                <div class="par-email">
                    <label for="password" class="lb-name">Password</label>
                    <input type="text" required name="password" autocomplete="off" placeholder="6+character" id="Name-input1">
                </div>
                <% if (request.getAttribute("error") != null && !request.getAttribute("error").toString().isEmpty()) { %>
                    <p style="color: red;"><%= request.getAttribute("error") %></p>
                <% } %>
                <div class="par-email" id="par-condition">
               
                            <button type="submit" class="btn">Sign In </button>
                </div>
                
            </form>
               
            </div>
        </div>

    </div>

</body>

</html>
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
    }

    .lb-name {
        display: flex;
        margin-bottom: 10px;
    }

    .par-field {
        display: flex;
        margin-top: 80px;
    }

    .field {
        margin-right: 20px;
        margin-top: 200px;
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
    .breaker{
        position: absolute;
        margin-top: 150px;
       width: 220px;
       flex: none;
    }
    .sp1{
        position: absolute;
        left: 1125px;
        top: 220px;
    }
    .breaker1{
        position: absolute;
        margin-top: 150px;
        left: 1155px;
        width: 220px;
    }
    .btn-google{
        height: 35px;
        border-radius: 10px;
        border: none;
        color: blue;
        width: 30vw;
        position: absolute;
        top: 150px;
        transition: box-shadow 0.5 ease;
        box-shadow: none;
        cursor: pointer;
    }
    
    .btn-google:hover{
        box-shadow: 0 0 10px coral;
       background-color: blue;
       color: aliceblue;
      
    }
    .redirect-page{
        position: absolute;
        left: 1230px;
        top: 20px;
    }
</style>

<body>
    <div class="section1">
        <div class="column">
            <div class="leftcolumn">
                <img src="veg1.png" class="log-img1">
            </div>
            <div class="rightcolumn">
                <p class="redirect-page">Don't have an account <a href="signin.htm">Sign In</a> </p>
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
                    <div class="field">
                       
                        <label for="name" class="lb-name">Name</label>
                        <input type="text" name="" autocomplete="on" class="Name-input">
                    </div>
                    
                </div>
               
                <div class="par-email">
                    <label for="username" class="lb-name">Password</label>
                    <input type="text" name="" autocomplete="off" placeholder="6+character" id="Name-input1">
                </div>
                <div class="par-email" id="par-condition">
                    <input type="checkbox" name="" autocomplete="off" id="Name-input2">
                    <label for="username" class="lb-name2">Creating an account mean's you're okay with our terms of <br>
                        <span class="sp-lb1"> Service, Privacy <span id="sp-lb2">and our default and</span> Notification
                            Setting </label> <br>
                            <button type="submit" class="btn">Sign In </button>
                </div>
               
            </div>
        </div>

    </div>

</body>

</html>
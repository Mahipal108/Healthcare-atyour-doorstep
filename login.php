<?php

    session_start();

    if (isset($_SESSION["email"]) && isset($_SESSION["loggedIn"])) {
        header("Location: homepage.php");
        exit();
    }

    if(isset($_POST['login'])) {
    $connection = new mysqli('localhost', 'root', '', 'ecom');

        $email = $connection->real_escape_string($_POST['emailPHP']);
        $password = sha1($connection->real_escape_string($_POST['passwordPHP']));

        $data = $connection->query("SELECT id FROM login_details WHERE email='$email' AND password='$password'");

		if ($data->num_rows > 0) {
            $_SESSION["email"] = $email;
			$_SESSION["loggedIn"] = 1;
            header("Login success");
        } else 
        exit('Please check your LogIn Credentials');

    }
?>
<html>
<head>
<title> Login
</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    body{
    margin:0;
    padding:0;
    background: #C6CD84;
    height: 100vh;
    overflow:hidden;
    }
.container {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 400px;
        padding: 10px;
      background-color: #ECF1BB;
      border-radius: 10px;
      
    }
    .container h1{
        text-align:center;
        padding:0 0 20px 0;
        border-bottom: 1px solid #A3AC54;
    }
    .container form{
        padding: 0 40px;
        box-sizing: border-box;
    }
    .loginbtn {
      background-color: #2f4630;
      color: white;
      padding: 16px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 50%;
      opacity: 0.9;
      border-radius: 20px;
    }
    .loginbtn:hover {
      opacity: 1;
    }
    .wrapper {
        text-align: center;
    }
    input[type=text], input[type=password] {
      width: 100%;
      padding: 10px;
      margin: 5px 0 22px 0;
      display: inline-block;
      border-style: inset;
      background: #f1f1f1;
      border-radius: 5px;
    }
    input[type=text]:focus, input[type=password]:focus {
      background-color: #ddd;
      outline: none;
    }
    </style>
</head>
<body>   
    <div class = "container">     
    <h1>Login</h1>    
	<form action="login.php" method="post"> 			 	                    			
    	<input type="text" id="email" placeholder="Email"/><br />	
        <input type="password" id="password" placeholder="Password"/> <br />
        <p id='response'>
    </p>
        <div class="wrapper">
        <input type="button" value="Log In" id= "login" class="loginbtn" > 	
        <p>Not a member yet? <a href="register.php">Sign Up</a>.</p>
</div>			
    </form>    
</div>
   

	<script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#login").on('click', function(){
                var email = $("#email").val();
                var password = $("#password").val();

                if(email == "" || password == "")
                    alert('Please check your login credentials');
                else{
                    $.ajax(
                    {
                        url:"login.php",
                        method: 'POST',
                        data:{
                            login:1,
                            emailPHP: email,
                            passwordPHP: password
                        },
                        success: function(response) {
                            $("#response").html(response);

                            if(response.indexOf('success')>=0)
                            window.location = 'homepage.php';
                        },
                        dataType: 'text'
                    }
                ); 
                }
                
            });
		});
	</script>
</body>
</html>
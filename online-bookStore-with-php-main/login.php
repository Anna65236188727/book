<?php
    session_start();
    $show_error=false;

    include "connect.php";
    include "class.php";

    if(isset($_GET['login'])  and isset($_SESSION['show_active_form'])){
        unset($_SESSION['show_active_form']);
    }

    if(isset($_POST['active'])){
        $active_user= new login();
        $active_user->connect_db($host , $username , $password , $database);
        $active_user->active_account($_POST['act_code']);
    }
    
    if(isset($_POST['submit'])){
        $myDB= new login();
        $myDB->login_data_error($_POST['email'] , $_POST['password']);
        if($myDB->error===false){
            $myDB->connect_db($host , $username , $password , $database);
            $myDB->login_permission();
            if($myDB->active==false){
                $_SESSION['show_active_form']=true;
            }
            else{
                if(isset($_SESSION['show_active_form']))
                    unset($_SESSION['show_active_form']);
            }
        }
    }


?>

<!DOCTYPE html>
<html>
  <head>
  	<title>Вход</title>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet"> -->

	<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    
	
	<!-- <link rel="stylesheet" href="boot/css/style.css"> -->

	<!-- <link rel="stylesheet" href="style/mystyle.css"> -->

    <link rel="stylesheet" href="style/styl.css">

	</head>
	<body>
	<?php 
        include "header.php";
        if(isset($_POST['submit']) and isset($myDB)){
            $show_error=true;
            
            if($myDB->notExist_error===true){
                echo '<div class="error ur18_black"><span>Неверный адрес электронной почты или пароль &#10071;</span></div>';
            }
        }
    ?>

    <div class="container">
        <div class="login">
            <img class='img_login' src="img/login.png" alt="">
            <div class="login-wrap">
                <?php if(!isset($_SESSION['show_active_form'])){?>
                <div class="ub40_black">Вход</div> 
                
                <form class='pass_email' action="#" method="POST">
                    <div class="input_name">
                        <label class='ur16_gray' for="email">Почта</label>
                        <input class='text-field__input ur16_gray' type="text" name="email" id="email" placeholder="Введите почту" required value="<?php if(isset($_POST['email'])){echo $_POST['email'];} ?>">
                        <?php
                                        if($show_error==true){
                                            if($myDB->email_error===true)
                                                echo '<div class="error ur18_black"><span>Неверный адрес электронной почты &#10071;</span></div>';
                                        }
                                    ?>
                    </div>
                    <div class="input_name">
                        <label class='ur16_gray' for="password">Пароль</label>
                        <input class='text-field__input' type="password" name="password" id="password" placeholder="Введите пароль" required value="<?php if(isset($_POST['password'])){echo $_POST['password'];}?>">
                    </div>
                    <input class="ub18_white button w100" type="submit" name="submit" value="Войти">
                </form>
                <div class='ur18_black'>У вас нет аккаунта? <a class='blue' href="signin.php">Зарегистрироваться</a></div>
                <?php
                    } 
                    if(isset($_SESSION['show_active_form'])){
             ?>
                <!-- <div>
                    <h3>Active your account:</h3>
                </div>
                <form action="#" method="POST">
                    <div>
                        <label for="act_code">Enter your activation code:</label>
                        <input type="text" name="act_code" id="act_code" placeholder=" Activation-Code..." required>
                    </div>
                    <div>
                        <input type="submit" name="active" value="Active">
                    </div>
                </form>
                <p>Back to Login page <a href="login.php?login='login'">Login</a></p>-->
                <?php
                        }
               ?> 
            </div>
        </div>
    </div>
    

	</body>
</html>


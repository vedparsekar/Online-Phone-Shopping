
<?php 

include('includes/cofig1.php');
error_reporting(0);

?>
<?php 
session_start();
include('config.php');
error_reporting(0);

?>


<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">

<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
<!-- SWITCHER -->
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
        
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">





<!-- Custom Theme files -->
<!--theme style-->
<link href="css2/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="js1/jquery.min.js"></script>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="js1/simpleCart.min.js"> </script>
<!-- start menu -->

<script type="text/javascript" src="js1/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
</head>
<body> 
<?php include('includes/colorswitcher.php');?>
<!-- /Switcher -->  
        
<!--Header-->
<?php include('includes/header.php');?>

			 <?php
			 $email=$_SESSION['login'];
$sql ="SELECT * FROM tblusers where uemailid='$email'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
 while($row = $result->fetch_assoc()) {
	 $u=$row['userid'];
	 
 }
 }	
$sql = "SELECT sum(total),count(pid),sum(quantity) FROM user_cart where userid=$u and cartstatus=0";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
  
    while($row = $result->fetch_assoc()) {
			 if($row["count(pid)"]>0)
			 {
				 
			  $p=$row["sum(quantity)"];
			 $ps=$row["sum(total)"]+150;
			 }
			 else
			 {
				 $ps=0;
			 $p=0;
	}
			echo' <div class="cart box_1">
				 <a href="cart.php">
					<div class="total">
					<span class=""></span>Rs '.$ps.' ('.$p.')'.'</span></div>
					<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
				</a>
				<p><a href="javascript:;" class="simpleCart_empty"></a></p>
					</a>
				<p><a class="simpleCart_empty" href="emptycart.php"><button class="btn btn-xs">Empty Cart</button></a></p>
			 	<div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
			 <!---->			 
			 </div>
			<div class="clearfix"> </div>
</div>';
	}
}
else
	echo' <div class="cart box_1">
				 <a href="cart.php">
					<div class="total">
					<span class=""></span>Rs 0</span></div>
					<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
				</a>
				<p><a href="javascript:;" class="simpleCart_empty"></a></p>
					</a>
				<p><a class="simpleCart_empty" href="emptycart.php"><button class="btn btn-xs">Empty Cart</button></a></p>
			 	<div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
			 <!---->			 
			 </div>
			<div class="clearfix"> </div>
</div>';
	

?>
			 <?php
			 $email=$_SESSION['login'];
$sql ="SELECT * FROM tblusers where uemailid='$email'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
 while($row = $result->fetch_assoc()) {
	 $u=$row['userid'];
	 
 }
 }
$pid=$_GET['p'];
$sql = "delete from user_cart  WHERE  pid=$pid and userid=$u";
//$sql="INSERT INTO  user_cart(userid,pid,quantity) VALUES(:u,:pid,:q)";
$query = $dbh->prepare($sql);
$query->bindParam(':u',$u,PDO::PARAM_STR);
$query->bindParam(':pid',$pid,PDO::PARAM_STR);
//$query->bindParam(':q',$q,PDO::PARAM_STR);

$query->execute();



echo "<br/><div align='center'><h3><span class='glyphicon glyphicon-ok-sign' style='color: #00c851;'></span> DONE</h3><br/><a href='cart.php?id=$u'><button type=button class='btn btn-xs'><span class='glyphicon glyphicon-circle-arrow-left'></span> BACK</button></a></div><br/>";

?>


<div class="clearfix"> </div>
</div>




<?php include('includes/footer.php');?>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 

<!--Login-Form -->
<?php include('includes/login.php');?>
<!--/Login-Form --> 

<!--Register-Form -->
<?php include('includes/registration.php');?>

<!--/Register-Form --> 

<!--Forgot-password-Form -->
<?php include('includes/forgotpassword.php');?>

<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>
<!--<script type='text/javascript'>window.location.href='removecart.php';</script>-->
</body>
</html>

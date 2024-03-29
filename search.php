<?php 
session_start();
include('includes/cofig1.php');
error_reporting(0);

?>
<?php 
session_start();
include('config.php');
error_reporting(0);

?>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Online Phone Search</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
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

</head>
<body>

<!-- Start Switcher -->
<?php include('includes/colorswitcher.php');?>
<!-- /Switcher -->  
        
<!--Header-->
<?php include('includes/header.php');?>
<!-- /Header --> 
<br/>
<style>
.borderless td, .borderless th{
	border:none;
}

.shrin
{   width:50px;

}
</style>
<?php 
$search= $_POST['Search'];


$sql = "SELECT * FROM product where productname LIKE '%$search%'" ;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
	echo "<table class='table borderless'>";
  echo "<h3>Result for $search</h3>";
   session_start();
  
    while($row = $result->fetch_assoc()) {

      $pid=$row['pid'];
         echo "<tr><td class='shrin'><a href='single.php?id=$pid'><img src='admin/proimg/".$row['picture1']."' height=100px width=150px/></a></td><td>". $row["productname"]."&nbsp&nbsp"."<br/><small>Rs ".$row["price"]."</small></td>";
      


         //"</td><td  align='right'><a href='music.php?id=$sid'><button type=button class='btn btn-xs'><span class='glyphicon glyphicon-play'></span> PLAY</button></a></td>";
		 
		 if($_SESSION['login']){
		 echo"<td><form action='addcart.php?p=$pid' method='POST'><input type='number' value='1' min='1' max='10' name='quan' class='item_addd'/><br/><input type='submit' class='btn btn-xs' name='ADD' value='ADD TO CART'></form></td>";
		 }
		 else{
									echo'<td><a href="#loginform" data-toggle="modal" data-dismiss="modal"><button type=button class="btn btn-xs"><span class="glyphicon glyphicon-shopping-cart"> </span> ADD TO CART</button></a></td></tr>';
			}

    }

}
 else {
    echo "0 results";
}
echo"</table>";
 $conn->close();
?> 

<!--/Listing-detail--> 

<!--Footer -->
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

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<script src="assets/switcher/js/switcher.js"></script>
<script src="assets/js/bootstrap-slider.min.js"></script> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>
</body>
</html>
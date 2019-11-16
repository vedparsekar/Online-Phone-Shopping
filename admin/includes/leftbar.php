	<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">
			
				<li class="ts-label">Main</li>
<?php    
$sql = "SELECT * from  admin where UserName='{$_SESSION['username']}'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{				?>		
<?php }} 

 if($result->astatus=="" || $result->astatus==0)
{
	?>
	
							<li><a href="dashboard.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
			
						<li><a href="activeaddmins.php">Active Admins</a></li>			
<?php }
else{
	
?>				
				<li><a href="dashboard.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
			
			<li><a href="#"><i class="fa fa-user"></i>Admin</a>
					<ul>
						<li><a href="addadmin.php">Add Admin</a></li>
						<li><a href="manageadmins.php">Manage Admins</a></li>
						<li><a href="activeadmins.php">Active Admins</a></li>
						<li><a href="deactiveadmins.php">All Admins</a></li>
					</ul>
				</li>
			
			
			
<li><a href="#"><i class="fa fa-files-o"></i> Categories</a>
<ul>
<li><a href="create-cat.php">Create Category</a></li>
<li><a href="manage-cat.php">Manage Categories</a></li>
</ul>
</li>

<li><a href="#"><i class="fa fa-industry"></i> Brands</a>
<ul>
<li><a href="addbrand.php">Add Brand</a></li>
<li><a href="managebrand.php">Manage Brands</a></li>
</ul>
</li>

				
				<li><a href="#"><i class="fa fa-sitemap"></i> Contact Us Queries</a>
					<ul>
					<li><a href="manage-conactusquery.php"> Manage Conatctus Query</a></li>
						<li><a href="qunotans.php">Queries Not Answered</a></li>
						<li><a href="quans.php">Queries Answered</a></li>
					</ul>
				</li>
				
				<li><a href="#"><i class="fa fa-mobile fa-lg"></i> Products</a>
					<ul>
						<li><a href="manageproduct.php">Add Products</a></li>
						<li><a href="emanageproduct.php">Manage Products</a></li>
						<li><a href="delivery.php">Product Delivery</a></li>
					</ul>
				</li>
				
				
				<li><a href="reg-users.php"><i class="fa fa-users"></i> Reg Users</a></li>
		
			
			
		   
			<li><a href="manage-subscribers.php"><i class="fa fa-table"></i> Manage Subscribers</a></li>
			<li><a href="chatdashboard.php"><i class="fa fa-comments-o fa-lg"></i>Messages</a></li>
			<li><a href="home.php"><i class="fa fa-comments-o fa-lg"></i>home</a></li>
<?php }?>
			</ul>
		</nav>
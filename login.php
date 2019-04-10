<?php

	session_start();

	require_once 'db_connection.php';

	if (isset($_SESSION['user'])){
	$res=mysqli_query($mysqli, "SELECT * FROM `userdata` WHERE userdata_id=". $_SESSION['user']. "");
	$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);
	}
	if (isset($_SESSION['admin'])){
	$res=mysqli_query($mysqli, "SELECT * FROM `userdata` WHERE userdata_id=". $_SESSION['admin']. "");
	$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);
	}

	$userEmail = "";
	$userPassword = "";
	$loginError = "";
	$error = false;


	if(isset($_POST['login'])){

		$userEmail = $_POST['userEmail'];

		$userPassword = $_POST['userPassword'];

		if (!$error) {
		
			$userPass = hash('sha256', $userPassword);

			$res=mysqli_query($mysqli, "SELECT userdata_id, userFirstName, userLastName, userPassword, userAdminRole FROM `userdata` WHERE userEmail='$userEmail'");

			$row=mysqli_fetch_array($res, MYSQLI_ASSOC);
			$userRows = mysqli_num_rows($res);
		
			if($userRows == 1 && $row['userPassword']==$userPass && $row['userAdminRole']==='Y'){
				$_SESSION['admin'] = $row['userdata_id'];
				header("Location: home.php");
			}
			elseif($userRows == 1 && $row['userPassword']==$userPass && $row['userAdminRole']==='N') {
				$_SESSION['user'] = $row['userdata_id'];
				header("Location: home.php");
			}
			else {
					$loginError = "Incorrect email or password";
			}
		}
	}

	if(isset($_POST['logout'])){
		unset($_SESSION['user']);
		session_destroy();
		header("Location: login.php");
	}
	
	$log = "Login";

	if(isset($_SESSION['admin']) || isset($_SESSION['user'])){
		$log = "Logout";
	}

?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="navbar">
		<p><a href="home.php">Travel-o-matic blog</a></p>
		<?php

			if(isset($_SESSION['user']) || isset($_SESSION['admin'])){
				echo '
			<h4><a href="restaurant.php">Restaurants</a></h4>
			<p></p>
			<h4><a href="events.php">Events</a></h4>
			<p></p>
			<h4><a href="search.php">Search...</a></h4>
			';
			}

		?>
		<span class="navbar-login">
			<a href="login.php" title=" <?php echo $log ?>">
			<?php
				if (isset($_SESSION['user'])) {
					$displayName = $userRow['userFirstName']. " ". $userRow['userLastName'][0]. ".";
					echo '<i class="fas fa-sign-out-alt"></i> '. $displayName;
				}
				elseif (isset($_SESSION['admin'])) {
					$displayName = $userRow['userFirstName']. " ". $userRow['userLastName'][0]. ".";
					echo '<i class="fas fa-sign-out-alt"></i> '. $displayName. " ADMIN";
				}	
				else {
					echo '<i class="fas fa-sign-in-alt"></i> Login';
				}
			?>
			</a>
		</span>
	</div>
	<div class="container">
			<?php 

				if(isset($_SESSION['user']) || isset($_SESSION['admin'])){
					echo "<h1 class='pageheader'>Logout</h1>
					<a class='mainpageback' href='home.php'><i class='fas fa-arrow-left'></i> Back to the home page</a>";
				}
					else{
					echo "<h1 class='pageheader'>Login</h1>";
				} 

			?>
		<hr>
		<?php

			if(isset($_SESSION['user']) || isset($_SESSION['admin'])){
				echo '
				<form method="POST">
					<div class="logoutbox centermepls">
						<h3>Are you sure you want to sign out?</h3>
						<br>
						<input class="btn btn-danger" type="submit" name="logout" value="Sign Out">
					</div>
				</form>
				';
			}
			else{
				echo'
				<form class="loginform" method="post" accept-charset="utf-8">
					<span>'?><?php echo $loginError ?></span><?php echo '
					<div class="loginfield">
						<i class="fas fa-envelope"></i>
						<input type="text" name="userEmail"  placeholder="Email" value="'?><?php echo $userEmail ?><?php echo '" required>
					</div>
					<div class="loginfield">
						<i class="fas fa-key"></i>
						<input type="password" name="userPassword" placeholder="Password" required>
					</div>
					<input class="btn btn-success loginbutton" type="submit" name="login" value="Sign in">
					<p>No account yet? <a class="createaccountlink" href="register.php" title="Create account">Create one here!</a></p>
				</form>
			';
			}

		?>
	</div>
	<div class="footer">
		<p>Markus Szokoll 2019</p>
	</div>
</body>
</html>

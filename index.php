<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=40px, initial-scale=1.0">
   	<link rel="stylesheet" media="screen and (max-width:1360px)" href="css/responsive.css">
	<link rel="stylesheet" media="screen and (min-width: 1360px)" href="css/style.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script>
		function myFunction(){
			var x=document.getElementById("mainbarr");
			
			if(x.style.display=="block"){
				x.style.display="none";
			}
			else{
				x.style.display="block";
			}
		}
	</script>
	<script>
        function myFunction() {
            var x = document.getElementById("dethid");
            if (x.style.display == "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
    <title>Musicaly</title>
</head>
<body>
	<div class="landing">
		<nav class="main">
			<div class="topline">
			<div class="logo">
				<a href="#">Musicaly</a>
			</div>
			</div>
			<div class="mainbar" id="mainbarr">
				<ul>
					<li class="links"><a href="" >Home</a></li>
					<li class="links"><a href="#explanation" >About</a></li>
					<li class="links"><a href="#pricing" >Pricing</a></li>
					<li class="links" id="hidelog"><a href="#pricing" >Login/Signup</a></li>
					<?php
					if (isset($_SESSION['username'])) {
						echo'<li class="links" id="cat"><a href="html/main.php">Homepage</a></li>';	
					}else{
					echo'
					<li class="links" id="cat"><a href="">Contact Us</a></li>';
					}
					?>
				</ul>
			</div>
		<!--
			<a href="javascript:void(0);" class="iconburg" onClick="myFunction()" style="background-image: url('img/icons/icons8-menu-100.png'); background-position:center; background-size:contain;">
			</a>
			<div class="account">
				<a href="" id="help">Help</a>
				<span>|</span>
				<a href="html/signup.html" class="login">Login</a>
				<a href="html/signup.html" class="signup">Create an account</a>
				
			</div>
	-->
				
		<?php
			if (isset($_SESSION['username'])) {
				$userr=$_SESSION['username'];
				echo'<div class="userdetails"><a href="javascript:void(0)" class="username" onClick="myFunction()">'.$userr.'</a>
				<div id="dethid"><a href="" class="detailhidden">Account</a>
					<form action="../handlers/logout.php" method="POST">
						<button id="log" class="detailhidden" type="submit">Logout</button>
					</form>
				</div>
			</div>
		';
			}
			else
			echo'
			<a href="javascript:void(0);" class="iconburg" onClick="myFunction()" style="background-image: url("img/icons/icons8-menu-100.png"); background-position:center; background-size:contain;">
			</a>
			<div class="account">
				<a href="" id="help">Help</a>
				<span>|</span>
				<a href="html/login.php" class="login">Login</a>
				<a href="html/signup.php" class="signup">Create an account</a>
				
			</div>
			';

		?>
	
	</nav>
		
		<div id="welcome">
			<h1 id="forevery">Music For Everyone</h1>
			<p>Listen And Download Thousand's Of Collection Of music From Your Favourite Local And International Artists And Bands.</p>
			<div id="buttons">
			<a href="html/signup.php" class="dnbt" id="show">Free Trial</a>
			<a href="" class="dnbt" id="hidesmall">Download app</a>
		</div>
		</div>
	</div>
	<div id="explanation">
		<div class="left">
		<p id="exp">Unlimited Access to 100k of tracks</p>
		<a href="" class="dnbt" id="try1">Try it now</a>
		</div>
		<div class="right">
		<p class="partners">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit nostrum error dolor, dolores pariatur nam maiores, eligendi tenetur, earum dignissimos, et aut laborum! Similique corporis soluta necessitatibus et nulla voluptates ipsa aperiam perferendis commodi veniam. 
		</p>
		<a href="html/signup.php" class="dnbt" id="try">Try it now</a>
		</div>
	</div>
	<div id="howit">
		<p class="howtt">How it works</p>
		<div class="first">
		<h3 class="step">Create an account</h3>
			<p class="step1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati labore tempora laborum, molestias doloremque voluptatibus, perspiciatis ut, incidunt autem aliquam earum, blanditiis modi saepe cupiditate.</p>
		</div>
		<div class="first">
		<h3 class="step">Choose a plan</h3>
			<p class="step1"></p>
		</div>
		<div class="first">
		<h3 class="step">Listen to music</h3>
		<p class="step1"></p>
		</div>
	</div>
	<div id="pricing">
		<!--------------------->
	<h1 class="pick">Pick the best plan for you.</h1>

<div class="pricing-box-container">
	<div class="pricing-box text-center">
		<h5>Free</h5>
		<p class="price"><sup>$</sup>0<sub>/mo</sub></p>
		<ul class="features-list">
			<li> Unlimited Music</li>
			<li> Unskippable ads</li>
			<li>No offline mode</li>
			<li>Limited listen time per month</li>
			
		</ul>
		<a href=""><button class="btn-primary">Get Started</button></a>
	</div>

	<div class="pricing-box pricing-box-bg-image text-center">
		<h5>Premium</h5>
		<p class="price"><sup>$</sup>9<sub>/mo</sub></p>
		<ul class="features-list">
			<li>Unlimited Music</li>
			<li> No Ads</li>
			<li>Upto 3 Devices</li>
			<li>Download Upto 10000 Songs</li>
		</ul>
		<a href=""><button class="btn-primary">Get Started</button></a>
	</div>

	<div class="pricing-box text-center">
		<h5>Platinum</h5>
		<p class="price"><sup>$</sup>19<sub>/mo</sub></p>
		<ul class="features-list">
			<li>Unlimited + Musicaly Special</li>
			<li>On Demand Plackback</li>
			<li>Unlimited Downloads</li>
			<li>Upto 6 Devices</li>
		</ul>
		<a href=""><button class="btn-primary">Get Started</button></a>
	</div>
</div>
	</div>
	<footer id="normal">
		<div class="copyright">
			Copyright ©<script>document.write(new Date().getFullYear());</script> All rights reserved | This site is made with coffee and love by <a href="">  Cyrille</a>
		</div>
		
	</footer>
	
</body>
</html>
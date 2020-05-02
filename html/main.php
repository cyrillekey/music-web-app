<?php
session_start();
$inactive=60;
if(!isset($_SESSION['timeout'])){
    $_SESSION['timeout']=time()+$inactive;
    $session_life=time()-$_SESSION['timeout'];
    if ($session_life>$inactive) {
        session_destroy();
        header('Location:login.php');

    }
    $_SESSION['timeout']=time();
}

?>
<!doctype html>

<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../css/style.css">
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
        <?php
        if (isset($_SESSION['username'])) {
            $userr=$_SESSION['username'];
        
    echo
    '<nav class="main">
        <div class="topline">
            <div class="logo"><a href="#">Musicaly</a></div>
        </div>
        <div class="mainbar" id="mainbarr">
            <ul>
                <li class="links"><a href="../index.php">Home</a></li>
                <li class="links"><a href="../index/php#explanation">About</a></li>
                <li class="links"><a href="../index.php#pricing">Pricing</a></li>
                <li class="links" id="cat"><a href="">Category</a></li>
                <div class="caatmenu">
                    <ul>
                        <li class="linksl"><a href="">Pop</a></li>
                        <li class="linksl"><a href="">Reggae</a></li>
                        <li class="linksl"><a href="">Rap</a></li>
                        <li class="linksl"><a href="">Hiphop</a></li>
                        <li class="linksl"><a href="">local</a></li>
                    </ul>
                </div>
            </ul>
        </div>
        <a href="javascript:void(0);" class="icon" onClick="myFunction()" style="background-image: url("img/icons/icons8-menu-100.png"); background-position:center; background-size:contain;"></a>
        <div class="userdetails"><a href="javascript:void(0)" class="username" onClick="myFunction()">'.$userr.'</a>
            <div id="dethid"><a href="" class="detailhidden">Account</a>
                <form action="../handlers/logout.php" method="POST">
                    <button id="log" class="detailhidden" type="submit">Logout</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="player">
        <div class="browsearch">
            <h1 class="alb">Albums</h1>
            <form action="" id="searchform">
                <input type="search" name="searchb" id="searchid" placeholder="Search">
            </form>
        </div>
        <div class="albumpics">';


            include_once("../conf/conf.php");
            $sql = "SELECT album.album_id, artist.artist_name, album.artist_id, album.album_name, album.imageFullnameGallery FROM artist INNER JOIN album ON artist.artist_id = album.artist_id ";
            $stmt = mysqli_stmt_init($conn);
            if (!mysqli_stmt_prepare($stmt, $sql)) {
                echo "sql stmt failed";
            } else{
                //.'&artid='..'
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                while ($row = mysqli_fetch_assoc($result)) {
                    echo '<div class="music-card">
            
                    <div class="img-sect" style="background: url(../img/music/'.$row['imageFullnameGallery'].'); background-size: cover; background-position: center;"><a href="../html/albumpage.php?albid='.$row['album_id'].'&artid='.$row['artist_id'].'"class="albumtitle">
                    <p class="palbum">'.$row['album_name'].'</p>
                         </a></div>
                        <p class="albumarts">'.$row['artist_name'].'</p>
                            <p class="decrib"></p>
                        
                     </div> ';
                     
                }
                echo'</div>
       
                <footer id="onmian">
                    <div class="copyright">
                        Copyright ©<script>
                            document.write(new Date().getFullYear());
                        </script> All rights reserved | This site is made with coffee and love by <a href=""> Cyrille</a>
                    </div>
        
                </footer>
            </div>';
            }}
            else{
                header('Location:login.php');
                exit();
            }
            ?>

        
</body>

</html>
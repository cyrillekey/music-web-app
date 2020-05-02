<?php
session_start();
if(isset($_SESSION['username']))
{

$albumid=$_GET['albid'];
$artist=$_GET['artid'];
include_once"../conf/conf.php";
  $sql="SELECT music_table.music_name, music_table.album_id, music_table.artist_id, artist.artist_name,music_table.musicFullname, artist.artistPicture, album.album_name, album.albumdesc,album.imageFullnameGallery,album.album_release_date,album.album_genre
  FROM album INNER JOIN (artist INNER JOIN music_table ON artist.artist_id = music_table.artist_id) ON (artist.artist_id = album.artist_id) AND (album.album_id = music_table.album_id)
  WHERE (((music_table.album_id)='$albumid')) ORDER BY music_table.date_added ASC";
  $stmt=mysqli_stmt_init($conn);
  if (!mysqli_stmt_prepare($stmt,$sql)) {
    echo"query has failed";

  }
else{
  mysqli_stmt_execute($stmt);
  $result=mysqli_stmt_get_result($stmt);
  $row=mysqli_fetch_assoc($result);
  
  if($row==0){
    $sql="SELECT album.album_id, album.artist_id, album.album_name, album.imageFullnameGallery, album.album_release_date, 
    album.album_genre,album.albumdesc ,artist.artist_name, artist.artistPicture 
    FROM artist INNER JOIN album ON  artist.artist_id=album.artist_id WHERE album.artist_id='$artist' AND album.album_id='$albumid'";
    $stmt=mysqli_stmt_init($conn);
    mysqli_stmt_prepare($stmt,$sql);
    mysqli_stmt_execute($stmt);
    $result=mysqli_stmt_get_result($stmt);
    $row=mysqli_fetch_assoc($result);


    echo'
    
    <!doctype html>
  <html>
    <head>
    <meta charset="utf-8">
  <title>Album</title>
	<link rel="stylesheet" href="../css/album.css">
  </head>

  <body>
	<div class="albumbody">
    
  <div class="background" style=" background: url(../img/artist/'.$row['artistPicture'].') center/cover;"></div>
  <section>
  <div class="album-info">
    <div class="album-art">
    <div class="img-bg" style="background-image:url(../img/music/'.$row['imageFullnameGallery'].'); background-position: center;background-size: cover; height:250px;">
    </div>
    <div class="actions">
        <button class="play"  onClick="audioPlay()">Play</button>
        <div class="bookmark">
          <svg xmlns="'.$row['artistPicture'].'" fill="#faa800" height="24" viewbox="0 0 24 24" width="24">
            <path d="M17 3H7c-1.1 0-1.99.9-1.99 2L5 21l7-3 7 3V5c0-1.1-.9-2-2-2zm0 15l-5-2.18L7 18V5h10v13z"></path>
            <path d="M0 0h24v24H0z" fill="none"></path>
          </svg>
        </div>
      </div>
    </div>
    <div class="album-details">
      <h2> <img src="" />'.$row['artist_name'].'</h2>
      <h1>'.$row['album_name'].'</h1><span> <span>'.$row['album_genre'].'</span><span>&copy;'.$row['album_release_date'].'</span></span>
      <p>'.$row['albumdesc'].'</p>
    </div>
  </div>
  <audio src="" controls id="audioPlayer"></audio>
  <div class="album-tracks">
    <ol id="playlist">

    <li class="currentsong"><a id="song" href="#"><span>Music have not been added we are still working on it</span></a><span></span></li>    
    </ol>
  </div>
</section>
	
	</div>
    <script src="../js/jquery.js"></script>
  <script src="../js/albums.js"></script>
  
</body>
</html>';
  }
  else{
    echo'
    
    <!doctype html>
  <html>
    <head>
    <meta charset="utf-8">
  <title>Album</title>
	<link rel="stylesheet" href="../css/album.css">
  </head>

  <body>
	<div class="albumbody">
    
  <div class="background" style=" background: url(../img/artist/'.$row['artistPicture'].') center/cover;"></div>
  <section>
  <div class="album-info">
    <div class="album-art">
    <div class="img-bg" style="background-image:url(../img/music/'.$row['imageFullnameGallery'].'); background-position: center;background-size: cover; height:250px;">
    </div>
    <div class="actions">
        <button class="play"  onClick="audioPlay()">Play</button>
        <div class="bookmark">
          <svg xmlns="'.$row['artistPicture'].'" fill="#faa800" height="24" viewbox="0 0 24 24" width="24">
            <path d="M17 3H7c-1.1 0-1.99.9-1.99 2L5 21l7-3 7 3V5c0-1.1-.9-2-2-2zm0 15l-5-2.18L7 18V5h10v13z"></path>
            <path d="M0 0h24v24H0z" fill="none"></path>
          </svg>
        </div>
      </div>
    </div>
    <div class="album-details">
      <h2> <img src="" />'.$row['artist_name'].'</h2>
      <h1>'.$row['album_name'].'</h1><span> <span>'.$row['album_genre'].'</span><span>&copy;'.$row['album_release_date'].'</span></span>
      <p>'.$row['albumdesc'].'</p>
    </div>
  </div>
  <audio src="" controls id="audioPlayer"></audio>
  <div class="album-tracks">
    <ol id="playlist">

    ';
    
   do {
      echo'<li class="currentsong"><a id="song" href="../music/'.$row['album_id'].'/'.$row['musicFullname'].'"  ><span>'.$row['music_name'].'</span></a><span>3.19</span></li>';
    } while ($row=mysqli_fetch_assoc($result));

    echo'    
    </ol>
  </div>
</section>
	
	</div>
    <script src="../js/jquery.js"></script>
  <script src="../js/albums.js"></script>
  
</body>
</html>';
  }
}
}
else {
  header("Location:login.php");
}
?>
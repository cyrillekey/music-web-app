<?php
if (isset($_POST['album'])) {
    $name = $_POST['albumname'];
    $nameact=strtolower(str_replace(" ","-",$name));
    $albid = $_POST['albumid'];
    $albtracks = $_POST['Releasedate'];
    $genre = $_POST['albumgenre'];
    $ratings = $_POST['albumratings'];
    $artsid = $_POST['artistid'];
    $namedesc = $_POST['albumdesc'];
    $file = $_FILES['albumcover'];
    $filename = $file["name"];
    $filetype = $file["type"];
    $filetemp = $file["tmp_name"];
    $fileerror = $file["error"];
    $filesize = $file["size"];

    $fileext = explode(".", $filename); 
    $fileactualext = strtolower(end($fileext));
    $allowed = array("jpg", "png", "jpeg");
    if (in_array($fileactualext, $allowed)) {
        if ($fileerror == 0) {
            $imagefullname = $nameact. "." . uniqid("", true) . "." . $fileactualext;
            $filedest = "../img/music/" . $imagefullname;
            include_once("../conf/conf.php");
            $sql = "SELECT * FROM album";
            $stmt = mysqli_stmt_init($conn);
            if (!mysqli_stmt_prepare($stmt, $sql)) {
                echo "sql stmt failed";
                exit();
            } else {
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                $rowcount = mysqli_num_rows($result);

                $sql = "INSERT INTO album (album_id,album_name,album_release_date,album_genre,album_ratings,artist_id,albumdesc,imageFullnameGallery) VALUES (?,?,?,?,?,?,?,?);";
                if (!mysqli_stmt_prepare($stmt, $sql)) {
                    echo "sql stmt failed";
                    exit();
                } else {
                    mysqli_stmt_bind_param($stmt, "ssssssss", $albid, $name, $albtracks, $genre, $ratings, $artsid, $namedesc, $imagefullname);
                   if( mysqli_stmt_execute($stmt)){
                    if(move_uploaded_file($filetemp, $filedest)){
                    echo "it has been uploaded";
                    exit();}
                    else{
                        echo"file could not be moved";
                    }
                   }
                   else{
                       echo"stmt querry has not ben executed";
                       printf("error %s. \n",mysqli_stmt_error($stmt));
                   }

                    
                }
            }
         } else {
            echo "you had an error";
            exit();
        }
    } else {
        echo "we have an error";
        exit();
    }
} else {
    echo "button not clicked";
}

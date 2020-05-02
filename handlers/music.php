<?php
if (isset($_POST['uploadmusic'])) {
    $musicid = $_POST["musicid"];
    $albumid = $_POST["albid"];
    $artist_id=$_POST['artid'];
    $file = $_FILES['musicfile'];
    $filename = $file["name"];
    $filetype = $file["type"];
    $filetemp = $file["tmp_name"];
    $fileerror = $file["error"];
    $filesize = $file["size"];

    $fileext = explode(".", $filename);
    $fileactualext = strtolower(end($fileext));
    $allowed = array("m4a", "mp3", "wav");
    if (in_array($fileactualext, $allowed)) {
        if ($fileerror == 0) {
            $imagefullname = $filename . "." . uniqid("", true) . "." . $fileactualext;
            //create directory
            if(!is_dir('../music/'.$albumid)){
            mkdir('../music/' . $albumid . '', 0777);
            }
            //finito
            $filedest = "../music/" . $albumid ."/". $imagefullname;
            include_once("../conf/conf.php");
            $stmt = mysqli_stmt_init($conn);
            $sql ="INSERT INTO music_table (music_id, music_name, album_id, musicFullname, date_added,artist_id) VALUES (?,?,?,?,now(),?)";
            if (!mysqli_stmt_prepare($stmt, $sql)) {
                echo "sql stmt failed";
                exit();
            } else {
                mysqli_stmt_bind_param($stmt, "sssss", $musicid, $filename,$albumid,$imagefullname,$artist_id);
                if (mysqli_stmt_execute($stmt)) {
                    if (move_uploaded_file($filetemp, $filedest)) {
                        echo "it has been uploaded";
                        exit();
                    } else {
                        echo "file could not be moved";
                    }
                } else {
                    echo "stmt querry has not ben executed";
                    printf("error %s. \n", mysqli_stmt_error($stmt));
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

<?php
if (isset($_POST['artistsub'])) {
    $artist_id = $_POST["artist_id"];
    $artist_name = $_POST["artsitname"];
    $file = $_FILES['artsimg'];
    $filename = $file["name"];
    $filetype = $file["type"];
    $filetemp = $file["tmp_name"];
    $fileerror = $file["error"];
    $filesize = $file["size"];

    $fileext = explode(".", $filename);
    $fileactualext = strtolower(end($fileext));
    $allowed = array("png", "jpg", "jpeg");
    if (in_array($fileactualext, $allowed)) {
        if ($fileerror == 0) {
            $imagefullname = $filename . "." . uniqid("", true) . "." . $fileactualext;
            //create directory
            //finito
            $filedest = "../img/artist/". $imagefullname;
            include_once("../conf/conf.php");
            $stmt = mysqli_stmt_init($conn);
            $sql ="INSERT INTO artist (artist_id,artist_name,artistPicture) VALUES (?,?,?)";
            if (!mysqli_stmt_prepare($stmt, $sql)) {
                echo "sql stmt failed";
                exit();
            } else {
                mysqli_stmt_bind_param($stmt, "sss", $artist_id,$artist_name,$imagefullname);
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

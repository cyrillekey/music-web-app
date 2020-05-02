<?php
if (isset($_POST['sgnin'])) {
    require('../conf/conf.php');
    $user_email=$_POST['mail'];
    $user_pword=$_POST['pword']; 
    if (empty($user_pword) || empty($user_email)) {
        header("Location:../html/login.php?error=unfiled");
        exit();
    }
    else{
        $sql="select * from users where email=?;";
        $stmt=mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($stmt,$sql)) {
                header("Location:../html/login.php?error=sqlerror");
                exit();
        }else{
            mysqli_stmt_bind_param($stmt,"s",$user_email);
            mysqli_stmt_execute($stmt);
            $results=mysqli_stmt_get_result($stmt);
            if($row=mysqli_fetch_assoc($results)){
                $pwdcheck=password_verify($user_pword,$row['p_word']);
                if ($pwdcheck==false) {
                    header("Location:../html/login.php?error=wrongpwd");
                    exit();
                }
                elseif($pwdcheck==true){
                    session_start();
                    $_SESSION['useremail']=$row['email'];
                    $_SESSION['username']=$row['user_name'];
                    header("Location:../html/main.php");
                    exit();
                }
                else{
                    header("Location:../html/login.php?error=sqlerror");
                    exit();
                }
            }else{
                header("Location:../html/login.php?error=nouser");
                exit();
            }
        }

    }
    
}
else{
    header("Location:../html/login.php");
    exit();
}
    

?>
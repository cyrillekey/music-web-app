<?php
if (isset($_POST["signbt"])) {
    require('../conf/conf.php');
       $user_name=$_POST['uname'];
    $email=$_POST['uemail'];
    $pwd=$_POST['pword'];
    if(empty($user_name)||empty($email) || empty($pwd)){
        header("Location:../html/signup.php?error=misdet");
        exit();
    }
    elseif(!filter_var($email,FILTER_VALIDATE_EMAIL) && !preg_match("/^[a-zA-Z0-9]*$/",$user_name)){
        header("Location:../html/signup.php?error=invalmailuser");
        exit();
    }
    elseif (!filter_var($email,FILTER_VALIDATE_EMAIL)) {
        header("Location:../html/signup.php?errorr=invalmail");
        exit();
    }
    elseif(!preg_match("/^[a-zA-Z0-9]*$/",$user_name)){
        header("Location:../html/signup.php?error=invaluser");
        exit();
    }
    
    elseif(strlen($pwd)<6){
        header("Location:../html/signup.php?error=pwdlen");
        exit();

    }

    else{
        $sql="select user_name from users where user_name=?";
        $stmt=mysqli_stmt_init($conn);
        if (!mysqli_stmt_prepare($stmt,$sql)) {
            header("Location:../html/signup.php?error=sqlerror");
            exit();
        }
        else{
            mysqli_stmt_bind_param($stmt,'s',$user_name);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            $resultcheck=mysqli_stmt_num_rows($stmt);
            if($resultcheck>0){
                header("Location:../html/signup.php?error=usertaken&user=$user_name");
                exit();
            }else{

                $sql2="select email from users where email=?";
                $stmt2=mysqli_stmt_init($conn);
                if (!mysqli_stmt_prepare($stmt2,$sql2)) {
                    header("Location:./html/signup.php?error=sqlerror1");
                    exit();
                }
                else
                {   
                    mysqli_stmt_bind_param($stmt2,'s',$email);
                    mysqli_stmt_execute($stmt2);
                    mysqli_stmt_store_result($stmt2);
                    $emailcheck=mysqli_stmt_num_rows($stmt2);
                    if($emailcheck>0){
                        header("Location:../html/signup.php?error=emailtaken");
                        exit();
                    }
                    else{
                        $sql="insert into users(user_name,email,p_word,date_joined)values(?,?,?,NOW())";
                        $stmt=mysqli_stmt_init($conn);
                         if (!mysqli_stmt_prepare($stmt,$sql)) {
                            header("Location:../html/signup.php?error=sqlerror2");
                             exit();
                         } else {
                            $hashedpwd=password_hash($pwd,PASSWORD_DEFAULT);
                             mysqli_stmt_bind_param($stmt,"sss",$user_name,$email,$hashedpwd);
                            mysqli_stmt_execute($stmt);
                            header("Location:../html/signup.php?error=success");
                            exit();
                        }

                    }
                }


                //succesfull now signin
                
                
            }
        }    
    }

mysqli_stmt_close($stmt);
mysqli_close($conn);

} else {
    header("Location:../html/signup.php?error=nobtn");
    exit();
}

<?php
ob_start();
include "header.php";

//update password
if(isset($_POST['updatePassword']))
{
    // if(isset($_SESSION['isOTPmatch']) && $_SESSION['isOTPmatch'] == true) {
	// 	//OTP VALIDATION VIA SESSION SESSION['isOTPmatch'] WILL BE UPDATED AS FALSE WHENEVER USER RELOAD PAGE AND GOT TO ANOTHER PAGE AFTER SENDING OTP IN MAIL
	// 	$_SESSION['isOTPmatch'] = false;
     $currentPassword= mysqli_real_escape_string($con, $_POST['currentPassword']);
     $newPassword= mysqli_real_escape_string($con, $_POST['newPassword']);
     $confirmPassword= mysqli_real_escape_string($con, $_POST['confirmPassword']);
     
     if(empty($currentPassword) || empty($newPassword) || empty($confirmPassword))
     {
         $_SESSION['errorMsg'] = 'Please fill all fields of password';
         header('location:update-password.php');
         exit();
     }
     elseif (!preg_match('/([A-Z]{1,})/', $newPassword)) 
     {
            // altleast one capital letter
          
        $_SESSION['errorMsg'] = 'Minimum 1 capital letter in password';
        header('location:update-password.php');
        exit();
     }
    elseif (!preg_match('/([\d]{1,})/', $newPassword)) 
    {
            // altelast one digit
        $_SESSION['errorMsg'] = 'Minimum 1 digit in password';
        header('location:update-password.php');
        exit();
    }
    elseif (!preg_match('/[^a-zA-Z\d]/', $newPassword)) 
    {
           // special characters
        $_SESSION['errorMsg'] = 'Minimum 1 special characters in password';
        header('location:update-password.php');
        exit();
    }
    elseif (strlen($newPassword) < 8) {
         // atleast 8 characters length
         
        $_SESSION['errorMsg'] = 'Minimum password length 8 characters';
        header('location:update-password.php');
        exit();
        
    }
    elseif($newPassword != $confirmPassword)
    {
          $_SESSION['errorMsg'] = 'Password not match';
         header('location:update-password.php');
         exit();
    }
    else
    {

        // Custom password_verify function
        function custom_password_verify($password, $hash) {
            return password_verify($password, $hash);
        }

        // Custom password_hash function
        function custom_password_hash($password) {
            return password_hash($password, PASSWORD_BCRYPT);
        }

        
        // $userHashedPasswordCheck = password_verify($currentPassword, $userPassword);
        $userPassword = $_SESSION['password'];
        $userHashedPasswordCheck = custom_password_verify($currentPassword, $userPassword);


            if ($userHashedPasswordCheck == false)
            {
                $_SESSION['errorMsg'] = "Wrong Password ";
                header("Location: update-password.php");
                exit();
            }
            elseif ($userHashedPasswordCheck == true)
            {
             
            //  $hashPassword = password_hash($newPassword, PASSWORD_BCRYPT);
            $hashPassword = custom_password_hash($newPassword);
            
            $user_name =  $_SESSION['admin_name'];
             
            $sql = "UPDATE admin_login SET password=? WHERE user_name = ?";
            $stmt = $con->prepare($sql); 
            $stmt->bind_param("ss",$hashPassword ,$user_name);
                                 
             if($stmt->execute()){
                $stmt->close();
                $_SESSION['successMsg']='Your Password has been updated successfully.';
                header("Location: update-password.php");
                exit();
                }
            }
     }

    // } 
	// else {
	// 	$_SESSION['errorMsg'] = "Please valided your email via OTP.";
	// 	header("Location: update-password.php");
	// 	exit();
	// }
  }
  //end update password
?>
<!-- Main-body start -->
<div class="main-body">
	<div class="page-wrapper">
		<!-- Page-header start -->
		<div class="page-header">
			<div class="row align-items-end">
				<div class="col-lg-8">
					<div class="page-header-title">
						<div class="d-inline">
							<h4>Update Password</h4>
							<span>Update Password for admin. </span>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="page-header-breadcrumb">
						<ul class="breadcrumb-title">
							<li class="breadcrumb-item">
								<a href="index-1.htm"> <i class="feather icon-home"></i> </a>
							</li>
							<li class="breadcrumb-item"><a href="#!">Update Password</a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Page-header end -->
		<div class="page-body">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 ml-auto mr-auto">
						
						<div class="auth-box card">
							<div class="card-block">
								<div class="row">
									<div class="col-md-12">
										<h3 class="text-center ">Update Password </h3>

                                    <!-- Success Message -->
                                    <?php if (isset($_SESSION['successMsg'])) {
                                    ?>
                                    <div class="alert alert-success background-success mb-0">
                                    <button type="button" class="close m-0" data-dismiss="alert" aria-label="Close">
                                    <i class="icofont icofont-close-line-circled text-white"></i>
                                    </button>
                                    <strong>Success!</strong> <?php echo $_SESSION['successMsg'] ;?>
                                    </div>
                                    <?php
                                    unset($_SESSION['successMsg']);
                                    } ?>

                                    <!-- Error Message -->
                                    <?php if (isset($_SESSION['errorMsg'])) {
                                    ?>
                                    <div class="alert alert-danger background-danger mb-0">
                                    <button type="button" class="close m-0" data-dismiss="alert" aria-label="Close">
                                    <i class="icofont icofont-close-line-circled text-white"></i>
                                    </button>
                                    <strong>Error!</strong> <?php echo $_SESSION['errorMsg'] ;?>
                                    </div>
                                    <?php
                                    unset($_SESSION['errorMsg']);
                                    } ?>


									</div>
								</div>
							</div>
							<div class="card-body">
								<form  class="md-float-material form-material" method="POST">
									<!-- START OTP VALIDATION -->
                                    <div class="mb-3">
                                        <input type="hidden" value="" id="gtron-wallet"/>
                                        <div class="input-group "> 
                                            <input type="hidden" value="<?php echo $_SESSION['admin_name'];?>" id="owner" />
                                            <input type="text" name="otpCode" class="form-control" id="admin-mail" value="<?php echo $_SESSION['admin_email'];?>" placeholder="Otp Code Sent on Email" >
                                            <button class="btn btn-secondary sendOtpEmail" type="button" >SEND OTP</button>
                                        </div>
                                        <p class="text-success otpSendSuccessMessage"></p>
                                        <p class="text-danger otpSendErrorMessage"></p>

                                        <div class="input-group ">
                                            <input type="text" class="form-control" id="otp-value" placeholder="Enter Otp and confirm">
                                            <button class="btn btn-secondary confirmOtp" type="button" >CONFIRM OTP</button>
                                        </div>
                                        <p class="text-success confirmOtpSuccessMessage"></p>
                                        <p class="text-danger confirmOtpErrorMessage"></p>
                                    </div>
                                    <!-- END OTP VALIDATION -->
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Current Password</label>
										<div class="col-sm-9">
											<input type="password" name="currentPassword"  autocomplete="off" type="text" class="form-control" name="title" id="title">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">New Password</label>
										<div class="col-sm-9">
											<input type="password" id="pass1" name="newPassword" autocomplete="off" type="text" class="form-control" name="description" id="description">
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">Confirm Password</label>
										<div class="col-sm-9">
											<input type="password" id="pass2" name="confirmPassword" autocomplete="off" type="text" class="form-control" name="description" id="description">
										</div>
									</div>
									
									<div class="form-group row">
										<div class="col-md-12">
											<button type="submit" name="updatePassword" class="btn btn-warning btn-md btn-block waves-effect text-center m-b-20" name = "create">update</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>
<?php
include "footer.php";
?>

<script>
	// START OTP VALIDATION
	$(".sendOtpEmail").click(function(){
        let sendMail = 'Email Send';
        let owner = document.getElementById('owner').value;
        let email = document.getElementById('admin-mail').value;
		if(email == ''){
            alert("please enter valid enail");
            return;
        }

        $(".sendOtpEmail").prop('disabled', true);
        $(".sendOtpEmail").text('Processing');
        $.post("./ajax/ajax_admin_otp_generator.php",{otp_send:sendMail, owner:owner, email:email}).done(function (feedback) {
            if(feedback == 'Email Sent Successfully') {
                $('.otpSendSuccessMessage').text(feedback);
                $('.otpSendErrorMessage').text('');
            } else {
                $('.otpSendSuccessMessage').text('');
                $('.otpSendErrorMessage').text("Oops something went wrong!");
            }
            $(".sendOtpEmail").prop('disabled', false);
            $(".sendOtpEmail").text('SEND OTP');
            // ...
        })
        .fail(function (jqXHR, textStatus, errorThrown) {
            console.error(textStatus, errorThrown);
            alert("Error occurred during the AJAX request. Check the console for details.");
        })
    })

    $(".confirmOtp").click(function(){
        var userInptOTP = document.getElementById('otp-value').value;
        let owner = document.getElementById('owner').value;
        let email = document.getElementById('admin-mail').value;
        if(userInptOTP == ''){
            alert("please enter valid otp");
            return;
        } 
        $(".confirmOtp").prop('disabled', true);
        $(".confirmOtp").text('Processing');
        $.post("./ajax/ajax_admin_otp_confirmation.php",{action:"confirm-otp",userInptOTP:userInptOTP, owner:owner, email:email}).done(function (feedback) {
            if(feedback == 'success') {
                $('.confirmOtpSuccessMessage').text(feedback);
                $('.confirmOtpErrorMessage').text('')
            } else {
                $('.confirmOtpSuccessMessage').text('');
                $('.confirmOtpErrorMessage').text(feedback);
            }
            $(".confirmOtp").prop('disabled', false);
            $(".confirmOtp").text('CONFIRM OTP');
        })
        .fail(function (jqXHR, textStatus, errorThrown) {
            console.error(textStatus, errorThrown);
            alert("Error occurred during the AJAX request. Check the console for details.");
        })
    })
	// END OTP VALIDATION
</script>
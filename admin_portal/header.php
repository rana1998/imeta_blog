<?php 
error_reporting(E_ALL & ~E_WARNING);

include "db_config.php";
session_start();


        /*Hearder File 
        Contains all information about header */
        // If the user is not logged in redirect to the login page...
if(!isset($_SESSION['admin_name'])){
      header("location:login.php"); 
      exit();
}
else
{
    $adminName = $_SESSION['admin_name'];
}

$adminName = $_SESSION['admin_name'];
$selectImages = "select * from project_management";
$resultImages = mysqli_query($con,$selectImages);
$rowImages = mysqli_fetch_assoc($resultImages);

$logo = $rowImages['logo'];
$favIcon = $rowImages['fav_icon'];

$logo1 = '';
$favIcon1 = '';

?>
<!DOCTYPE html>
<html lang="en">
<head>
<title> Admin Dashboard</title>


<!--[if lt IE 10]>-->
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <!--<![endif]-->

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="robots" content="noindex">
<meta name="googlebot" content="noindex">

<link rel="icon" href="../data/assets/images/favicon.ico" type="image/x-icon">


<link rel="stylesheet" type="text/css" href="files/bower_components/bootstrap/css/bootstrap.min.css">


<link rel="stylesheet" type="text/css" href="files/bower_components/select2/css/select2.min.css">


<link rel="stylesheet" type="text/css" href="files/assets/icon/themify-icons/themify-icons.css">


<link rel="stylesheet" type="text/css" href="files/assets/icon/icofont/css/icofont.css">

 
<link rel="stylesheet" type="text/css" href="files/assets/icon/feather/css/feather.css">
 <!--Font-Awesome -->

<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

 <!--Data Table Css -->
<link rel="stylesheet" type="text/css" href="files/bower_components/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="files/assets/pages/data-table/css/buttons.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="files/bower_components/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="files/assets/pages/data-table/extensions/buttons/css/buttons.dataTables.min.css">

 <!--Notification.css -->
<link rel="stylesheet" type="text/css" href="files/assets/pages/notification/notification.css">

 <!--Animate.css -->
<link rel="stylesheet" type="text/css" href="files/bower_components/animate.css/css/animate.css">

 <!--ekko-lightbox.css -->
<link rel="stylesheet" type="text/css" href="files/bower_components/ekko-lightbox/css/ekko-lightbox.css">

<link rel="stylesheet" type="text/css" href="files/assets/pages/chart/radial/css/radial.css"  media="all">
<link rel="stylesheet" type="text/css" href="files/bower_components/jquery.steps/css/jquery.steps.css">


 <!--Style.css -->
<link rel="stylesheet" type="text/css" href="files/assets/css/style.css">
<link rel="stylesheet" type="text/css" href="files/assets/css/jquery.mCustomScrollbar.css">

<style>
    
/*     .goog-te-banner-frame*/
/*        {*/
/*            display:none !important;*/
            
/*        }*/
</style>
</head>
<body>
<div id="pcoded" class="pcoded">
<div class="pcoded-overlay-box"></div>
<div class="pcoded-container navbar-wrapper">
<nav class="navbar header-navbar pcoded-header">
<div class="navbar-wrapper">
<div class="navbar-logo">
<a class="mobile-menu text-left" id="mobile-collapse" href="#!">
<i class="feather icon-menu"></i>
</a>
<a href="index.php">
    <h6>Admin Dashboard</h6>
</a>
<a class="mobile-options">
<i class="feather icon-more-horizontal"></i>
</a>
</div>
<div class="navbar-container container-fluid">
<ul class="nav-left">
<li class="header-search">
<div class="main-search morphsearch-search">
<div class="input-group">
<span class="input-group-addon search-close"><i class="feather icon-x"></i></span>
<input type="text" class="form-control">
<span class="input-group-addon search-btn"><i class="feather icon-search"></i></span>
</div>
</div>
</li>
</ul>
</div>
</div>
</nav>

<div class="pcoded-main-container">
<div class="pcoded-wrapper">
<nav class="pcoded-navbar">
<div class="pcoded-inner-navbar main-menu">
<div class="text-center" id="google_translate_element"></div>
<div class="pcoded-navigatio-lavel">Menu</div>
 Sidebar Menu 
<ul class="pcoded-item pcoded-left-item">
<li class="">
<a href="index.php">
<span class="pcoded-micon"><i class="feather icon-home"></i></span>
<span class="pcoded-mtext">Home</span>
</a>
</li>
<!-- <li class="">
<a href="create-announcement.php">
<span class="pcoded-micon"><i class="feather icon-bell"></i></span>
<span class="pcoded-mtext">Create Announcement</span>
</a>
</li> -->
<li class="">
<a href="create-blog.php">
<span class="pcoded-micon"><i class="feather icon-bell"></i></span>
<span class="pcoded-mtext">Create blog</span>
</a>
</li>
<!-- <li class="">
<a href="account_activate.php">
<span class="pcoded-micon"><i class="feather icon-user"></i></span>
<span class="pcoded-mtext">Activate Account</span>
</a>
</li> -->
<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-users"></i></span>
<span class="pcoded-mtext">User Details</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="all_users.php">
<span class="pcoded-mtext">All Users</span>
</a>
</li>

<li class="">
<a href="create_user.php">
<span class="pcoded-mtext">Add User</span>
</a>
</li>


<li class="">
<a href="active_users.php">
<span class="pcoded-mtext">Active Users</span>
</a>
</li>
<li class="">
<a href="inactive_users.php">
<span class="pcoded-mtext">Inactive Users</span>
</a>
</li>
</ul>


<li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-edit"></i></span>
<span class="pcoded-mtext">Update User Record</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="balance_update.php">
<span class="pcoded-mtext">Update Balance</span>
</a> -->
</li>
<!-- <li class="">
<a href="ver-email.php">
<span class="pcoded-mtext">Email Verification</span>
</a>
</li> -->
<!-- <li class="">
<a href="change_email.php">
<span class="pcoded-mtext">Change Email</span>
</a>
</li>
<li class="">
<a href="change_usdt_address.php">
<span class="pcoded-mtext">Change USDT Address</span>
</a>
</li>
<li class="">
<a href="blocked_users.php">
<span class="pcoded-mtext">Blocked By Admin</span>
</a>
</li>
<li class="">
<a href="blocked_users_sflag.php">
<span class="pcoded-mtext">Blocked By Email</span>
</a>
</li>
</ul>

<li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-edit"></i></span>
<span class="pcoded-mtext">Logo & favicon</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="logo_management.php">
<span class="pcoded-mtext">Logo management</span>
</a>
</li>
<li class="">
<a href="favicon_management.php">
<span class="pcoded-mtext">Favicon management</span>
</a>
</li>
</ul>
</li>

<li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-package"></i></span><span class="pcoded-mtext">Package Details</span>
</a>
<ul class="pcoded-submenu">
<li class="">
    <a href="create_package.php">
   <span class="pcoded-mtext">Create Package</span>
</a>
</li> -->
<!--<li class="">-->
<!--<a href="packages_summary.php">-->
<!--<span class="pcoded-mtext">Packages summary</span>-->
<!--</a>-->
<!--</li>-->
<!-- </ul>
</li> -->

<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-package"></i></span>
<span class="pcoded-mtext">Packages</span>
</a>
<ul class="pcoded-submenu"> -->
<!-- <li class="">
<a href="normal_package.php">
<span class="pcoded-mtext">Normal Package</span>
</a>
</li> -->

<!-- <li class="">
<a href="roi-package.php">
<span class="pcoded-mtext">ROI Package</span>
</a>
</li> -->
<!-- <li class="">
    <a href="pending_package.php">
    <span class="pcoded-mtext">Pending Package</span>
</a>
</li> -->
<!-- <li class="">
<a href="all_package.php">
<span class="pcoded-mtext">Purchased Packages</span>
</a>
</li> 

<li class="">
<a href="all_package_user_count.php">
<span class="pcoded-mtext">Purchased Packages Count</span>
</a>
</li> 

</ul>
</li> -->



<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-package"></i></span>
<span class="pcoded-mtext">Orders</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="order_pending.php">
<span class="pcoded-mtext">Pending Order</span>
</a>
</li>
<li class="">
    <a href="order_all.php">
    <span class="pcoded-mtext">All Orders</span>
</a>
</li>
</ul>
</li> -->

<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="fas fa-dollar-sign"></i></span>
<span class="pcoded-mtext">Withdrawals</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="withdrawal_limit.php">
<span class="pcoded-mtext">Withdrawal Limit</span>
</a>
</li> -->
<!-- <li class="">
<a href="pending_withdrawal.php">
<span class="pcoded-mtext">Pending</span>
</a>
</li> -->
<!-- <li class="">
<a href="approved_withdrawal.php">
<span class="pcoded-mtext">Completed</span>
</a>
</li>
<li class="">
<a href="rejected_withdrawal.php">
<span class="pcoded-mtext">Failed</span>
</a>
</li>
<li class="">
<a href="status-withdrawal.php">
<span class="pcoded-mtext">All</span>
</a>
</li>
</ul>
</li> -->


<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-package"></i></span>
<span class="pcoded-mtext">Categories</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="category.php">
<span class="pcoded-mtext">Main Category</span>
</a>
</li>
<li class="">
<a href="sub-category.php">
<span class="pcoded-mtext">Sub Category</span>
</a>
</li>

</ul>
</li> -->




<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-package"></i></span>
<span class="pcoded-mtext">Products</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="create-product.php">
<span class="pcoded-mtext">Create Product</span>
</a>
</li>
<li class="">
<a href="product-list.php">
<span class="pcoded-mtext">Product List</span>
</a>
</li>

</ul>
</li> -->

<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="fas fa-book"></i></span>
<span class="pcoded-mtext">E book</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="category.php">
<span class="pcoded-mtext">Category</span>
</a>
</li>
<li class="">
<a href="sub-category.php">
<span class="pcoded-mtext">Sub Category</span>
</a>
</li>
<li class="">
<a href="create-ebook.php">
<span class="pcoded-mtext">Add Ebook</span>
</a>
</li>
<li class="">
<a href="product-list.php">
<span class="pcoded-mtext">Product List</span>
</a>
</li>

</ul>
</li> -->



<!-- <li class="">
<a href="otp_code.php">
<span class="pcoded-micon"><i class="feather icon-package"></i></span>
<span class="pcoded-mtext">Otp Code Block Unblock</span>
</a>
</li> -->





<!-- <li class="">
<a href="bank.php">
<span class="pcoded-micon"><i class="fas fa-dollar-sign"></i></span>
<span class="pcoded-mtext">Bank</span>
</a>
</li> -->



<!-- 
<li class="">
<a href="donation.php">
<span class="pcoded-micon"><i class="fas fa-dollar-sign"></i></span>
<span class="pcoded-mtext">Donation</span>
</a>
</li>



<li class="">
<a href="currency_rates.php">
<span class="pcoded-micon"><i class="fas fa-dollar-sign"></i></span>
<span class="pcoded-mtext">Currancy Rates</span>
</a>
</li> -->


<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="fas fa-project-diagram"></i></span>
<span class="pcoded-mtext">Trade</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="trade-item.php">
<span class="pcoded-mtext">Trade Item</span>
</a>
</li>
<li class="">
<a href="trade-history.php">
<span class="pcoded-mtext">Trade History</span>
</a>
</li>
</ul>
</li> -->



<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="fas fa-dollar-sign"></i></span>
<span class="pcoded-mtext">Taxes/Commission</span>
</a>
<ul class="pcoded-submenu"> -->
    <!-- <li class="">
        <a href="deposit-tax.php">
            <span class="pcoded-mtext">Deposit Tax</span>
        </a>
    </li>
    <li class="">
        <a href="withdrawal-tax.php">
            <span class="pcoded-mtext">Withdrawal Tax</span>
        </a>
    </li> -->
    <!-- <li class="">
        <a href="internal_wallet_transfer_tax.php">
            <span class="pcoded-mtext">Internal Wallet Transfer Tax</span>
        </a>
    </li>
    <li class="">
        <a href="admin_tax_withdrawal.php">
            <span class="pcoded-mtext">Admin Tax Withdrawal</span>
        </a>
    </li>
</ul>
</li> -->


<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-percent"></i></span>
<span class="pcoded-mtext">Percentage</span>
</a>
<ul class="pcoded-submenu">
   <li class="">
<a href="package_percentage.php">
<span class="pcoded-micon"><i class="feather icon-percent"></i></span>
<span class="pcoded-mtext">Package Percentage</span>
</a>
</li>

<li class="">
<a href="commission_percentage.php">
<span class="pcoded-micon"><i class="feather icon-percent"></i></span>
<span class="pcoded-mtext">Commission Percentage</span>
</a>
</li> -->

<!-- <li class="">
<a href="level-percentage.php">
<span class="pcoded-micon"><i class="feather icon-percent"></i></span>
<span class="pcoded-mtext">Level Percentage</span>
</a>
</li>

<li class="">
<a href="monthly-percentage.php">
<span class="pcoded-micon"><i class="feather icon-percent"></i></span>
<span class="pcoded-mtext">Monthly Percentage</span>
</a>
</li>

<li class="">
<a href="roi.php">
<span class="pcoded-micon"><i class="feather icon-percent"></i></span>
<span class="pcoded-mtext">ROI Percentage</span>
</a>
</li>
</ul>
</li> -->







<!-- 
<li class="">
<a href="rank_summary.php">
<span class="pcoded-micon"><i class="feather icon-award"></i></span>
<span class="pcoded-mtext">Rank & Rewards</span>
</a>
</li> -->




<!-- - Disable KYC (Might be enabled in future) -->

<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-file-text"></i></span>
<span class="pcoded-mtext">KYC</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="admin_kyc.php">
<span class="pcoded-mtext">KYC</span>
</a>
</li>
<li class="">
<a href="kyc_summary.php">
<span class="pcoded-mtext">Pending</span>
</a>
</li>
<li class="">
<a href="approved_kyc.php">
<span class="pcoded-mtext">Approved</span>
</a>
</li>
</ul>
</li> -->

<!-- - Disable KYC (Might be enabled in future) -->
<!-- <li class="">
    <a href="javascript:void(0)">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Disabled KYC</span>
    </a>
</li> -->




<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-file-text"></i></span>
<span class="pcoded-mtext">Capital</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="capital_request.php">
<span class="pcoded-mtext">Pending Requests</span>
</a>
</li>
<li class="">
<a href="approved_capital.php">
<span class="pcoded-mtext">Approved Requests</span>
</a>
</li>
</ul>
</li> -->


<!-- <li class="pcoded-hasmenu">
<a href="javascript:void(0)">
<span class="pcoded-micon"><i class="feather icon-message-square"></i></span>
<span class="pcoded-mtext">Support</span>
</a>
<ul class="pcoded-submenu">
<li class="">
<a href="pending_support.php">
<span class="pcoded-mtext">Pending Support</span>
</a>
</li>
<li class="">
<a href="approved_support.php">
<span class="pcoded-mtext">Approved Support</span>
</a>
</li>
</ul>
</li>




<li class="pcoded-hasmenu">
    <a href="javascript:void(0)">
    <span class="pcoded-micon"><i class="feather icon-message-square"></i></span>
    <span class="pcoded-mtext">User Reports</span>
    </a>
    <ul class="pcoded-submenu">
        <li class="">
            <a href="user_dividend_report.php">
            <span class="pcoded-mtext">User Dividend Report</span>
            </a>
        </li>
        <li class="">
            <a href="user_package_history.php">
            <span class="pcoded-mtext">User Deposit Report</span>
            </a>
        </li>
        <li class="">
            <a href="user_withdrawal_history.php">
            <span class="pcoded-mtext">User Withdrawal Report</span>
            </a>
        </li>
        <li class="">
            <a href="user_dividend_bonus.php">
            <span class="pcoded-mtext">User Dividened Bonus</span>
            </a>
        </li>
        <li class="">
            <a href="user_level_bonus_history.php">
            <span class="pcoded-mtext">User Level Bonus</span>
            </a>
        </li>
        <li class="">
            <a href="user_internal_wallet_transfer_history.php">
            <span class="pcoded-mtext">Internal Wallet Transfer</span>
            </a>
        </li>
    </ul>
</li>


<li class="pcoded-hasmenu">
    <a href="javascript:void(0)">
    <span class="pcoded-micon"><i class="feather icon-message-square"></i></span>
    <span class="pcoded-mtext">Gtron Reports</span>
    </a>
    <ul class="pcoded-submenu">
        <li class="">
            <a href="gtron_commission_report.php">
            <span class="pcoded-mtext">Gtron Commission Report</span>
            </a>
        </li>
        <li class="">
            <a href="gtron_profit_report.php">
            <span class="pcoded-mtext">Gtron Profit Report</span>
            </a>
        </li>
    </ul>
</li>

<li class="">
    <a href="admin_wallet_summary.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Admin Wallet Summery</span>
    </a>
</li>

<li class="">
    <a href="user_registration_table.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">New Registration</span>
    </a>
</li>

<li class="">
    <a href="admin_wallet_summary_logs.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Admin Wallet Summery Logs</span>
    </a>
</li>

<li class="">
    <a href="gtron_token_wallet_summary.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Gtron Token Wallet Summary</span>
    </a>
</li> -->

<!-- <li class="">
    <a href="gtron_total_token_balance.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Gtron Total Token Balance</span>
    </a>
</li> -->

<!-- <li class="">
    <a href="user_login_history.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">User login history</span>
    </a>
</li>

<li class="">
    <a href="user_package_history.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">User package history</span>
    </a>
</li>

<li class="">
    <a href="user_internal_wallet_transfer_history.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Internal wallet transfer history</span>
    </a>
</li>

<li class="">
    <a href="user_withdrawal_history.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Withdrawal history</span>
    </a>
</li>

<li class="">
    <a href="user_level_bonus_history.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Level bonus history</span>
    </a>
</li>

<li class="">
    <a href="user_pool_bonus_history.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Pool bonus history</span>
    </a>
</li>

<li class="">
    <a href="user_dividend_bonus_history.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext"> Dividend Bonus history</span>
    </a>
</li>

<li class="">
    <a href="x_amount_user_report.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">User x amount report</span>
    </a>
</li>


<li class="">
    <a href="update-password.php">
        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
        <span class="pcoded-mtext">Update password</span>
    </a>
</li> -->


<li class="">
<a href="logout.php">
<span class="pcoded-micon"><i class="feather icon-log-out"></i></span>
<span class="pcoded-mtext">Logout</span>
</a>
</li>

</ul>
</nav>

<div class="pcoded-content">
<div class="pcoded-inner-content">
 <!-- Header End Here  -->
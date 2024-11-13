<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang đăng nhập</title>
    <meta name="robots" content="noindex, follow">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <!-- <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"> -->

    <!-- CSS
	============================================ -->
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
    <!-- Pe-icon-7-stroke CSS -->
    <link rel="stylesheet" href="assets/css/vendor/pe-icon-7-stroke.css">
    <!-- Font-awesome CSS -->
    <link rel="stylesheet" href="assets/css/vendor/font-awesome.min.css">
    <!-- Slick slider css -->
    <link rel="stylesheet" href="assets/css/plugins/slick.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="assets/css/plugins/animate.css">
    <!-- Nice Select css -->
    <link rel="stylesheet" href="assets/css/plugins/nice-select.css">
    <!-- jquery UI css -->
    <link rel="stylesheet" href="assets/css/plugins/jqueryui.min.css">
    <!-- main style css -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="style.css">

    <script type="text/javascript" charset="UTF-8"
        src="https://maps.googleapis.com/maps-api-v3/api/js/57/12/intl/vi_ALL/common.js"></script>
    <script type="text/javascript" charset="UTF-8"
        src="https://maps.googleapis.com/maps-api-v3/api/js/57/12/intl/vi_ALL/util.js"></script>
</head>

<body>
    <div class="container">
        <div class="boxcenter">
            <div class="row mb header">
                <h1> BSHOP CỬA HÀNG BÁN ĐỒ THỂ THAO CHẤT LƯỢNG</h1>
            </div>
            <div class="row mb menu">
                <?php include_once "views/layout/menu.php" ?>
            </div>
            <div class="row mb ">
                <div class="boxtrai mr ">

                    <div class="member-area-from-wrap">
                        <div class="row" style="margin-top:60px;">
                            <!-- Register Content Start -->
                            <div class="login-reg-form-wrap sign-up-form">
                                <h3>Đăng ký</h3>
                                <form
                                    action="<?= BASE_URL.'?act=check-dang-ky' ?>"
                                    method="post">
                                    <div class="single-input-item">
                                        <input type="text" placeholder="Tên đăng nhập" name="fullname" value="<?php if (isset($_SESSION['fullname'])) {
                                            echo $_SESSION['fullname'];
                                        } ?>">
                                        <?php if (isset($_SESSION['error']['fullname'])) { ?>
                                        <p class="text-danger">
                                            <?= $_SESSION['error']['fullname'] ?>
                                        </p>
                                        <?php } ?>
                                    </div>
                                    <div class="single-input-item">
                                        <input type="email" placeholder="Nhập địa chỉ Email" name="email" value="<?php if (isset($_SESSION['email'])) {
                                            echo $_SESSION['email'];
                                        } ?>">
                                        <?php if (isset($_SESSION['error']['email'])) { ?>
                                        <p class="text-danger">
                                            <?= $_SESSION['error']['email'] ?>
                                        </p>
                                        <?php } ?>
                                    </div>
                                    <div class="single-input-item">
                                        <input type="text" placeholder="Nhập số điện thoại" name="phone_number" value="<?php if (isset($_SESSION['phone_number'])) {
                                            echo $_SESSION['phone_number'];
                                        } ?>">
                                        <?php if (isset($_SESSION['error']['phone_number'])) { ?>
                                        <p class="text-danger">
                                            <?= $_SESSION['error']['phone_number'] ?>
                                        </p>
                                        <?php } ?>
                                    </div>
                                    <div class="single-input-item">
                                        <input type="text" placeholder="Nhập địa chỉ nơi trốn" name="address" value="<?php if (isset($_SESSION['address'])) {
                                            echo $_SESSION['address'];
                                        } ?>">
                                        <?php if (isset($_SESSION['error']['address'])) { ?>
                                        <p class="text-danger">
                                            <?= $_SESSION['error']['address'] ?>
                                        </p>
                                        <?php } ?>
                                    </div>
                                    <div class="flex mb">
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="password" placeholder="Nhập Password" name="password"
                                                    value="<?php if (isset($_SESSION['password'])) {
                                                        echo $_SESSION['password'];
                                                    } ?>">
                                                <?php if (isset($_SESSION['error']['password'])) { ?>
                                                <p class="text-danger">
                                                    <?= $_SESSION['error']['password'] ?>
                                                </p>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="password" placeholder="Nhập lại Password" name="repassword"
                                                    value="<?php if (isset($_SESSION['repassword'])) {
                                                        echo $_SESSION['repassword'];
                                                    } ?>">
                                                <?php if (isset($_SESSION['error']['repassword'])) { ?>
                                                <p class="text-danger">
                                                    <?= $_SESSION['error']['repassword'] ?>
                                                </p>
                                                <?php } ?>
                                                <?php if (isset($_SESSION['error']['checkpassword'])) { ?>
                                                <p class="text-danger">
                                                    <?= $_SESSION['error']['checkpassword'] ?>
                                                </p>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-input-item">
                                        <button type="submit" class="btn btn-sqr" name="submitDangKy">Đăng ký</button>
                                    </div>
                                </form>
                            </div>
                            <!-- Register Content End -->
                        </div>
                    </div>

                </div>
                <?php include_once './views/layout/siteBar.php'; ?>
            </div>

        </div>
    </div>
</body>

</html>
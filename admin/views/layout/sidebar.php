<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="<?= BASE_URL_ADMIN ?>" class="brand-link">
    <img style="max-width:200px; max-height:80px; margin-left:30px" src="./assets/dist/img/logo-white-ngang-remove1.jpg"
      alt="">
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image" style="width:4.1rem">
        <img style="width:3.1rem" src="./assets/dist/img/logo.jpg" class="img-circle elevation-2" alt="User Image">
        <span style="font-size: 26px; color:white; margin:20px">BAĐ SHOP</span>
      </div>
      <div style="margin-top:2rem" class="info">
        <?php if (isset($_SESSION['user_admin'])) { ?>
        <a
          class="d-block"><?=$_SESSION['user_admin']?></a>
        <?php } ?>
      </div>
    </div>

    <!-- SidebarSearch Form -->
    <div class="form-inline">
      <div class="input-group" data-widget="sidebar-search">
        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-sidebar">
            <i class="fas fa-search fa-fw"></i>
          </button>
        </div>
      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

        <li class="nav-item">
          <a href="<?= BASE_URL_ADMIN.'?act=listCategory' ?>"
            class="nav-link">
            <img style="width:24px;height:24px;" src="https://img.icons8.com/?size=100&id=13727&format=png&color=000000">
            Quản lý danh mục
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= BASE_URL_ADMIN.'?act=listProduct' ?>"
            class="nav-link">
            <img style="width:24px;height:24px;"
              src="https://img.icons8.com/?size=100&id=12428&format=png&color=000000">
            Quản lý sản phẩm
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= BASE_URL_ADMIN ?>" class="nav-link">
            <img style="width:24px;height:24px;"
              src="https://img.icons8.com/?size=100&id=23265&format=png&color=000000">
            Quản lý tài khoản
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= BASE_URL_ADMIN ?>" class="nav-link">
            <img style="width:24px;height:24px;" src="https://img.icons8.com/?size=100&id=7979&format=png&color=000000">
            Quản lý đơn hàng
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= BASE_URL_ADMIN ?>" class="nav-link">
            <img style="width:24px;height:24px;"
              src="https://img.icons8.com/?size=100&id=37966&format=png&color=000000">
            Quản lý bình luận
          </a>
        </li>
        <li class="nav-item">
          <a href="<?= BASE_URL_ADMIN ?>" class="nav-link">
            <img style="width:24px;height:24px;"
              src="https://img.icons8.com/?size=100&id=11254&format=png&color=000000">
            Quản lý đánh giá
          </a>
        </li>

      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <!-- <a  class="nav-link">Đăng xuất</a> -->
        <a href="<?= BASE_URL.'?act=trang-chu' ?>" class="nav-link">Trang chủ client</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a href="<?= BASE_URL.'?act=dang-xuat' ?>" onclick="return confirm('Bạn muốn đăng xuất?')" class="nav-link" data-widget="logout" href="#" role="button">
        <img style="width:20px;height:19px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAg0lEQVR4nO2Wyw2AIBAFR0ugM2IlFmKsy5L0ssYErx5cwkNkEo7AJPuFTqVYpvN9gbd0AashBIdSYAeiUiB6Ps8SQyAAs0pgBLb0xqoQuJhSIt4SA4UFXBL2IOBpzUsTAp4QSJPwf2UYlI0oOu62MYxMPY6thoXEmhAw9VpuKoEOpTgBWrm2y79fsd4AAAAASUVORK5CYII=">
        </a>
      </li>
    </ul>
  </nav>
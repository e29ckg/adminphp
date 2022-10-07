<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo">
        <a href="../" class="app-brand-link">
            <span class="app-brand-text demo menu-text fw-bolder ms-2 text-uppercase">Admin</span>
        </a>
        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
    </div>
    <div class="menu-inner-shadow"></div>
    <ul class="menu-inner py-1">
        <li class="menu-item <?php echo isActive('dashboard') ?>">
            <a href="../" class="menu-link">
            <i class="menu-icon tf-icons bx bx-home-circle"></i>
            <div>Dashboard</div>
            </a>
        </li>
        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">Admin</span>
        </li>
        <li class="menu-item open <?php echo isActive('prepare') ?>">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
            <i class="menu-icon tf-icons bx bx-dock-top "></i>
                <div>อำนวยการ</div>
            </a>
            <ul class="menu-sub">                
                <li class="menu-item <?php echo isActiveFile('index') ?>">
                    <a href="../venset/index.php" class="menu-link">
                        <div>เตรียมข้อมูลผู้อยู่เวร</div>
                    </a>
                </li>
                <li class="menu-item <?php echo isActiveFile('venset') ?>">
                    <a href="../venset/" class="menu-link">
                        <div>เตรียมคำสัง</div>
                    </a>
                </li>
                <li class="menu-item <?php echo isActiveFile('venset') ?>">
                    <a href="../venset/" class="menu-link">
                        <div>จัดเวร</div>
                    </a>
                </li>
                
            </ul>
        </li>
        
        <li class="menu-item open <?php echo isActive('users') ?>">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
            <i class="menu-icon tf-icons bx bx-dock-top "></i>
                <div>จัดการสมาชิก</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item <?php echo isActiveFile('users') ?>">
                    <a href="../users/" class="menu-link">
                        <div>สมาชิก</div>
                    </a>
                </li>                
                <li class="menu-item <?php echo isActiveFile('venset') ?>">
                    <a href="../users/" class="menu-link">
                        <div>คำนำหน้าชื่อ</div>
                    </a>
                </li>
                <li class="menu-item <?php echo isActiveFile('venset') ?>">
                    <a href="../users/" class="menu-link">
                        <div>ตำแหน่ง</div>
                    </a>
                </li>
                
            </ul>
        </li>
        <li class="menu-header small text-uppercase">
            <span class="menu-header-text">Pages Menu</span>
        </li>
        <li class="menu-item open <?php echo isActive('account') ?>">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
            <i class="menu-icon tf-icons bx bx-dock-top "></i>
                <div>Account Settings</div>
            </a>
            <ul class="menu-sub">
                <li class="menu-item <?php echo isActiveFile('profile') ?>">
                    <a href="../account/profile.php" class="menu-link">
                        <div>My Profile</div>
                    </a>
                </li>
                <?php if($_SESSION['AD_ROLE'] == "superadmin"){  ?>
                <li class="menu-item <?php echo  in_array(pathCurrent(), $menuAdmin) ? 'active': '' ?>">
                    <a href="../account/" class="menu-link">
                        <div>Admin</div>
                    </a>
                </li>
                <?php } ?>
            </ul>
        </li>
    </ul>
</aside>

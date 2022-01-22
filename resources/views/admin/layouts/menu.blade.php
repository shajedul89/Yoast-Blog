<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li class="menu-title">
                    <span>Main</span>
                </li>
                <li class="{{ (Route::currentRouteName()=='admin.dashboard')? 'active' : '' }}">
                    <a href="{{ route('admin.dashboard') }}"><i class="fe fe-home"></i> <span>Dashboard</span></a>
                </li>


                <li class="submenu">
                    <a href="#"><i class="fe fe-activity"></i> <span> Blog</span> <span class="menu-arrow"></span></a>
                    <ul style="display: none;">
                        <li class="{{ (Route::currentRouteName()=='post.create')? 'ok' : '' }}"><a href="{{ route('post.create')}}">Create Post</a></li>
                        <li class="{{ (Route::currentRouteName()=='post.index')? 'ok' : '' }}"><a href="{{ route('post.index')}}">All Post</a></li>
                        <li class="{{ (Route::currentRouteName()=='postcat.index')? 'ok' : '' }}"><a href="{{ route('postcat.index') }}">Category</a></li>
                        <li class="{{ (Route::currentRouteName()=='post-tag.index')? 'ok' : '' }}"><a href="{{ route('post-tag.index') }}">Tag</a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"><i class="fe fe-document"></i> <span> Product</span> <span class="menu-arrow"></span></a>
                    <ul style="display: none;">
                        <li><a href="{{ route('productCategory.index') }}">Product</a></li>
                        <li><a href="invoice-report.html">Category</a></li>
                        <li><a href="invoice-report.html">Tag</a></li>
                        <li><a href="invoice-report.html">Brand</a></li>
                    </ul>
                </li>

                <li class="submenu">
                    <a href="#"><i class="fe fe-users"></i> <span> Users </span> <span class="menu-arrow"></span></a>
                    <ul style="display: none;">
                        <li><a href="login.html"> user </a></li>
                        <li><a href="register.html"> permission </a></li>
                        <li><a href="forgot-password.html"> Role </a></li>
                        <li><a href="lock-screen.html"> Lock Screen </a></li>
                    </ul>
                </li>

                <li class="submenu">
                    <a href="#"><i class="fe fe-document"></i> <span> Pages </span> <span class="menu-arrow"></span></a>
                    <ul style="display: none;">
                        <li><a href="login.html"> user </a></li>
                        <li><a href="register.html"> permission </a></li>
                        <li><a href="forgot-password.html"> Role </a></li>
                        <li><a href="lock-screen.html"> Lock Screen </a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"><i class="fe fe-vector"></i> <span> Settings </span> <span class="menu-arrow"></span></a>
                    <ul style="display: none;">
                        <li><a href="login.html"> slider </a></li>
                        <li><a href="register.html"> Contact US </a></li>
                        <li><a href="register.html">Social Icons</a></li>

                    </ul>
                </li>


            </ul>
        </div>
    </div>
</div>

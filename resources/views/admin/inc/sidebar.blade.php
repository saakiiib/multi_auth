<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
      <!-- Add icons to the links using the .nav-icon class
           with font-awesome or any other icon font library -->
      
           
      <li class="nav-item">
        <a href="{{route('admin.dashboard')}}" class="nav-link {{ (request()->is('admin/dashboard*')) ? 'active' : '' }}">
          <i class="nav-icon fas fa-th"></i>
          <p>
            Dashboard
          </p>
        </a>
      </li>
      <li class="nav-item">
        <a href="{{route('alladmin')}}" class="nav-link {{ (request()->is('admin/new-admin*')) ? 'active' : '' }}">
          <i class="nav-icon fas fa-th"></i>
          <p>
            Admin
          </p>
        </a>
      </li>
    </ul>
  </nav>
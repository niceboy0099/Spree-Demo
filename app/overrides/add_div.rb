Deface::Override.new(:virtual_path  => "spree/shared/_main_nav_bar",
                     :insert_before => "#main-nav-bar",
                     :text          => "<a href='/' class='demo-set'>Feels Good!</a>",
                     :name          => "registration_future")

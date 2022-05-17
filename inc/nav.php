<nav class="nav">
    <h2 class="logo">Fenntarthatósági témahét</h2>
    <button class="toggleBtn"><i class='bx bx-menu'></i></button>
    <div class="nav-right">
        <ul class="nav-menu">
            <li class="nav-item"><a href="<?php if(isset($_GET['cikk'])) echo "../home"; else echo "home"; ?>" class="nav-link">Főoldal</a></li>
            <li class="nav-item"><a href="<?php if(isset($_GET['cikk'])) echo "../cikkek"; else echo "cikkek"; ?>" class="nav-link">Cikkek</a></li>
            <li class="nav-item"><a href="<?php if(isset($_GET['cikk'])) echo "../ruhak"; else echo "ruhak"; ?>" class="nav-link">Ruhák</a></li>
            <li class="nav-item"><a href="<?php if(isset($_GET['cikk'])) echo "../galeria"; else echo "galeria"; ?>" class="nav-link">Galéria</a></li>
            <li class="nav-item"><a href="<?php if(isset($_GET['cikk'])) echo "../kviz"; else echo "kviz"; ?>" class="nav-link">Kvíz</a></li>
        </ul>
    </div>
</nav>
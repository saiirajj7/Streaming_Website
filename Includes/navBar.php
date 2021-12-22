<?php
require_once("includes/config.php");
require_once("includes/classes/FormSanitizer.php");
require_once("includes/classes/Constants.php");
require_once("includes/classes/Account.php");
if (!(isset($_SESSION['userLoggedIn']) && $_SESSION['userLoggedIn'] == true )) {
    header("Location: ../index.php");
}
?>
<div class="topBar">

    <div class="navLinks">
        <a href="index.php">
            <h1>F I L M C U T</h1>
        </a>
    </div>

    <ul class="navLinks">
        <li><a href="index.php">Home</a></li>
        <li><a href="movies.php">Movies</a></li>
          <!-- <?php
                  if ($_SESSION['id'] == 0) {
                    echo '<li class="nav__item"><a href="Includes/admin.php">Admin</a></li>';
                  }
                                ?>  -->
    </ul>
    <div class="rightItems">
        <a href="search.php">
            <i class="fas fa-search"></i>
        </a>

        <a href="profile.php">
            <i class="fas fa-user"></i>
        </a>

        <a href="logout.php">
            <i class="fas fa-sign-out-alt"></i>
        </a>
    </div>

</div>
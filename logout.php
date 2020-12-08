<?php
  if(isset($_SESSION["useruid"])) {
    echo "<button class='sign-in btn btn-dark my-2 my-sm-0' type='text'><a class='login-btn' href='profile.php'>Profile</a></button>";
    echo "<button class='sign-in btn btn-dark my-2 my-sm-0' type='text'><a class='login-btn' href='includes/logout.inc.php'>Log Out</a></button>";
  } else {
    echo "<button class='sign-in btn btn-dark my-2 my-sm-0' type='text'><a class='login-btn' href='signup.php'>Sign Up</a></button>";
    echo "<button class='sign-in btn btn-dark my-2 my-sm-0' type='text'><a class='login-btn' href='login.php'>Log In</a></button>";
  }
?>

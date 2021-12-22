<?php
require_once("includes/config.php");
require_once("includes/classes/FormSanitizer.php");
require_once("includes/classes/Constants.php");
require_once("includes/classes/Account.php");

$account = new Account($con);

    if(isset($_POST["submitButton"])) {

        $username = FormSanitizer::sanitizeFormUsername($_POST["username"]);
        $password = FormSanitizer::sanitizeFormPassword($_POST["password"]);
        
        $success = $account->login($username, $password);

        if($success) {
            $_SESSION["userLoggedIn"] = $username;
            header("Location: index.php");
        }

    }

function getInputValue($name) {
    if(isset($_POST[$name])) {
        echo $_POST[$name];
    }
}  
?>
<!DOCTYPE html>
<html>
    
    <head>
        <title>F I L M C U T</title>
        <link rel="stylesheet" type="text/css" href="assets/style/style.css" />
    </head>
    <body>
    <nav class="navbar navbar-expand-md navbar-dark">
         <div class="container">
           <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#Navbar" >
             <span class="navbar-toggler-icon"></span>
           </button>
           <a class="navbar-brand" href="uploaders/homepage.php"><h1>F I L M C U T</h1></a>
         </div>
        <div class="signInContainer">

            <div class="column">

                <div class="header">
                    <h2>F I L M C U T</h2>
                    <h3>Sign In</h3>
                </div>

                <form method="POST">
                    <?php echo $account->getError(Constants::$loginFailed); ?>
                    <input type="text" name="username" placeholder="Username" value="<?php getInputValue("username"); ?>" required>

                    <input type="password" name="password" placeholder="Password" required>

                    <input type="submit" name="submitButton" value="SUBMIT">

                </form>

                <a href="register.php" class="signInMessage">Need an account? Sign up here!</a>
                

            </div>

        </div>

    </body>
</html>
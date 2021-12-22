<?php 
include("config.php");

    // Only Allow Admin
    if (!(isset($_SESSION['userLoggedIn']) && $_SESSION['userLoggedIn'] == true && $_SESSION['id'] == 0)) {
        header("Location: ../index.php");
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShortFilm</title>
    <link rel="stylesheet" href="admin.css">
    <link rel="stylesheet" href="admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />
</head>
<body>
<a class="navbar-brand" href="../index.php"><h1>F I L M C U T</h1></a>
    <!-- Content Starts -->
    <div class="admin-box">
      <form action="adminHandler.php" method="POST" class="admin-box-form" enctype="multipart/form-data">
        <h3 class="admin-box-title">Add Movie</h3>
        <div class="form-group">
          <label htmlFor="name">Movie Name</label>
          <input type="text" name="name" id="name" placeholder="Enter movie name" value="" required />
        </div>
        <div class="form-group">
          <label htmlFor="categoryId">Movie Genre</label>
          <input type="text" name="categoryId" id="categoryId" placeholder="Enter movie genre" value="" required />
        </div>
        <div class="form-group">
          <label htmlFor="thumbnail">Movie Cover</label>
          <input type="file" name="thumbnail" id="thumbnail" required/>
        </div>
        <div class="form-group">
          <label htmlFor="preview">Movie Preview</label>
          <input type="file" name="preview" id="preview" required/>
        </div>

        <!-- <div class="form-group">
          <label htmlFor="filePath">Movie File</label>
          <input type="file" name="filePath" id="filePath" required/>
        </div> -->
        <button type="submit" class="btn btn-primary" name="admin_form" value="Submit">
          Submit
        </button>
      </form>
    </div>
</body>
</html>
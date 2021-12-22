<?php



    if (isset($_POST['admin_form'])) {
        include 'config.php';

        // File Targets
        $targetCover = "../entities/thumbnails/" . basename($_FILES['thumbnail']['name']);
        $targetMovie = "../entities/previews/" . basename($_FILES['preview']['name']);

        // Store in DB
        $name = strtolower($_POST['name']);
        $category= strtolower($_POST['categoryId']);
        $thumbnail = "entities/thumbnails/" . basename($_FILES['thumbnail']['name']);
        $filePath = "entities/previews/" . basename($_FILES['preview']['name']);

        $sql = "INSERT INTO entities(name, thumbnail, preview, categoryId) VALUES('$name','$thumbnail', '$filePath','$category')";
        
        $result = $con -> query($sql);

        if ($result && move_uploaded_file($_FILES['thumbnail']['name'], $targetCover) && move_uploaded_file($_FILES['preview']['name'], $targetMovie)) {
            echo "<script type='text/javascript'>alert('Movie Added Successfully! Press OK to Redirect to Admin Page.')</script>";
            echo '<script type="text/javascript">window.location.href="admin.php"</script>';
        }
        else {
            echo "<script type='text/javascript'>alert(`Movie Added Successfully!.`)</script>";            
            echo '<script type="text/javascript">window.location.href="admin.php"</script>';
        }
    }
?>
<?php
include '../core/config.php';
include '../helper/BlogHelper.php';
session_start();
$blogHelper = new BlogHelper();
$db = getDB();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = $_POST['title'];
    $content = $_POST['content'];
    $authorID = $_SESSION['id']; // Replace with the actual author ID.
    $publicationDate = date('Y-m-d H:i:s'); // Replace with the actual publication date.
    $category = $_POST['category'];
    $tags = $_POST['tags']; // Assuming tags are provided as an array in the form.
    $metaDescription = $_POST['metaDescription'];
    $slug = strtolower(str_replace(' ', '-', $title)); // Convert spaces to hyphens and make lowercase
    $url = $slug;

    // Check if the file field exists and is not empty
    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $targetDirectory = "uploads/";
        $targetFileName = basename($_FILES["image"]["name"]);
        $targetFile = $targetDirectory . $targetFileName;
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

        // Validation checks for the image file...
        // ...

        if ($uploadOk == 0) {
            echo "Sorry, your file was not uploaded.";
        } else {
            if (move_uploaded_file($_FILES["image"]["tmp_name"], $targetFile)) {
                echo "The file " . $targetFileName . " has been uploaded.";
                $imageURL = $targetFile;

                // Call the createBlog method with the updated parameters
                $result = $blogHelper->createBlog($db, $title, $content, $authorID, $publicationDate, $category, $tags, $url, $metaDescription, $imageURL);

                echo $result; // Print the result of the createBlog operation.
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        }
    } else {
        echo "File is not uploaded or an error occurred.";
    }
}
?>

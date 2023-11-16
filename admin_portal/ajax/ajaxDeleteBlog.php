<?php
include '../core/config.php';
include '../helper/BlogHelper.php';

session_start();

// Check if the request is a POST request
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the blog post ID to delete
    $blogID = $_POST['blogID'];

    $blogHelper = new BlogHelper();
    $db = getDB();

    // You can add some validation to check if the user has permission to delete this post (e.g., author validation).

    // Call the deleteBlog method to delete the blog post
    $result = $blogHelper->deleteBlog($db, $blogID);

    if ($result === true) {
        echo "success"; // Indicate successful deletion
    } else {
        echo "error"; // Indicate an error during deletion
    }
} else {
    // If it's not a POST request, handle the error or redirect as needed.
    echo "Invalid Request"; // You can customize this message or redirect the user.
}
?>

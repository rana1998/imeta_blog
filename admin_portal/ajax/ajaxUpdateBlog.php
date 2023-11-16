<?php
    include '../core/config.php';
    include '../helper/BlogHelper.php';
    session_start();

    $blogHelper = new BlogHelper();
    $db = getDB();
    $blogID = $_POST['blogID'];
    $title = $_POST['title'];
    $content = $_POST['content'];
    $authorID = $_SESSION['id']; // Replace with the actual author ID.
    $lastUpdated = date('Y-m-d H:i:s'); ; // Replace with the actual publication date.
    $category = $_POST['category'];
    $subcategory = $_POST['subcategory'];
    $tags = $_POST['tags']; // Assuming tags are provided as an array in the form.
    // Convert the title to a URL slug
    $slug = strtolower(str_replace(' ', '-', $title)); // Convert spaces to hyphens and make lowercase

    // You can directly use the slug as a relative URL
    $url = $slug;
    $metaDescription = $_POST['metaDescription'];
    // Now, add values for the remaining columns
    // Call the createBlog method with the dummy data
    $result = $blogHelper->updateBlog($db,$blogID, $title, $content, $authorID, $lastUpdated, $category, $subcategory, $tags, $url, $metaDescription);

    echo $result; // This will print the result of the createBlog operation.
// }
?>
<?php
ob_start();
include "header.php";
include './core/config.php';
include './helper/BlogHelper.php';
$blogHelper = new BlogHelper();
$db = getDB();

if (isset($_GET['id']) && $_GET['id'] != '') {
    $getBlogID = $_GET['id'];

    // Use prepared statements to prevent SQL injection
    $sql = "SELECT * FROM BlogPost WHERE PostID = :blogID";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':blogID', $getBlogID, PDO::PARAM_INT);
    $stmt->execute();

    $data = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($data) {
        $blogTitle = $data['Title'];
        $blogDescription = $data['MetaDescription'];
        $blogContent = $data['Content']; // Add the content field
        $blogCategory = $data['Category']; // Add the category field
        $blogSubcategory = $data['Subcategory']; // Add the subcategory field
        $blogTags = $data['Tags']; // Add the tags field
        $blogMetaDescription = $data['MetaDescription']; // Add the meta description field
        $blogPublishedDate = $data['PublicationDate']; // Add the published date field
        // Fetch other fields as needed
        // You can assign the data to form fields for updating
    } else {
        $_SESSION['errorMsg'] = "Invalid Request.";
        header("Location: index.php");
        exit();
    }
} else {
    $_SESSION['errorMsg'] = "Invalid Request.";
    header("Location: index.php");
    exit();
}


?>

<div class="main-body">
    <div class="page-wrapper">
        <div class="page-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <div class="page-header-title">
                        <div class="d-inline">
                            <h4>Update Blog</h4>
                            <span>Update your blog post.</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="page-header-breadcrumb">
                        <ul class="breadcrumb-title">
                            <li class="breadcrumb-item">
                                <a href="index-1.htm"><i class="feather icon-home"></i></a>
                            </li>
                            <li class="breadcrumb-item"><a href="#!">Update Blog</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-body">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 ml-auto mr-auto">
                        <div class="auth-box card">
                            <div class="card-block">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3 class="text-center">Update Blog</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <!-- Success Message -->
                                <?php if (isset($_SESSION['successMsg'])) : ?>
                                    <div class="alert alert-success background-success mb-0">
                                        <button type="button" class="close m-0" data-dismiss="alert" aria-label="Close">
                                            <i class="icofont icofont-close-line-circled text-white"></i>
                                        </button>
                                        <strong>Success!</strong> <?php echo $_SESSION['successMsg']; ?>
                                    </div>
                                    <?php unset($_SESSION['successMsg']); ?>
                                <?php endif; ?>

                                <!-- Error Message -->
                                <?php if (isset($_SESSION['errorMsg'])) : ?>
                                    <div class="alert alert-danger background-danger mb-0">
                                        <button type="button" class="close m-0" data-dismiss="alert" aria-label="Close">
                                            <i class="icofont icofont-close-line-circled text-white"></i>
                                        </button>
                                        <strong>Error!</strong> <?php echo $_SESSION['errorMsg']; ?>
                                    </div>
                                    <?php unset($_SESSION['errorMsg']); ?>
                                <?php endif; ?>

                                <!-- Blog Update Form -->
                                <form class="md-float-material form-material" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="blogID" value="<?php echo $getBlogID; ?>">

                                    <!-- Add input fields for updating the blog post -->
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Title</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="title" id="title" value="<?php echo $blogTitle; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Description</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="description" id="description" value="<?php echo $blogDescription; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Content</label>
                                        <div class="col-sm-9">
                                            <textarea id="content" name="content"><?php echo $blogContent; ?></textarea>
                                        </div>
                                    </div>
                                    <!-- Add more fields for other blog post data here -->
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Category</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="category" id="category" value="<?php echo $blogCategory; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Subcategory</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="subcategory" id="subcategory" value="<?php echo $blogSubcategory; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Tags</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="tags" id="tags" value="<?php echo $blogTags; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Meta Description</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="metaDescription" id="metaDescription" value="<?php echo $blogMetaDescription; ?>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <!-- Add input fields for other blog post data as needed -->
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-warning btn-md btn-block waves-effect text-center m-b-20" name="update">Update</button>
                                        </div>
                                    </div>
                                    <div id="successMessageDiv"></div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include "footer.php";
?>
<script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace('content');
</script>
<!-- Add your JavaScript code for handling the form submission here -->
<script>
    $(document).ready(function () {
        // Handle form submission
        $("form").submit(function (event) {
            event.preventDefault(); // Prevent the default form submission
            // Serialize the form data
            var content = CKEDITOR.instances.content.getData();
            // Add the content to the form data
            var formData = new FormData(this);
            formData.append("content", content);

            $.ajax({
                type: "POST",
                url: "./ajax/ajaxUpdateBlog.php", // Replace with your server-side script URL for updating the blog
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                    // Handle the response from the server here
                    if (response === "success") {
                        // Clear the form
                        $('form')[0].reset();
                        // Clear CKEditor content
                        CKEDITOR.instances.content.setData('');
                        // Display the success message
                        $('#successMessageDiv').html('<div class="alert alert-success">Blog post updated successfully.</div>');
                    } else {
                        // Handle other responses, such as validation errors
                        $('#successMessageDiv').html('<div class="alert alert-danger">Update failed. Please check your input.</div>');
                    }
                },
                error: function (xhr, status, error) {
                    // Handle errors here
                    console.error("AJAX Error: " + status + " - " + error);
                }
            });
        });
        });
    </script>
</body>
</html>

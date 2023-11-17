<?php
ob_start();
include "header.php";
include './core/config.php';
$db = getDB();

$sql = "SELECT * FROM admin_login";
$stmt = $db->prepare($sql);
$stmt->execute();

$data = $stmt->fetchAll(PDO::FETCH_OBJ);

?>
<!-- Main-body start -->
<div class="main-body">
	<div class="page-wrapper">
		<!-- Page-header start -->
		<div class="page-header">
			<div class="row align-items-end">
				<div class="col-lg-8">
					<div class="page-header-title">
						<div class="d-inline">
							<h4>Create Blog</h4>
							<span>Create blog. </span>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="page-header-breadcrumb">
						<ul class="breadcrumb-title">
							<li class="breadcrumb-item">
								<a href="index-1.htm"> <i class="feather icon-home"></i> </a>
							</li>
							<li class="breadcrumb-item"><a href="#!">Create Blog</a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Page-header end -->
		<div class="page-body">
			<div class="container">
				<div class="row">
					<div class="col-sm-10 ml-auto mr-auto">
						
						<div class="auth-box card">
							<div class="card-block">
								<div class="row">
									<div class="col-md-12">
										<h3 class="text-center ">Create blog</h3>

                                    <!-- Success Message -->
                                    <?php if (isset($_SESSION['successMsg'])) {
                                    ?>
                                    <div class="alert alert-success background-success mb-0">
                                    <button type="button" class="close m-0" data-dismiss="alert" aria-label="Close">
                                    <i class="icofont icofont-close-line-circled text-white"></i>
                                    </button>
                                    <strong>Success!</strong> <?php echo $_SESSION['successMsg'] ;?>
                                    </div>
                                    <?php
                                    unset($_SESSION['successMsg']);
                                    } ?>

                                    <!-- Error Message -->
                                    <?php if (isset($_SESSION['errorMsg'])) {
                                    ?>
                                    <div class="alert alert-danger background-danger mb-0">
                                    <button type="button" class="close m-0" data-dismiss="alert" aria-label="Close">
                                    <i class="icofont icofont-close-line-circled text-white"></i>
                                    </button>
                                    <strong>Error!</strong> <?php echo $_SESSION['errorMsg'] ;?>
                                    </div>
                                    <?php
                                    unset($_SESSION['errorMsg']);
                                    } ?>


									</div>
								</div>
							</div>
							<div class="card-body">
                                <form class="md-float-material form-material" method="POST" enctype="multipart/form-data">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Title</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="title" id="title">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Content</label>
                                        <div class="col-sm-9">
                                            <textarea id="content" name="content"></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Description</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="description" id="description">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Category</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="category" id="category">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Image</label>
                                        <div class="col-sm-9">
                                            <input type="file" class="form-control" name="image" id="image">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Subtitle</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="subtitle" id="subtitle">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Tags</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="tags" id="tags">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Slug</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="slug" id="slug">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Author</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" name="author" id="author">
                                            <?php foreach ($data as $row) { ?>
                                                <option value="<?php echo $row->id; ?>"><?php echo $row->user_name; ?></option>
                                            <?php } ?>
                                                <!-- Add more options as needed -->
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Curator</label>
                                        <div class="col-sm-9">
                                            <select class="form-control" name="curator" id="curator">
                                                <?php foreach ($data as $row) { ?>
                                                    <option value="<?php echo $row->id; ?>"><?php echo $row->user_name; ?></option>
                                                <?php } ?>
                                                <!-- Add more options as needed -->
                                            </select>
                                        </div>
                                    </div>

                                    <!-- <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Image</label>
                                        <div class="col-sm-9">
                                            <input type="file" class="form-control" name="image" id="image">
                                        </div>
                                    </div> -->
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Meta Description</label>
                                        <div class="col-sm-9">
                                            <input autocomplete="off" type="text" class="form-control" name="metaDescription" id="metaDescription">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-warning btn-md btn-block waves-effect text-center m-b-20" name="create">Create</button>
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

<script>
    $(document).ready(function () {
        // Handle form submission
        $("form").submit(function (event) {
            event.preventDefault(); // Prevent the default form submission

            // Serialize the form data
            // Get CKEditor content
            var content = CKEDITOR.instances.content.getData();
            // Add the content to the form data
            var formData = new FormData(this);
            formData.append("content", content);
            // // Get the selected file
            // var imageFile = $("#image")[0].files[0];
            // // Add the file to the form data
            // formData.append("image", imageFile);
            // Get the selected image file
            var imageFile = $("#image")[0].files[0];
            formData.append("image", imageFile);

            $.ajax({
                type: "POST",
                url: "./ajax/ajaxCreateBlog2.php", // Replace with your server-side script URL
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                    // Handle the response from the server here
                    if (response == "success") {
                        // Clear the form
                        $('form')[0].reset();
                        // Clear CKEditor content
                        CKEDITOR.instances.content.setData('');
                        // Display the success message
                        $('#successMessageDiv').html('<div class="alert alert-success">Blog post created successfully.</div>');
                    } else {
                        // Handle other responses, such as validation errors
                        $('#successMessageDiv').html('<div class="alert alert-danger">Update failed. Please check your input.</div>');
                    }
                    // console.log(response);
                },
                error: function (xhr, status, error) {
                    // Handle errors here
                    console.error("AJAX Error: " + status + " - " + error);
                }
            });
        });
    });

</script>
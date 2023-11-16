<?php 
include 'header.php';
require_once('./core/config.php');
require_once('./helper/BlogHelper.php');

$db = getDB();
$response = BlogHelper::getBlogPostData($db);
?>

<style>
  .bg-c-black {
    font-weight: 900;
    background: linear-gradient(to right, #ff877c, #fe9365);
    color: black!important;
  }
  .text-white {
    font-weight: 600;
    color: black!important;
  }
</style>

<div class="main-body">
  <div class="page-wrapper">
    <div class="page-body">
      <div class="row">
        <div class="col-xl-12">
          <?php if (isset($_SESSION['successMsg'])) : ?>
            <div class="alert alert-success background-success">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <i class="icofont icofont-close-line-circled text-white"></i>
              </button>
              <strong>Success!</strong> <?php echo $_SESSION['successMsg']; ?>
            </div>
            <?php unset($_SESSION['successMsg']); ?>
          <?php endif; ?>

          <?php if (isset($_SESSION['reject'])) : ?>
            <div class="alert alert-danger background-danger">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <i class="icofont icofont-close-line-circled text-white"></i>
              </button>
              <strong>Rejected!</strong> <?php echo $_SESSION['reject']; ?>
            </div>
            <?php unset($_SESSION['reject']); ?>
          <?php endif; ?>
        </div>
      </div>
      
      <div class="page-header">
        <div class="row align-items-end">
          <div class="col-lg-8">
            <div class="page-header-title">
              <div class="d-inline">
                <h4>Blog Post Table</h4>
                <span>Summary of all Blog Posts</span>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="page-header-breadcrumb">
              <ul class="breadcrumb-title">
                <li class="breadcrumb-item">
                  <a href="index.php"> <i class="feather icon-home"></i> </a>
                </li>
                <li class="breadcrumb-item"><a href="#!">Blog Posts</a> </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="page-body">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-block">
                <div class="dt-responsive table-responsive">
                  <table id="blog-post-table" class="table table-striped table-bordered nowrap">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Content</th>
                        <th>Category</th>
                        <th>Subcategory</th>
                        <th>Tags</th>
                        <th>URL</th>
                        <th>Approved</th>
                        <th>MetaDescription</th>
                        <th>Publication Date</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Content</th>
                        <th>Category</th>
                        <th>Subcategory</th>
                        <th>Tags</th>
                        <th>URL</th>
                        <th>Approved</th>
                        <th>MetaDescription</th>
                        <th>Publication Date</th>
                        <th>Action</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      <?php
                      foreach ($response as $data) {
                      ?>
                        <tr id="blog-row-<?php echo $data['PostID']; ?>">
                          <td><?php echo $data['PostID']; ?></td>
                          <td><?php echo $data['Title']; ?></td>
                          <td><?php echo $data['Content']; ?></td>
                          <td><?php echo $data['Category']; ?></td>
                          <td><?php echo $data['Subcategory']; ?></td>
                          <td><?php echo $data['Tags']; ?></td>
                          <td><?php echo $data['URL']; ?></td>
                          <td><?php echo $data['Approved']; ?></td>
                          <td><?php echo $data['MetaDescription']; ?></td>
                          <td><?php echo $data['PublicationDate']; ?></td>
                          <td>
                            <a href="update-blog.php?id=<?php echo $data['PostID']; ?>" class="btn btn-outline-info btn-sm">Edit Post</a>
                            <button class="btn btn-outline-danger btn-sm" onclick="deleteBlog(<?php echo $data['PostID']; ?>)">Delete</button>

                          </td>
                        </tr>
                      <?php
                      }
                      ?>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
  function deleteBlog(blogID) {
    if (confirm("Are you sure you want to delete this blog post?")) {
        // Make an AJAX request to delete the blog post
        $.ajax({
            type: "POST",
            url: "./ajax/ajaxDeleteBlog.php", // Replace with the actual URL for your delete script
            data: { blogID: blogID },
            success: function (response) {
                if (response === "success") {
                    console.log("Blog post with ID " + blogID + " has been deleted.");
                    // Remove the row from the table
                    $("#blog-row-" + blogID).remove();
                } else {
                  alert("Failed to delete the blog post.");
                }
            },
            error: function (xhr, status, error) {
                console.error("AJAX Error: " + status + " - " + error);
            }
        });
    }
}

</script>
<?php include 'footer.php'; ?>

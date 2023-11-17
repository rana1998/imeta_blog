<?php

class BlogHelper {
    
    public function createBlog($db, $title, $content, $authorID, $publicationDate, $category, $tags, $url, $metaDescription, $imageURL, $subtitle, $curatorID) {
        try {
            // Prepare the SQL query to insert a new blog post with an image URL
            $sql = "INSERT INTO BlogPost (Title, Content, AuthorID, CuratorID,  PublicationDate, Category, Subtitle,  Tags, URL, MetaDescription, ImageURL)
                    VALUES (:title, :content, :authorID, :curatorID, :publicationDate, :category, :subtitle, :tags, :url, :metaDescription, :imageURL)";
    
            $stmt = $db->prepare($sql);
    
            // Bind parameters
            $stmt->bindParam(":title", $title, PDO::PARAM_STR);
            $stmt->bindParam(":content", $content, PDO::PARAM_STR);
            $stmt->bindParam(":authorID", $authorID, PDO::PARAM_INT);
            $stmt->bindParam(":curatorID", $curatorID, PDO::PARAM_INT);
            $stmt->bindParam(":publicationDate", $publicationDate, PDO::PARAM_STR);
            $stmt->bindParam(":category", $category, PDO::PARAM_STR);
            $stmt->bindParam(":subtitle", $subtitle, PDO::PARAM_STR);
            $stmt->bindParam(":tags", $tags, PDO::PARAM_STR);
            $stmt->bindParam(":url", $url, PDO::PARAM_STR);
            $stmt->bindParam(":metaDescription", $metaDescription, PDO::PARAM_STR);
            $stmt->bindParam(":imageURL", $imageURL, PDO::PARAM_STR);

    
            // Execute the query to insert the new blog post
            $stmt->execute();
    
            // Close the database connection (optional - depends on your use case)
            // $db = null;
    
            return "success";
        } catch (PDOException $e) {
            return "Error: " . $e->getMessage();
        }
    }

    
    public function updateBlog($db, $blogID, $title, $content, $authorID, $lastUpdated, $category, $subcategory, $tags, $url, $metaDescription) {
        try {
            // Prepare the SQL query to update an existing blog post
            $sql = "UPDATE BlogPost 
                    SET Title = :title, Content = :content, AuthorID = :authorID, 
                        LastUpdated = :lastUpdated, Category = :category, Subcategory = :subcategory, 
                        Tags = :tags, URL = :url, MetaDescription = :metaDescription
                    WHERE PostID = :blogID";
            
            $stmt = $db->prepare($sql);
    
            // Bind parameters
            $stmt->bindParam(":blogID", $blogID, PDO::PARAM_INT);
            $stmt->bindParam(":title", $title, PDO::PARAM_STR);
            $stmt->bindParam(":content", $content, PDO::PARAM_STR);
            $stmt->bindParam(":authorID", $authorID, PDO::PARAM_INT);
            $stmt->bindParam(":lastUpdated", $lastUpdated, PDO::PARAM_STR);
            $stmt->bindParam(":category", $category, PDO::PARAM_STR);
            $stmt->bindParam(":subcategory", $subcategory, PDO::PARAM_STR);
            $stmt->bindParam(":tags", $tags, PDO::PARAM_STR);
            $stmt->bindParam(":url", $url, PDO::PARAM_STR);
            $stmt->bindParam(":metaDescription", $metaDescription, PDO::PARAM_STR);
    
            // Execute the query to update the blog post
            $stmt->execute();
    
            return "success";
        } catch (PDOException $e) {
            return "Error: " . $e->getMessage();
        }
    }
    
    public function deleteBlog($db, $blogID) {
        try {
            // Prepare the SQL query to delete the blog post by its ID
            $sql = "DELETE FROM BlogPost WHERE PostID = :blogID";
            $stmt = $db->prepare($sql);
    
            // Bind the blogID parameter
            $stmt->bindParam(':blogID', $blogID, PDO::PARAM_INT);
    
            // Execute the query
            $stmt->execute();
    
            // Check if any rows were affected
            if ($stmt->rowCount() > 0) {
                return true; // Deletion was successful
            } else {
                return false; // No rows were deleted (blog post not found)
            }
        } catch (PDOException $e) {
            return false; // An error occurred during the deletion
        }
    }
    

    public static function getBlogPostData($db) {
        try {
            // SQL query to retrieve blog post data, assuming you have a table named blog_posts
            $sql = "SELECT 	* FROM BlogPost ORDER BY PostID DESC";
    
            // Prepare the statement
            $stmt = $db->prepare($sql);
            // Execute the query
            $stmt->execute();
            $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
            // Close the database connection
            $db = null;
            return $res;
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }
    
    
    
}
?>
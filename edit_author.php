<?php

	include "connection.php";
    include "admin_navbar.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css?v=<?php echo time(); ?>">
</head>
<body>
    <div class="edit-profile-container">
        <?php
			$id=$_GET['ed'];
			$q= "SELECT * FROM authors where authorid=$id";
			$res=mysqli_query($db,$q) or die(mysqli_error());
			
			while($row=mysqli_fetch_assoc($res))
			{
				$authorid=$row['authorid'];
				$authorname=$row['authorname'];
			}		
	    ?>
        <div class="form">
            <div class="form-container">
                <div class="form-btn">
                    <span onclick="login()" style="width: 100%;">Edit Author Info</span>
                    <hr id="indicator" class="add-author">
                </div>
                <form action="" id="loginform" method="post" enctype="multipart/form-data">
                    <div class="label">
                        <label for="studentid">Author ID : </label>
                        <b style="font-size: 15px;">
                        <?php
			                echo $authorid;
			            ?>
                    </b><br>
                    </div>
                    <div class="label">
                        <label for="authorname">Author Name : </label>
                    </div>
                    <input type="text"  name="authorname" value="<?php echo $authorname; ?>">
                    <button type="submit" class="btn" name="submit">Update</button>
                </form>
            </div>
        </div>
    </div>
    <?php
        if(isset($_POST['submit']))
        {
            $authorname=$_POST['authorname'];

            $q1="UPDATE authors SET authorname='$authorname' where authorid=".$id.";";
            if(mysqli_query($db,$q1))
            {
                ?>
                <script type="text/javascript">
                    alert("Author updated successfully.");
                    window.location="manage_authors.php";
                </script>
                <?php
            }
        }

	?>
    
</body>
</html>
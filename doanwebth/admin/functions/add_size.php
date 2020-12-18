<?php require_once("includes/connection.php");
      if(isset($_POST["btnThem"]))
      {
      	$loaiSize = $_POST["loaiSize"];
      	$maSize = $_POST["maSize"];
      
      	
      	if( $maSize=="" || $loaiSize=="" )
      	{
      		echo "Vui lòng điền đầy đủ thông tin";
      	}
      	else
      	{
      		$sql = "INSERT INTO size(maSize,loaiSize) VALUES ('$maSize','$loaiSize')";
      		$query = mysqli_query($con, $sql);
      		echo '<script>alert("Thêm thành công");</script>';
      	}
      }
 ?>
<br/>
	<form method="POST" action="index.php?them=add_size">
             Ma size:
             <input type="text" name="maSize"/>
            <br/> <br/>
		Tên size:
		 <input type="text" name="loaiSize"/>
		<br/> <br/>
           
		
		 <button  type="submit" name="btnThem">Them</button>
	    
	</form>

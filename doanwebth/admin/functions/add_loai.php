<?php require_once("includes/connection.php");
      if(isset($_POST["btnThem"]))
      {
      	$tenLoai = $_POST["tenLoai"];
      	$maLoai = $_POST["maLoai"];
      
      	
      	if( $maLoai=="" || $tenLoai=="" )
      	{
      		echo "Vui lòng điền đầy đủ thông tin";
      	}
      	else
      	{
      		$sql = "INSERT INTO loaisanpham(maLoai, tenLoai) values ('$maLoai','$tenLoai')";
      		$query = mysqli_query($con, $sql);
      		echo '<script>alert("Thêm thành công");</script>';
      	}
      }
 ?>
<br/>
	<form method="POSt" action="index.php?them=add_loai">
             ma loai:
             <input type="text" name="maLoai"/>
            <br/> <br/>
		Tên loai:
		 <input type="text" name="tenLoai"/>
		<br/> <br/>
           
		
		 <button  type="submit" name="btnThem">Them</button>
	    
	</form>

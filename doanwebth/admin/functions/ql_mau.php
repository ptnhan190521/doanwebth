<h3>Quản lý màu</h3>
<hr/>
<div class="row">
	<div class="col-12">
		<?php
			$sql1 = "select * from mau";
			$query1 = mysqli_query($con, $sql1);
			if(isset($_GET['id_delete']))
			{
				$sql = "delete from mau where maMau ='$_GET[id_delete]'";
				$query = mysqli_query($con, $sql);
				?>
				<script>
				 alert("Xóa thành công");
					window.location="index.php?quanly=ql_mau";
				</script>
				<?php 
			}
		 ?>
		 <table border="1" style="text-align: center;width: 90%; margin-left:5%">
		 	<tr>
		 		<td>Mã màu</td>
		 		<td>Tên màu</td>
		 		<td></td>
		 	</tr>
		 	<?php
		 		while($data = mysqli_fetch_array($query1))
		 		{
		 			echo '<tr>
		 				<td>'.$data["maMau"].'</td>
		 				<td>'.$data["loaiMau"].'</td>
		 				<td><a href="index.php?sua=edit_mau&id='.$data["maMau"].'">Edit</a> | <a href="index.php?quanly=ql_mau&id_delete='.$data["maMau"].'">Delete</a> </td>
		 			
		 			</tr>';
		 		} 
		 	 ?>
		 	
		 </table>
		 <br/><br/>
		 <a href="index.php?them=add_mau"><button class="btnThem">THÊM MÀU</button></a>
	</div>
</div>
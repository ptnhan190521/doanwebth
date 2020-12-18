<h3>Quản lý khách hàng</h3>
<hr/>
<div class="row">
	<div class="col-12">

		<?php
			$sql = "select * from khachhang";
			$query = mysqli_query($con, $sql);
			if(isset($_GET['id_delete']))
			{
				$sql = "delete from khachhang where maKhachHang =".$_GET['id_delete'];
				$query = mysqli_query($con, $sql);
				
				?>
				<script>
				 alert("Xóa thành công");
					window.location="index.php?quanly=ql_khachhang";
				</script>
				<?php 
			}
		 ?>
		 <table border="1" style="text-align: center;width: 90%; margin-left:5%">
		 	<tr>
		 		<td>maKhachHang</td>
		 		<td>tenKhachHang</td>
		 		<td>Email</td>
		 		<td>Giới tính</td>
		 		<td>Ngày Sinh</td>
		 		<td>Số Điện Thoại</td>
		 		<td>Mật Khẩu</td>
		 		<td>Địa chỉ</td>
		 		<td></td>
		 	</tr>
		 	<?php
		 		while($data = mysqli_fetch_array($query))
		 		{
		 			echo '<tr>
		 				<td>'.$data["maKhachHang"].'</td>
		 				<td>'.$data["tenKhachHang"].'</td>
		 				<td>'.$data["email"].'</td>
		 				<td>'.$data["gioiTinh"].'</td>
		 				<td>'.$data["ngaySinh"].'</td>
		 				<td>'.$data["soDienThoai"].'</td>
		 				<td>'.$data["matKhau"].'</td>
		 				<td>'.$data["diaChi"].'</td>
		 				<td><a href="index.php?sua=edit_khachhang&id='.$data["maKhachHang"].'">Edit</a> | <a href="index.php?quanly=ql_khachhang&id_delete='.$data["maKhachHang"].'">Delete</a> </td>
		 			</tr>';
		 		} 
		 	 ?>
		 	
		 </table>
		 <br/><br/>
		 <a href="index.php?them=add_khachhang"><button class="btnThem">Them khach hang</button></a>
	</div>
</div>
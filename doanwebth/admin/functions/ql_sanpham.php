<h3>Quản lý sản phẩm</h3>
<hr/>
<div class="row">
	<div class="col-12">
		<?php
			$sql1 = "select * from sanpham";
			$query1 = mysqli_query($con, $sql1);
			
			
			if(isset($_GET['id_delete']))
			{
				$sql = "delete from sanpham where maSanPham ='$_GET[id_delete]'";
				$query = mysqli_query($con, $sql);
				?>
				<script>
				    alert("Xóa thành công");
					window.location="index.php?quanly=ql_sanpham";
				</script>
				<?php 
			}
		 ?>
		 <table border="1" style="text-align: center;width: 90%; margin-left:5%">
		 	<tr>
		 		<td>Mã Sản Phẩm</td>
		 		<td>Tên Sản Phẩm</td>
		 		<td>Số Lượng</td>
		 		<td>Mã Loại</td>
		 		<td>Giảm Giá</td>
		 		<td>Mô Tả</td>
		 		<td>Hinh</td>
		 		<td>Giá</td>
		 		<td>Mã Size</td>
		 		<td>Mã Màu</td>
		 		
		 		
		 		<td></td>
		 	</tr>
		 	<?php
		 		while($data = mysqli_fetch_array($query1))
		 		{
		 			echo '<tr>
		 		<td>'.$data["maSanPham"].'</td>
		 		<td>'.$data["tenSanPham"].'</td>
		 		<td>'.$data["soLuong"].'</td>
		 		<td>'.$data["maLoai"].'</td>
		 		<td>'.$data["giamGia"].'</td>
		 		<td>'.$data["moTa"].'</td>
		 		<td><img src="../images/'.$data["hinh"].'" width="100" height="100"/></td>
		 		<td>'.$data["gia"].'</td>
		 		<td>'.$data["maSize"].'</td>
		 		<td>'.$data["maMau"].'</td>
		 				<td><a href="index.php?sua=edit_sanpham&id='.$data["maSanPham"].'">Edit</a> | <a href="index.php?quanly=ql_sanpham&id_delete='.$data["maSanPham"].'">Delete</a> </td>
		 			
		 			</tr>';
		 		}
		 		

		 	 ?>
		 	
		 </table>
		  <br/><br/>
		 <a href="index.php?them=add_sanpham"><button class="btnThem">Them san pham</button></a>
	</div>
</div>
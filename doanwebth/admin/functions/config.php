<?php
	if(isset($_GET['quanly']))
	{
		$row = $_GET['quanly'];
	} 
	else { $row = ""; }
	if($row == "ql_khachhang")
	{
		include ('ql_khachhang.php');
	}
	else if( $row == "ql_sanpham" )
	{
		include ('ql_sanpham.php');
	}
	else if( $row == "ql_nhanvien" )
	{
		include ('ql_nhanvien.php');
	}
	else if( $row == "ql_loai" )
	{
		include ('ql_loai.php');
	}
	else if( $row == "ql_mau" )
	{
		include ('ql_mau.php');
	}
	else if( $row == "ql_size" )
	{
		include ('ql_size.php');
	}
	

	if(isset($_GET['them']))
	{
		$row2 = $_GET['them'];
	} 
	else { $row2 = ""; }
	if($row2 == "add_nhanvien")
		{ include ("add_nhanvien.php");}
	else if($row2 == "add_khachhang")
		{ include ("add_khachhang.php");}
	else if($row2 == "add_sanpham")
		{ include ("add_sanpham.php");}
	else if($row2 == "add_loai")
		{ include ("add_loai.php");}
	else if($row2 == "add_mau")
		{ include ("add_mau.php");}
	else if($row2 == "add_size")
		{ include ("add_size.php");}

	if(isset($_GET['sua']))
	{
		$row3 = $_GET['sua'];
	} 
	else { $row3 = ""; }
	if($row3 == "edit_nhanvien")
		{ include ("edit_nhanvien.php");}
	else if($row3 == "edit_khachhang")
		{ include ("edit_khachhang.php");}
	else if($row3 == "edit_sanpham")
		{ include ("edit_sanpham.php");}
	else if($row3 == "edit_loai")
		{ include ("edit_loai.php");}
	else if($row3 == "edit_mau")
		{ include ("edit_mau.php");}
	else if($row3 == "edit_size")
		{ include ("edit_size.php");}



?>
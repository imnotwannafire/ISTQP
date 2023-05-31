
<?php
	$strSQL="SELECT * FROM loai_hoa";
	$loai_hoa=mysql_query($strSQL,$ung);
	
	//phan hien thi trang them va sua
	if(isset($_POST['chentrang']))
	{
		$chucnang=$_POST['chentrang'];
		if($chucnang=='themloaihoa')
			include_once('loaihoa/themloaihoa.php');
		if($chucnang=='sualoaihoa')
			include_once('loaihoa/sualoaihoa.php');
	}
?>

<table width="750" cellpadding="2" cellspacing="0" border="0" class="admintable" style="border-right:#E9E9E9 1px solid; border-top:#E9E9E9 1px solid;" align="right">
	<tr>
		<th width="40" align="center" style="border-left:#66A111 solid 1px;">
			STT
		</th>
		<th width="90" align="center">
			Mã Loại Hoa
		</th>
		<th width="420">
			Tên Loại Hoa
		</th>
		<th width="200" colspan="2" style="background:#FFFFFF;" align="center">
			<a href="#" onclick="goithem_sua('themloaihoa')">Thêm Loại Hoa Mới</a>
		</th>
	</tr>
	<?php $i=0; ?>
		<?php while($row=mysql_fetch_array($loai_hoa)) { $i+=1; ?>
	<tr>
	<?php 
		//xu ly mau cho dong
			if($i%2==0) 
				$mausac="style='background:#F8F8F8;'";
			 else 
			 	$mausac="style='background:#FFFFFF;'";
	?> 
		<td <?php echo $mausac; ?> >
			<?php echo $i; ?>
		</td>
		<td <?php echo $mausac; ?> >
			<?php echo $row['ma_loai']; ?>
		</td>
		<td <?php echo $mausac; ?> >
			<a href="#" onclick="goithem_sua('sualoaihoa',<?php echo $row['ma_loai']; ?>)"><?php echo $row['ten_loai']; ?></a>
		</td>
		<td width="100" align="center" <?php echo $mausac; ?>>
			<a href="#" onclick="goithem_sua('sualoaihoa',<?php echo $row['ma_loai']; ?>)">Sửa</a>
		</td>
		<td width="100" align="center" <?php echo $mausac; ?>>
			<a href="#" onclick="xoa_loaihoa(<?php echo $row['ma_loai']; ?>)">Xóa</a>
		</td>
	</tr>
		<?php } ?>
	
</table>

<form action="" method="post" name="loaihoa">
	<input name="maloaihoa" type="hidden" value="" />
	<input name="trangchuyen" type="hidden" value="xlloaihoa" />
	<input name="goihamxuly" type="hidden" value="xoaloaihang" />
</form>
<form action="" method="post" name="themvssua">
	<input name="chentrang" type="hidden" value="" />
	<input name="maloaihoa" type="hidden" value="" />
	<input name="trangchuyen" type="hidden" value="quanlyloaihoa" />
</form>
<script>
	function xoa_loaihoa(maloaihoa)
	{
		loaihoa.maloaihoa.value=maloaihoa
		if(confirm('bạn có muốn xóa mục này không..!'))
		loaihoa.submit()
	}
	function goithem_sua(trangthem,maloahoa)
	{
		themvssua.chentrang.value=trangthem
		themvssua.maloaihoa.value=maloahoa
		themvssua.submit()
	}

</script>

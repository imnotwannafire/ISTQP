<?php
	
	$strSQL="SELECT * FROM loai_hoa;" ;
	$loaihoa=mysql_query($strSQL,$ung);
?>
<table width="147" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td style="height:25px; background:url(images/trang.jpg) repeat-x;" align="left" class="ht" colspan="3">
				&nbsp;&nbsp;<img src="images/no.gif" border="0" width="16" height="16" align="bottom"/>
				&nbsp;&nbsp;Danh Mục
			</td>
		</tr>
		<tr>
			<td>
		<div class="menuleft">
			<?php while($row=mysql_fetch_array($loaihoa)) { ?> 
				<a href="#" onclick="loaihoa_onsubmit('<?php echo $row['ma_loai']; ?>')"><?php echo $row['ten_loai']; ?></a>
			<?php } ?>
		</div>
			</td>
		</tr>
</table>
	<form action="" method="post" name="loaihoa">
	<input name="MaLH" type="hidden" value="" />
	<input name="gia" type="hidden" value="" />
	<input name="view" type="hidden" value="sanpham" />
	</form>
	<script>
		function loaihoa_onsubmit(thamso)
		{
		loaihoa.MaLH.value=thamso
		loaihoa.view.value="sanpham"
		loaihoa.submit()
		}
		
		function timgia_onsubmit(gia)
		{
		loaihoa.gia.value=gia
		loaihoa.view.value="sanpham"
		loaihoa.submit()	
		}
	</script>
<table width="147" border="0" cellpadding="0" cellspacing="0" style="padding-top:5px;">
		<tr>
			<td style="height:25px; background:url(images/trang.jpg) repeat-x;" align="left" class="ht" colspan="3">
				&nbsp;&nbsp;<img src="images/no.gif" border="0" width="16" height="16" align="bottom"/>
				&nbsp;&nbsp;Giá Sản Phẩm
			</td>
		</tr>
		<tr>
			<td>
		<div class="menuleft">
			<a href="#" onclick="timgia_onsubmit('mot')">Dưới 100.000đ</a>
			<a href="#" onclick="timgia_onsubmit('hai')">100.000đ - 200.000đ</a>
			<a href="#" onclick="timgia_onsubmit('ba')">200.000đ - 300.000đ</a>
			<a href="#" onclick="timgia_onsubmit('bon')">300.000đ - 400.000đ</a>
			<a href="#" onclick="timgia_onsubmit('nam')">400.000đ - 500.000đ</a>
			<a href="#" onclick="timgia_onsubmit('sau')">500.000đ - 600.000đ</a>
			<a href="#" onclick="timgia_onsubmit('bay')">600.000đ - 700.000đ</a>
			<a href="#" onclick="timgia_onsubmit('tam')">700.000đ - 800.000đ</a>
			<a href="#" onclick="timgia_onsubmit('chin')">800.000đ - 900.000đ</a>
			<a href="#" onclick="timgia_onsubmit('muoi')">Trên 900.000đ</a>
		</div>
			</td>
		</tr>
</table>
<?php include('include/thongke.php'); ?>
<table width="147" border="0" cellpadding="0" cellspacing="0" style="padding-top:5px;">
		<tr>
			<td style="height:25px; background:url(images/trang.jpg) repeat-x;" align="left" class="ht" colspan="3">
				&nbsp;&nbsp;<img src="images/no.gif" border="0" width="16" height="16" align="bottom"/>
				&nbsp;&nbsp;Thống Kê
			</td>
		</tr>
		<tr>
			<td style="margin-top:4px; width:147px; padding:10px; background:#66A111; color:#FFFFCC;">
		
			Tổng Số Loại Hoa: <?php echo $soloaihoa; ?>
			<br />
			Tổng Số Hoa: <?php echo $sohoa; ?>	
			<br />
			Số Khách Hàng: <?php echo $khachhang; ?>
	
			</td>
		</tr>
		<tr>
			<td height="150" valign="middle">
				<img src="images/dienhoa.jpg" border="0" width="147" height="134" />
			</td>
		</tr>
</table>

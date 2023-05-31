<?php
	$ung=mysql_connect("localhost","root","") or die('Khong The Ket Noi Voi May Chu');
	$strSQL=mysql_select_db('hoa',$ung);
	mysql_query("SET NAMES 'utf8'");
?>
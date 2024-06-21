<?php
$conn = mysqli_connect('localhost', 'root', '', 'motor');

if(!$conn){
	die("Koneksi gagal" . mysqli_connect_error());
}
?>
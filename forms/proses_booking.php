<?php
include '../connect.php';

if (isset($_POST['booking'])) {
    $nama = $_POST['nama_pembooking'];
    $no_hp = $_POST['nohp_pembooking'];
    $tgl_booking = $_POST['tanggal_pembooking'];
    $wktu_book = $_POST['waktu_pembooking'];
    $jml_orang = $_POST['jumlah_orang_pembooking'];
    $pesan_book = $_POST['pesan_pembooking'];

    $query = "INSERT INTO tbl_booking ( jumlah_orang_pembooking, no_hppembooking, tanggal_pembooking, nama_pembooking, waktu_pembooking, pesan_pembooking) VALUES ( '$jml_orang', '$no_hp', '$tgl_booking', '$nama', '$wktu_book', '$pesan_book')";

    $insert = mysqli_query($conn, $query);
    if ($insert) {
        echo 'Booking successful!';
        header('Location:../index.php');
        exit;
    } else {
        echo 'Error: ' . mysqli_error($conn);
    }
}

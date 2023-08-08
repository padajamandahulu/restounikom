<?php
include '../connect.php';

if (isset($_POST['contact'])) {
    $nama = $_POST['nama_contact'];
    $no_hp = $_POST['nohp_contact'];
    $sbjct = $_POST['subject_contact'];
    $msg = $_POST['message_contact'];

    $query = "INSERT INTO tbl_contact (nohp_contact, subject_contact, message_contact, nama_contact)  VALUES ('$no_hp', '$sbjct', '$msg', '$nama')";

    $insert = mysqli_query($conn, $query);
    if ($insert) {
        header('Location:../index.php');
    } else {
        echo 'Error: ' . mysqli_error($conn);
    }
}

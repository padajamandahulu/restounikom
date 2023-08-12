<?php
include 'connect.php';

if (isset($_POST['submit'])) {
    $nama_pelanggan = mysqli_real_escape_string($conn, $_POST['nama_pelanggan']); // Melindungi dari SQL injection
    $no_meja = mysqli_real_escape_string($conn, $_POST['no_meja']); // Melindungi dari SQL injection

    // Query menggunakan prepared statement
    $query = "UPDATE `tbl_meja` SET `status` = 'ada', `nama_pelanggan` = '$nama_pelanggan' WHERE `tbl_meja`.`no_meja` = $no_meja";
    $stmt = mysqli_prepare($conn, $query);

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "si", $nama_pelanggan, $no_meja);
        if (mysqli_stmt_execute($stmt)) {
            $_SESSION["no_meja"] = $row["no_meja"];
            header("location:pp.php");
            exit();
        } else {
            // Penanganan kesalahan jika query gagal dieksekusi
            echo "Error: " . mysqli_error($conn);
        }

        mysqli_stmt_close($stmt);
    } else {
        // Penanganan kesalahan jika prepared statement gagal dibuat
        echo "Error: " . mysqli_error($conn);
    }
}

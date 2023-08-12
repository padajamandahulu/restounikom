<?php
include 'connect.php';

if (isset($_POST['submit'])) {
    $id_menu = $_POST['id_menu'];
    $jumlah_pesanan = $_POST['jumlah_pesanan'];
    $no_meja = $_POST['no_meja'];
    // Lakukan validasi data di sini jika diperlukan

    // Query untuk memasukkan pesanan baru ke dalam tabel pesanan
    $query = "INSERT INTO tbl_pesanan (id_menu, jumlah_pesanan, no_meja, status) VALUES ('$id_menu','$jumlah_pesanan','$no_meja','baru')";
    $stmt = mysqli_prepare($conn, $query);

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "iii", $id_menu, $jumlah_pesanan, $no_meja);
        if (mysqli_stmt_execute($stmt)) {
            $_SESSION["no_meja"] = $row["no_meja"];
            header("location:pemesanan.php");
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

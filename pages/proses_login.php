<?php
session_start();

include "../connect.php";

$username = $_POST["username"];
$p = $_POST["password"];

$sql = "select * from user_log where username='" . $username . "' and password='" . $p . "' limit 1";
$hasil = mysqli_query($conn, $sql);
$jumlah = mysqli_num_rows($hasil);


if ($jumlah > 0) {
    $row = mysqli_fetch_assoc($hasil);
    if ($row['role'] == "koki") {
        $_SESSION["last_login_time"] = time();
        $_SESSION["username"] = $row["username"];
        $_SESSION["password"] = $row["password"];
        header("Location:chef/index.php");
    } else if ($row['role'] == "kasir") {
        $_SESSION["last_login_time"] = time();
        $_SESSION["username"] = $row["username"];
        $_SESSION["password"] = $row["password"];
        header("Location:kasir/index.php");
    } else if ($row['role'] == "pelayan") {
        $_SESSION["last_login_time"] = time();
        $_SESSION["username"] = $row["username"];
        $_SESSION["password"] = $row["password"];
        header("Location:pelayan/index.php");
    } else {
        echo "Username atau password salah <br><a href='login.php'>Kembali</a>";
    }
} else {

    echo "Username atau password salah <br><a href='login.php'>Kembali</a>";
}

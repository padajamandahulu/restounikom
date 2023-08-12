<? include "koneksi.php";
if (!isset($_SESSION['no_meja'])) {
    die("<b>Oops!</b> Access Failed.
        <p>Sistem Logout. Anda harus melakukan Login kembali.</p>
        <button type='button' onclick=location.href='./'>Back</button>");
}

?>

<form action="proses_input_pesanan.php" method="POST">
    <input type="hidden" name="id_menu" value="<?= $de['id_menu']; ?>">
    <input type="number" name="jumlah_pesanan" placeholder="Jumlah Pesanan" required>
    <?php
    $tampilPeg    = mysqli_query($conn, "SELECT * FROM tbl_meja WHERE no_meja='$_SESSION[no_meja]'");
    $peg    = mysqli_fetch_array($tampilPeg);
    ?>
    <input type="number" required disabled><?= $_SESSION['no_meja']; ?>
    <button type="submit" name="submit">Pesan Sekarang</button>
</form>
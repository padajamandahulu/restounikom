<?php include 'app/header.php'; ?>

<body>

    <main id="main">
        <!-- ======= Menu Section ======= -->
        <section id="menu" class="menu">
            <div class="container" data-aos="fade-up">
                <div class="section-header">
                </div>
                <div class="input-group mb-3">
                    <form action="input_pesanan.php" method="POST">
                        <div class="input-group-prepend">
                            <p>Pilih no Meja</p>
                            <select name="no_meja" style="width:160px;">
                                <?php
                                include "connect.php";
                                //query menampilkan nama unit kerja ke dalam combobox
                                $query    = mysqli_query($conn, "SELECT * FROM tbl_meja where status='kosong'");
                                while ($data = mysqli_fetch_array($query)) {
                                ?>
                                    <option value="<?= $data['no_meja']; ?>"><?php echo $data['no_meja']; ?></option>
                                <?php
                                }
                                ?>
                            </select>
                        </div>
                        <label for=" basic-url">Nama pelanggan</label>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="nama_pelanggan" aria-describedby="basic-addon3">
                        </div>
                        <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
                    </form>
                </div>
        </section><!-- End Menu Section -->
        <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <div id="preloader"></div>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
    </main>
</body>
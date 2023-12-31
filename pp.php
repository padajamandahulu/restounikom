<?php include 'app/header.php'; ?>

<body>

    <main id="main">
        <!-- ======= Menu Section ======= -->
        <section id="menu" class="menu">
            <div class="container" data-aos="fade-up">
                <div class="section-header">
                </div>
                <div class="section-header">
                </div>
                <div class="tab-content" data-aos="fade-up" data-aos-delay="300">
                    <div class="tab-pane fade active show" id="all-menu">
                        <div class="tab-header text-center">
                        </div>
                        <? include 'connect.php';
                        $data = mysqli_query($conn, "select * from tbl_menu order by nama_menu asc"); ?>
                        <form action="proses_input_pesanan.php" method="POST">
                            <div class="row gy-5">
                                <?php
                                include 'connect.php';
                                $no_meja = $_SESSION['no_meja'];
                                $data = mysqli_query($conn, "select * from tbl_menu order by nama_menu asc");
                                while ($de = mysqli_fetch_array($data)) {
                                ?>
                                    <div class="col-lg-4 menu-item">
                                        <a href="assets/img/menu/<?= $de['gambar_menu']; ?>" class="glightbox"><img src="assets/img/menu/<?= $de['gambar_menu']; ?>" class="menu-img img-fluid" alt=""></a>
                                        <h4><?= $de['nama_menu']; ?></h4>
                                        <p class="ingredients">
                                            <?= $de['deskripsi_menu']; ?>
                                        </p>
                                        <p class="price">
                                            <?= $de['harga_menu']; ?>
                                        </p>
                                        <input type="number" name="jumlah_pesanan" placeholder="Jumlah pesan">
                                    </div>
                                <?php } ?>
                                <button type="submit" name="submit" class="btn btn-primary">Pesan sekarang</button>

                            </div>
                        </form>
                    </div><!-- End Starter Menu Content -->
                </div>
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
<?php
include '../../view/header.php';

session_start();
if (!isset($_SESSION['login-p'])) {
    header("Location: ../login.php");
    exit;
} elseif ($_SESSION['id_bagian'] !== '1') {
    header("Location: ../anggota");
}
?>


<!-- create button logout -->
<div class="btn-group" role="group" aria-label="Basic example">
    <a href="../logout.php" class="btn btn-secondary">Logout Admin</a>
</div>



<?php
include '../../view/footer.php';
?>
<?php
include '../../view/header.php';

session_start();
if (!isset($_SESSION['login-a'])) {
    header("Location: ../login.php");
    exit;
} elseif ($_SESSION['id_bagian'] !== '2') {
    header("Location: ../admin");
    exit;
}

?>


<!-- create button logout -->
<div class="btn-group" role="group" aria-label="Basic example">
    <a href="../logout.php" class="btn btn-secondary">Logout Anggota</a>
</div>



<?php
include '../../view/footer.php';
?>
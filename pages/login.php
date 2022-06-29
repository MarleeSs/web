 <?php
    include '../view/header.php';
    session_start();
    require 'include/func.db.php';


    if (isset($_POST['login-p'])) {
        $ueid1 = $_POST['ueid1'];
        $pwd1 = $_POST['pwd1'];
        $result1 = mysqli_query($connect, "SELECT * FROM login_pengurus WHERE uid = '$ueid1' OR email = '$ueid1'");
        $row1 = mysqli_num_rows($result1);


        if (mysqli_num_rows($result1) === 1) {
            $row1 = mysqli_fetch_assoc($result1);

            if ($row1['pwd'] === $pwd1) {
                $_SESSION["login-p"] = true;

                // Set Role_id login 
                $_SESSION["id_bagian"] = $row1['id_bagian'];

                if ($row1['id_bagian'] === '1') {
                    header("Location: ../pages/admin");
                }
                exit;
            }
        }
        $error = true;
        header("Location: ../pages/login.php?error=email&password");
    } elseif (isset($_POST['login-a'])) {
        $ueid2 = $_POST['ueid2'];
        $pwd2 = $_POST['pwd2'];
        $result2 = mysqli_query($connect, "SELECT * FROM login_anggota WHERE uid = '$ueid2' OR email = '$ueid2'");
        $row2 =  mysqli_num_rows($result2);

        if (mysqli_num_rows($result2) === 1) {
            $row2 = mysqli_fetch_assoc($result2);

            if ($row2['pwd'] === $pwd2) {
                $_SESSION["login-a"] = true;

                // Set Role_id login 
                $_SESSION["id_bagian"] = $row2['id_bagian'];

                if ($row2['id_bagian'] === '2') {
                    header("Location: ../pages/anggota");
                }
                exit;
            }
        }
        $error = true;
        header("Location: ../pages/login.php?error=email&password");
        exit();
    }
    ?>




 <div class="nampan1"></div>
 <img src="../source/images/logo-if21d.png" alt="loh kok ilang?" class="logo-login">

 <div class="c-banner-login">
     <h3 class="banner-login">LOGIN IF21D</h3>
 </div>

 <br>
 <br>

 <div class="container" id="container">
     <div class="form-container container-pengurus">

         <form action="#" method="post">
             <h1 class="banner-prs">Masuk Pengurus</h1>

             <div class="icon-usr1">
                 <i class="gg-user"></i>
             </div>
             <?php
                if (isset($_GET['error'])) {
                    if ($_GET['error'] === 'email' || $_GET['password'] === 'password') {
                        header("../pages/login.php");
                        echo '<p class="error-login-p">Username atau Password Salah!</p>';
                    }
                    
                }   
                ?>

             <input type="text" placeholder="Username atau Email" name="ueid1" required />

             <div class="icon-pwd1">
                 <i class="gg-lock"></i>
             </div>

             <input type="password" placeholder="Password" name="pwd1" required />
             <br>
             <button type="submit" name=""><a href="../IF21D">Masuk</a></button>
         </form>

     </div>

     <div class="form-container container-anggota">
         <form action="#" method="post">
             <br>
             <div class="kembali-a"><a href="../dashboard/dashboard.html" class="gg-chevron-double-left"></a></i>
                 <br>
                 <p>Kembali</p>
             </div>
             <h1 class="banner-agt">Masuk Anggota</h1>

             <div class="icon-usr1">
                 <i class="gg-user"></i>
             </div>


             <?php
                if (isset($_GET['error'])) {
                    if ($_GET['error'] === 'email') {
                        echo '<p class="error-login-a">Username atau Password Salah!</p>';
                    }
                }
                ?>

             <input type="text" placeholder="Username atau Email" name="ueid2" required />

             <div class="icon-pwd1">
                 <i class="gg-lock"></i>
             </div>

             <input type="password" placeholder="Password" name="pwd2" required />
             <br>
             <button type="submit" name="login-a">Masuk</button>
         </form>
     </div>
     <div class="slide-container">
         <div class="overlay">
             <div class="overlay-panel overlay-left">
                 <div class="kembali-p"><a href="../dashboard/dashboard.html" class="gg-chevron-double-left"></a></i>
                     <br>
                     <p>Kembali</p>
                 </div>
                 <h1>Anggota Kelas?</h1>
                 <p>"Klik Slide untuk masuk bagian Anggota"</p>
                 <button class="slide" id="masuk-anggota">Slide</button>
             </div>
             <div class="overlay-panel overlay-right">
                 <h1>Pengurus Kelas?</h1>
                 <p>"Klik Slide untuk masuk bagian Pengurus"</p>
                 <button class="slide" id="masuk-pengurus">Slide</button>
             </div>
         </div>
     </div>
 </div>




 <?php include '../view/footer.php'; ?>
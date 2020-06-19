<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title><?=ucwords($this->uri->segment(1))?> &mdash; <?=$setting[
    'sistem']?></title>
  <link rel="icon" type="image/png" sizes="16x16" href="<?=base_url()?>favicon.ico">
  <!-- General CSS Files -->
  <link rel="stylesheet" href="<?=base_url()?>assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/modules/fontawesome/css/all.min.css">
  <!-- CSS Libraries -->
  <link rel="stylesheet" href="<?=base_url()?>assets/modules/bootstrap-social/bootstrap-social.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="<?=base_url()?>assets/css/style.css">
  <link rel="stylesheet" href="<?=base_url()?>assets/css/components.css">
</head>

<body>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
            <div class="login-brand">
              <img src="<?=base_url()?>assets/img/arraymotion.png" alt="logo" width="100" class="shadow-light rounded-circle">
            </div>
            <?php if($msg=$this->session->flashdata('success')):?>
              <div class="alert alert-success alert-has-icon">
                <div class="alert-icon"><i class="far fa-lightbulb"></i></div>
                <div class="alert-body">
                  <div class="alert-title">Perhatian !!</div>
                  <?= ucwords($msg)?>, <a href="<?=site_url()?>">Login</a>
                </div>
              </div>
            <?php endif;?>
            <?php if($msg=$this->session->flashdata('error')):?>
              <div class="alert alert-danger alert-has-icon">
                <div class="alert-icon"><i class="far fa-lightbulb"></i></div>
                <div class="alert-body">
                  <div class="alert-title">Perhatian !!</div>
                  <?= ucwords($msg)?>
                </div>
              </div>
            <?php endif;?>
            <div class="card card-primary">
              <div class="card-header"><h4>Register</h4></div>
              <div class="card-body">
                <form method="POST" action="<?=$setting['url'].'/prosesregistrasi'?>"  class="needs-validation" novalidate="">
                  <div class="form-group">
                    <label for="email">Nama</label>
                    <input  required  type="text" class="form-control" name="nama" tabindex="1"  autofocus value="<?= set_value('nama'); ?>">
                    <div class="invalid-feedback">
                      Isikan nama anda
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="email">Username</label>
                    <input required  type="text" class="form-control" name="username" tabindex="1"  autofocus value="<?= set_value('username'); ?>">
                    <div class="invalid-feedback" value="<?= set_value('username'); ?>">
                      Isikan username anda
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input required type="text" class="form-control" name="email" tabindex="1"  autofocus value="<?= set_value('email'); ?>">
                    <div class="invalid-feedback">
                      Isikan email anda
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="email">Password</label>
                    <input required  type="password" class="form-control" name="password" tabindex="1"  autofocus>
                    <div class="invalid-feedback">
                      Isikan password anda
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input required type="checkbox" name="agree" class="custom-control-input" id="agree">
                      <label class="custom-control-label" for="agree">Saya setuju dengan aturan yang berlaku</label></label>
                      <div class="invalid-feedback">
                        Silahkan di pilih dulu
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                      Daftar
                    </button>
                  </div>
                </form>
              </div>
            </div>
            <div class="mt-5 text-muted text-center">
              Sudah punya akun ? <a href="<?=site_url('Login')?>">Login</a>
            </div>
            <div class="simple-footer">
               <?=FOOTPRINT?>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- General JS Scripts -->
  <script src="<?=base_url()?>assets/modules/jquery.min.js"></script>
  <script src="<?=base_url()?>assets/modules/popper.js"></script>
  <script src="<?=base_url()?>assets/modules/tooltip.js"></script>
  <script src="<?=base_url()?>assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="<?=base_url()?>assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="<?=base_url()?>assets/modules/moment.min.js"></script>
  <script src="<?=base_url()?>assets/js/stisla.js"></script>
  <!-- Template JS File -->
  <script src="<?=base_url()?>assets/js/scripts.js"></script>
  <script src="<?=base_url()?>assets/js/custom.js"></script>
</body>
</html>

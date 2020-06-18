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

            <div class="card card-primary">
              <div class="card-header"><h4>Register</h4></div>

              <div class="card-body">
                <form method="POST">
                  <div class="form-group">
                    <label for="email">Username</label>
                    <input id="username" type="text" class="form-control" name="username" tabindex="1"  autofocus value="<?= set_value('username'); ?>">
                    <div class="invalid-feedback">
                      Please fill in your username
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input id="username" type="text" class="form-control" name="username" tabindex="1"  autofocus value="<?= set_value('username'); ?>">
                    <div class="invalid-feedback">
                      Please fill in your username
                    </div>
                  </div>  
                  <div class="form-group">
                    <label for="email">Password</label>
                    <input id="username" type="text" class="form-control" name="username" tabindex="1"  autofocus value="<?= set_value('username'); ?>">
                    <div class="invalid-feedback">
                      Please fill in your username
                    </div>
                  </div>                                  
                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="agree" class="custom-control-input" id="agree">
                      <label class="custom-control-label" for="agree">I agree with the terms and conditions</label>
                    </div>
                  </div>

                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                      Register
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

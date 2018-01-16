<!doctype html>
<html lang="en">
<head>
    <title><?= $title ?></title>
    
    <link href="<?= base_url("assets/images/cp.ico") ?>" rel="shortcut icon" type="image/x-icon" />
    <link href="<?= base_url("assets/images/cp.ico") ?>" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" href="<?= base_url("assets/js/bootstrap/css/bootstrap.min.css") ?>" />
    <link rel="stylesheet" href="<?= base_url("assets/css/justified-nav.css") ?>" />
    <link rel="stylesheet" href="<?= base_url("assets/css/content.css") ?>" />
    <link rel="stylesheet" href="<?= base_url("assets/css/footer.css") ?>" />
    <link rel="stylesheet" href="<?= base_url("assets/css/" . $css . ".css") ?>" />
    
    <script type="text/javascript" src="<?= base_url("assets/js/bootstrap/js/jquery-slim.min.js") ?>"></script>
    <script type="text/javascript" src="<?= base_url("assets/js/bootstrap/js/popper.min.js") ?>"></script>
    <script type="text/javascript" src="<?= base_url("assets/js/bootstrap/js/bootstrap.min.js") ?>"></script>
    
    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="author" content="Nicholas Ruscillo @ 285 Solutions Inc."
    <meta name="description" value="<?= $description ?>" />
    <meta name="keywords" value="<?= $keywords ?>" />
    <meta name="robots" content="index,follow" />
    <meta name="google-site-verification" content="4sdwhuMzq0wVfhTtI_SgTFSiwIUkJx5nAdR37Io3azQ" />
</head>
<body>
    <div class="container">
        <header class="masthead">
            <div class="row">
                <div class="col-lg-2">
                    <img src="<?= base_url("assets/images/cp_logo.gif") ?>" border="0" class="img-responsive" />
                </div>
                <div class="col-lg-8">
                    <h1 class="text-md-center">Welcome to ClicksPicks!</h1>
                    <h3 class="text-md-center"><?= $subtitle ?></h3>
                </div>
                <div class="col-lg-2">
                    <img src="<?= base_url("assets/images/cp_logo.gif") ?>" border="0" class="img-responsive" />
                </div>
            </div>

            <nav class="navbar navbar-expand-md navbar-light rounded mb-3">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav text-md-center nav-justified w-100">
                        <li class="nav-item active">
                            <a class="nav-link" href="kids">Kids<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="youths">Youths</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="teens">Teens</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="seniors">Seniors</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        
        <main role="main">          
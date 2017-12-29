<!doctype html>
<html lang="en">
<head>
    <title><?= $title ?></title>
    <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="images/favicon.ico" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" href="<?= base_url("assets/css/bootstrap/bootstrap.min.css") ?>" />
    <link rel="stylesheet" href="<?= base_url("assets/css/justified-nav.css") ?>" />
    <link rel="stylesheet" href="<?= base_url("assets/css/content.css") ?>" />
    <link rel="stylesheet" href="<?= base_url("assets/css/footer.css") ?>" />
    <script type="text/javascript" src="<?= base_url("assets/js/bootstrap/jquery-slim.min.js") ?>"></script>
    <script type="text/javascript" src="<?= base_url("assets/js/bootstrap/popper.min.js") ?>"></script>
    <script type="text/javascript" src="<?= base_url("assets/js/bootstrap/bootstrap.min.js") ?>"></script>
    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="author" content="Nicholas Ruscillo @ 285 Solutions Inc."
    <meta name="description" value="<?= $description ?>" />
    <meta name="keywords" value="<?= $keywords ?>" />
    <meta name="robots" content="index,follow" />
    <meta name="google-site-verification" content="4sdwhuMzq0wVfhTtI_SgTFSiwIUkJx5nAdR37Io3azQ" />

    <?php //echo getGoogleAnalytics(); ?>

</head>
<body>
    <div class="container">
        <header class="masthead">
            <h3 class="text-muted">Project name</h3>

            <nav class="navbar navbar-expand-md navbar-light bg-light rounded mb-3">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav text-md-center nav-justified w-100">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Kids<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Youths</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Teens</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        
      <main role="main">
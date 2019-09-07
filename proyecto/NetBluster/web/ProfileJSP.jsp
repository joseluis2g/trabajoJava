<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
﻿<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>NetBluster Perfil</title>
    <!-- BOOTSTRAP STYLE SHEET -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME STYLE SHEET FOR BEAUTIFUL ICONS -->
    <link href="css/font-awesome.css" rel="stylesheet" />
     <!-- CUSTOM STYLE CSS -->
    <style type="text/css">
        .btn-social {
            color: white;
            opacity: 0.8;
        }

        .btn-social:hover {
            color: white;
            opacity: 1;
            text-decoration: none;
        }

        .btn-facebook {
            background-color: #3b5998;
        }

        .btn-twitter {
            background-color: #00aced;
        }

        .btn-linkedin {
            background-color: #0e76a8;
        }

        .btn-google {
            background-color: #c32f10;
        }
    </style>
</head>
<body>
    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Diseño Bootstrap</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav ">
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">COMPRA BOLETA</a></li>
                </ul>
            </div>

        </div>
    </div>
    <!-- NAVBAR CODE END -->


    <div class="container">
        <section style="padding-bottom: 50px; padding-top: 50px;">
            <div class="row">
                <div class="col-md-4">
                    <img src="img/250x250.png" class="img-rounded img-responsive" />
                </div>
                <div class="col-md-8">
                    <div class="form-group col-md-8">
                        <h3>Cambia contraseña</h3>
                        <br />
                        <label>No implementado</label>
                        <input type="password" class="form-control"  disabled>
                        <br>
                        <a href="#" class="btn btn-warning">Cambia contraseña</a>
                        <a href="/NetBluster/logout" class="btn btn-default navbar-btn navbar-right">Desconectarse</a>
                    </div>
                </div>
            </div>
            <!-- ROW END -->


        </section>
        <!-- SECTION END -->
    </div>
    <!-- CONATINER END -->

    <!-- REQUIRED SCRIPTS FILES -->
    <!-- CORE JQUERY FILE -->
    <script src="js/jquery-1.11.1.js"></script>
    <!-- REQUIRED BOOTSTRAP SCRIPTS -->
    <script src="js/bootstrap.js"></script>
</body>

</html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>NetBluster Registro</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!--[if lt IE 9]>
                <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/signup.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="row centered-form">
                <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Registrese en NetBluster <small>Es gratis</small></h3>
                            <br/>
                            <% if ("POST".equalsIgnoreCase(request.getMethod())) {%>
                            <div class="alert alert-danger" role="alert">${error}</div>
                            <%}%>
                        </div>
                        <div class="panel-body">
                            <form role="form" method="POST">
                                
                                <div class="form-group">
                                    <input type="text" name="nombre" id="nombre" class="form-control input-sm" placeholder="Nombre">
                                </div>

                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <input type="password" name="password_confirm" id="password_confirm" class="form-control input-sm" placeholder="Confirmar Password">
                                        </div>
                                    </div>
                                </div>

                                <input type="submit" value="Registrarse" class="btn btn-info btn-block">

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/signup.js"></script>
    </body>
</html>

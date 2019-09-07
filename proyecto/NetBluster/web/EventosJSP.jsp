<%@page import="com.netbluster.beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%> 
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
        <!--
        <section style="padding-bottom: 50px; padding-top: 50px;">
            <div class="row">
                <ul class="list-group">
                    <% ArrayList<Producto> lista = (ArrayList<Producto>)request.getAttribute("productos"); 
                        for(Producto s : lista){ %> 
                    <li class="list-group-item"><%=s.getNombre()%></li>
                    <%}%> 
                </ul>
            </div>
        </section>
        -->
        <section style="padding-bottom: 50px; padding-top: 50px;">
        <select class="browser-default custom-select">
            <option selected>Seleccione una opcion</option>
            <% String[] categorias = {"Musical", "Teatral", "Deportivo"}; 
                for(String evento : categorias){ %> 
            <option value="<%=java.util.Arrays.asList(categorias).indexOf(evento) + 1%>"><%=evento%></option>
            <%}%>
        </select>
        </section>      
    </div>
    <script src="js/jquery-1.11.1.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>


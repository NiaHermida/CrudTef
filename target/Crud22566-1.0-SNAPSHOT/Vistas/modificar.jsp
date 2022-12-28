<%-- 
    Document   : modificar
    Created on : Dec 13, 2022, 7:24:58 PM
    Author     : tefhe
--%>

<%@page import="modelo.Socios"%>
<%@page import="modelo.SociosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%> 

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Modificar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <style>
        body {background-color: #000000E8;}
        .form-label, .nav-link, .navbar-brand, h1 {color:whitesmoke !important} 
        #footer{padding: 0 !important;}
        </style>
    </head>
    
    <body class="d-flex flex-column min-vh-100"> 
        <header>
            <nav class="navbar navbar-expand-lg bg-dark">
                <div class="container-fluid">
                  <a class="navbar-brand"  href="#">
                    <img src="img/white.png" alt="That Gamer Life" width="50">
                    That Gamer Life |</a>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Streamers</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Stream Times</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link">Juegos</a>
                      </li>
                    </ul>
                    <form class="d-flex" role="search">
                      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                  </div>
                </div>
              </nav>
        </header>
        
        <br>

        <div class="container-fluid" style="width: 58rem;">
        <h1 style="text-align: center;">Modificar Datos <img src="img/pencil2.png" width="50" alt="pencil"></h1>
        <div class="mb-3">
        <% 
        String id=request.getParameter("id");
        int mid;
        mid=Integer.parseInt(id);
        Socios resultado=null;
        SociosDAO socio= new SociosDAO();
        resultado=socio.mostrarSocio(mid);
        %>
        
        <form method="POST"  action="SociosController?accion=actualizar">
            <br>
                <div class="mb-3">
                    <label for="id" class="form-label"><b>Id</b></label>
                    <input type="text" class="form-control" readonly="true" id="id" name="id" value=<%=resultado.getIdSocio()%>> 
                    <br>
                    <label for="nombre" class="form-label"><b>Nombre</b></label>
                    <input type="text" class="form-control"  id="nombre" name="nombre" value=<%=resultado.getNombre()%>>
                    <br>
                    <label for="apellido" class="form-label"><b>Apellido</b></label>
                    <input type="text" class="form-control"  id="apellido" name="apellido" value=<%=resultado.getApellido()%>>
                    <br>
                    <label for="direccion" class="form-label"><b>Dirección</b></label>
                    <input type="text" class="form-control"  id="direccion" name="direccion" value=<%=resultado.getDireccion()%> >
                    <br>
                    <label for="localidad" class="form-label"><b>Localidad</b></label>
                    <input type="text" class="form-control"  id="localidad" name="localidad" value=<%=resultado.getLocalidad()%>>
                    <br>
                    <label for="fnac" class="form-label"><b>Fecha de Nacimiento</b></label>
                    <input type="date" class="form-control"  id="fnac" name="fnac" value=<%=resultado.getFnac()%>>
                    <br>
                    <label for="email" class="form-label"><b>Email</b></label>
                    <input type="text" class="form-control"  id="email" name="email" value=<%=resultado.getEmail()%>>
                    <br>
                    <label for="telefono" class="form-label"><b>Teléfono</b></label>
                    <input type="text" class="form-control"  id="telefono" name="telefono" value=<%=resultado.getTelefono()%>>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                    <button type="button" class="btn btn-outline-warning w-100" onclick="history.back()"><b>Volver atrás</b></button>
                    </div>
                    <div class="col-md-6">
                    <button type="submit" class="btn btn-warning w-100" ><b>Modificar</b></button>
                    </div>
                    </div>
                    <br>
            </div>
        </form>
                </div>
    </body>
    
    
    <footer class="mt-auto">
      <br>
        <div class="container-fluid" id="footer">
            <ul class="nav justify-content-lg-center bg-dark" style="padding: 8px;">
              <li class="nav-item down mx-5">
                <a class="nav-link" href="#">¿Quiénes somos?</a>
              </li>
              <li class="nav-item down mx-5">
                <a class="nav-link" href="#">Contacto</a>
              </li>
            </ul>
          </div>
     </footer>
</html>

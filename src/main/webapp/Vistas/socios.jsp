<%-- 
    Document   : socios
    Created on : Dec 18, 2022, 11:02:36 AM
    Author     : tefhe
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Socios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Streamers</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/4fd2729104.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script><!-- comment -->

        <style>
        body {background-color: #000000E8;}
        .form-label, .nav-link, .navbar-brand, h1 {color:whitesmoke !important} 
        #footer{padding: 0 !important;}
        </style>
          
    </head>
    
    
    <body class="d-flex flex-column min-vh-100 "> 
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

          <div class="container">
          <br>
          <h1 style="text-align: center;">Streamers de la Comunidad</h1>
          <br>
            <div class="row">
                <div class="col-md-12 text-right">
                 <a class="btn btn-warning d-grid gap-2" href="SociosController?accion=nuevo"><b>Agregar Streamer</b></a>   
                </div>
            </div>
            <br>
              <table class="table" style="background-image: linear-gradient(to bottom, #D089EF, #E8BB31);">
                  
                <thead class="text-center">
                  <th>Id</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                  <th>Dirección</th>
                  <th>Localidad</th>
                  <th>Fecha Nac.</th> 
                  <th>Email</th>
                  <th>Teléfono</th>
                  <th>Modificar</th>
                  <th>Eliminar</th>
                </thead>
                
                <%
                List <Socios> resultado=null;
                SociosDAO s1=new SociosDAO ();
                resultado=s1.listarSocios();
                
                for(int x=0;x<resultado.size(); x++)
                {
                String ruta="SociosController?accion=modificar&id="+resultado.get(x).getIdSocio();
                String rutaE="SociosController?accion=eliminar&id="+resultado.get(x).getIdSocio();
                
                
                %>
                
                <tr class="text-center">
                  <td ><%=resultado.get(x).getIdSocio()%></td>
                  <td><%=resultado.get(x).getNombre()%></td>
                  <td><%=resultado.get(x).getApellido()%></td>
                  <td><%=resultado.get(x).getDireccion()%></td>
                  <td><%=resultado.get(x).getLocalidad()%></td>
                  <td><%=resultado.get(x).getFnac() %></td>
                  <td><%=resultado.get(x).getEmail()%></td>
                  <td><%=resultado.get(x).getTelefono()%></td>
                  <td><a href=<%=ruta%> > <i class="fa-solid fa-pencil"> </i> </a> </td>
                  <td><a href=<%=rutaE%>> <i class="fa-regular fa-circle-xmark"> </i> </a> </td>
                </tr>
                
               <%
                 }
               %>
               
              </table>
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
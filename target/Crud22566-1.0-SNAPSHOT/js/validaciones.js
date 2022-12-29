/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
//variables
var nombre=document.getElementById("nombre");
var apellido=document.getElementById("apellido");
var direccion=document.getElementById("direccion");
var localidad=document.getElementById("localidad");
var fnac=document.getElementById("fnac");
var email=document.getElementById("email");
var telefono=document.getElementById("telefono");

//boton
btnEnviar.addEventListener("click", EnviarForm);

//validacion
function validacion() {
    if (nombre.value== /^\\s*$/.test(nombre)) {
        alert("El campo Nombre no es válido");
        nombre.focus();
      return false;
    } 
    
    if (apellido.value== /^\\s*$/.test(apellido)) {
        alert("El campo Apellido no es válido");
        apellido.focus();
      return false;
    } 
    
    if (direccion.value== /^\\s*$/.test(direccion)) {
        alert("El campo Dirección no es válido");
        direccion.focus();
      return false;
    } 
    
    if (localidad.value== /^\\s*$/.test(localidad)) {
        alert("El campo Localidad no es válido");
        localidad.focus();
      return false;
    } 
 
    const emailValido=email=>{
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    }

        if(!emailValido(email.value)){
            alert("El correo es inválido");
            email.focus();
            return false;
        }
        
        const telefonoValido=telefono=>{
            return /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im.test(telefono);
        }
        
    if (!telefonoValido(telefono.value))
        {
        alert("El campo Teléfono no es válido");
        telefono.focus();
      return false;
    }     

    // Parse the date parts to integers
    var parts = fnac.value.split("/");
    var day = parseInt(parts[1], 10);
    var month = parseInt(parts[0], 10);
    var year = parseInt(parts[2], 10);

    // Check the ranges of month and year
    if(year < 1800 || year > 3000)
    {
        alert("El campo Fecha de Nacimiento no es válido");
        fnac.focus();
        return false;
    }

}
    
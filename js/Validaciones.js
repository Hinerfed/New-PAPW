
function validaciones()                                   
{
  


var correo = document.forms["formaRegistro"]["correoForma"].value;
var contra1 = document.forms["formaRegistro"]["contrasenaForma"].value;
var contra2 = document.forms["formaRegistro"]["contrasenaConfirmarForma"].value;
var nombre = document.forms["formaRegistro"]["nombreForma"].value;
var imgPer = document.forms["formaRegistro"]["imgPerfil"].value;
var imgPor = document.forms["formaRegistro"]["imgPortada"].value;

  
         
  if (correo.value == undefined)                                  
  {
      alert("Inserte un correo valido");
      correo.focus();
      return false;
  }

  if (correo.value.indexOf("@", 0) < 0)                
  {
      alert("Inserte un correo valido");
      correo.focus();
      return false;
  }

  if (correo.value.indexOf(".", 0) < 0)                
  {
      alert("Inserte un correo valido");
      correo.focus();
      return false;
  }


    if(contra1.value.length < 8) {
      alert("Error: Contraseña debe ser de almenos 8 caracteres!");
      contra1.focus();
      return false;
    }
   /* if(password.value == username.value) {
      alert("Error: Password must be different from Username!");
      password.focus();
      return false;
    }*/
    
    re = /[0-9]/;
    if(!re.test(contra1.value)) {
      alert("Error: Contraseña debe contener un numero de 0-9!");
      contra1.focus();
      return false;
    }
    re = /[a-z]/;
    if(!re.test(contra1.value)) {
      alert("Error: Contraseña debe contener una letra de a-z!");
      contra1.focus();
      return false;
    }
    re = /[A-Z]/;
    if(!re.test(contra1.value)) {
      alert("Error: Contraseña debe contener una letra en mayusculas de A-Z!");
      contra1.focus();
      return false;
    }

     if (contra1.value == undefined)                                 
  {
      alert("Ingrese una contraseña");
      contra1.focus();
      return false;
  }

    if (contra1.value != contra2.value) {
      alert("Error: Las contraseñas deben coicidir");
  return false;
    }
  

 if (nombre.value == undefined)                                 
  {
      alert("Ingrese su nombre");
      nombre.focus();
      return false;
  }

   if (imgPer.value == undefined)                          
  {
      alert("Seleccione una imagen de perfil");
      imgPer.focus();
      return false;
  }

 if (imgPor.value == undefined)                          
  {
      alert("Seleccione una imagen de portada");
      imgPor.focus();
      return false;
  }

    return true;
    
}
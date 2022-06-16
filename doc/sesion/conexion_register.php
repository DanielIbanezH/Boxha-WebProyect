<?php
    //Creamos la variable "con" conexion con la base de datos
    $con = mysqli_connect('localhost','id18930570_boxhacucei','A}IPH_cU*TK6MUgE','id18930570_db_boxha') or die('Hubo un error en la conexion con el servidor');
	
     //Utilizando el valor Fecha de Nacimiento, calculamos la edad del usuario
    $fn = new DateTime($_POST["fecha"]);
    $hoy = new DateTime();                 //Obtenemos la fecha de hoy
    $edad = $hoy->diff($fn);               //Restamos las dos fechas y obtenemos la edad, meses y dias exactos de la persona

    //Creamos la varible sql e insertamos en los clientes TODO lo recopilado en el formulario (me duele que las variables esten en espanol)
    $sql = "INSERT INTO pagina_web_clientes
    VALUES('null', '".$_POST["nombres"]."', '".$_POST["correo"]."', '".$_POST["usuario"]."',
    '".$_POST["contra"]."', '1', '$edad->y', '".$_POST["fecha"]."',
    '".$_POST["direccion"]."', '".$_POST["postal"]."', '".$_POST["telefono"]."', '".$_POST["telefono2"]."')";
		
	// Obtenemos datos de la columna de correo
	$sql="SELECT * from pagina_web_clientes where correo='".$_POST["correo"]."'";
  
    //Por ultimo utilizamos la variable con y sql, para insertar la informacion a la base de datos
    $result = mysqli_query($con,$sql) ;
	
	
	//validamos que no se repitan
	if(mysqli_num_rows($result)==0){
		
    //Insertamos solo los datos pertinenetes a los usuarios
    $sql="INSERT INTO pagina_web_usuarios
    VALUES('null', '".$_POST["nombres"]."', '".$_POST["correo"]."', '".$_POST["usuario"]."', '".$_POST["contra"]."', '1')";
    
    //Agregamos a la tabla Usuarios los datos necesarios
    $result=mysqli_query($con,$sql) ;

    echo '<script>alert("Registro bloqueado")
		  window.location.href="javascript: history.go(-1)";
		  </script>';
	}else{
          echo '<script>alert("Registro bloqueado")
		  window.location.href="javascript: history.go(-1)";
		  </script>';
        
	}
    
    //Cerramos la conexion con la base de datos
    //mysqli_close($con);
?>
<%-- 
    Document   : ErrorRegistro
    Created on : Feb 16, 2011, 12:58:52 PM
    Author     : eleadrn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>


<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Error en el registro de Usuario</title>
        </head>
        <body>
            <center>
                <h1>Curso JSF-Hibernate Jonathan</h1>
                <div id="contenido">
                    <br>
                    <h3>El usuario no pudo ser creado<br>Intentelo mas tarde</h3>
                        <h:form>
                            <h:commandButton value="Inicio del Sistema" action="Inicio2"/>
                            <h:commandButton value="Salir" action="Salida2"/>
                        </h:form>
                </div>
                <div id="footer">
                    <br><br><br><br><br>
                    <a href="http://eleadrnsw.blogspot.com" target="_blank">EleadrnSW&copy;</a></div>
            </div>
        </center>
    </body>
</html>
</f:view>

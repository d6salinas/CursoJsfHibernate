<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%--
    This file is an entry point for JavaServer Faces application.
--%>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSF y Hibernate</title>
        </head>
        <body>
            <center>
                <h1><h:outputText value="Bienvenido a Java Server Faces y Hibernate"/></h1>
                <br><br><br>
                Ingrese al Sitio JSF:

                <h:outputLink value="Login.jsp">Ingresar al Sitio</h:outputLink>

                <br><br>¿Aun no es usuario del Sistema? - Necesita registrarse - visite:

                <h:outputLink value="Registro.jsp">Registro Hibernate</h:outputLink>

                <br><br>O Bien vea la lista de Usuarios registrados en el Sistema:

                <h:outputLink value="ListaUsuarios.jsp">Usuarios Hibernate</h:outputLink>

                <div id="footer">
                    <br><br><br><br><br>
                    <a href="http://eleadrnsw.blogspot.com" target="_blank">EleadrnSW&copy;</a></div>
            </div>
        </center>
    </body>
</html>
</f:view>

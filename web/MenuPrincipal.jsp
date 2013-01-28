<%-- 
    Document   : MenuPrincipal
    Created on : Feb 16, 2011, 8:29:06 PM
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
            <title>Menu Principal para usuarios registrados</title>
        </head>
        <body class="body">
            <center>
                <h1>Curso JSF-Hibernate Jonathan</h1>
                <div id="contenido">
                    <h3>Menu Principal de la Aplicacion <br><br><h:outputText value="#{registrar.nombre}"/></h3>
                        <h:form>
                            <h:commandButton value="Administrar Usuarios" action="AdminUsers"/>
                            <h:commandButton value="Listado de Usuarios" action="ListaUsers"/>
                            <h:commandButton value="Salir" action="Salida5"/>
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

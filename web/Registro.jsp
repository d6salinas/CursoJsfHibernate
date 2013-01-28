<%-- 
    Document   : Registro
    Created on : Feb 16, 2011, 12:29:41 PM
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
            <title>Registro de Usuarios a Hibernate</title>
        </head>
        <body class="body">
            <center>
                <h1>Curso JSF-Hibernate Jonathan</h1>
                <div id="contenido">
                    <h:form>
                        <h:messages style="color:red"/>
                        <table class="form" align="center">
                            <thead>
                                <tr>
                                    <td colspan="2" align="center"><h3>Datos del Usuario</h3></td>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <td colspan="2">
                                        <div align="center">
                                            <h:commandButton value="Crear" action="#{usuarioDAO.registrarUsuario}"/>
                                            <h:commandButton value="Cancelar" action="Salida6" onclick="return confirm('¿Está seguro de cancelar la operación?');"/>
                                        </div>
                                    </td>
                                </tr>
                            </tfoot>
                            <tbody>
                                <tr>
                                    <td class="name" align="right">Nombre:</td>
                                    <td class="input"><h:inputText value="#{registrar.nombre}" maxlength="50" size="31" required="true" requiredMessage=" (es necesario introducir el nombre)."/></td>
                                </tr>
                                <tr>
                                    <td class="name" align="right">Domicilio:</td>
                                    <td class="input"><h:inputTextarea id="nombre" value="#{registrar.domicilio}" cols="35" rows="2" tabindex="100" required="true" requiredMessage=" (es necesario introducir el domicilio)."/></td>
                                </tr>
                                <tr>
                                    <td class="name" align="right">Edad:</td>
                                    <td class="input"><h:inputText value="#{registrar.edad}" maxlength="50" size="15" required="true" requiredMessage=" (es necesario introducir la edad)."/></td>
                                </tr>
                                <tr>
                                    <td class="name" align="right">Correo electr&oacute;nico:</td>
                                    <td class="input"><h:inputText id="correo" value="#{registrar.correo}" maxlength="100" size="31" required="true" requiredMessage="(es necesario introducir el email)."></h:inputText></td>
                                </tr>
                                <tr>
                                    <td class="name" align="right">Usuario:</td>
                                    <td class="input"><h:inputText value="#{registrar.usuario}" maxlength="20" size="31" required="true" requiredMessage=" (es necesario introducir el nombre de Usuario)."/></td>
                                </tr>
                                <tr>
                                    <td class="name" align="right">Contraseña:</td>
                                    <td class="input"><h:inputSecret value="#{registrar.contraseña}" maxlength="20" size="31" required="true" requiredMessage=" (es necesario introducir el Password)."/></td>
                                </tr>
                            </tbody>
                            
                        </table>
                    </h:form>
                    <br><br>
                    <h:form>
                    <h:commandButton value="Regresar" action="Regreso"/>
                    <h:commandButton value="Salir" action="Salida6"/>
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

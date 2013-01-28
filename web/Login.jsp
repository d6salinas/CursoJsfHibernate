<%-- 
    Document   : Login
    Created on : Feb 16, 2011, 8:17:14 PM
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
            <title>Inicar Sesion</title>
        </head>
        <body class="body">
            <center>
                <h1>Curso JSF-Hibernate Jonathan</h1>
                <div class="all">
                    <div id="header">

                    </div>
                    <div id="contenido">
                        <h:form>
                            <table class="form" align="center">
                                <thead>
                                    <tr>
                                        <td colspan="2" align="center"><h3>Iniciar Sesi&oacute;n</h3></td>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <td colspan="2" align="center" class="name"><h:commandButton value="Ingresar" action="#{usuarioDAO.validarUsuario}"/></td>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td class="name">*Nombre de usuario:</td>
                                        <td class="input"> <h:inputText id="login" value="#{registrar.usuario}" required="true" requiredMessage=" (es necesario introducir el login)" />
                                            <h:message for="login" style="color:red" styleClass="error"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="name">*Contrase&ntilde;a:</td>
                                        <td class="input"><h:inputSecret id="password" required="true" value="#{registrar.contraseña}" requiredMessage=" (es necesario introducir la contraseña)" />
                                            <h:message  for="password" style="color:red" styleClass="error"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </h:form>
                        <br>
                        <h:form>
                            <h:commandButton value="Registrarse" action="Registrarse"/>
                        </h:form>
                        <!--                        <br><br><br><br><br>-->
                    </div>
                    <div id="footer">
                        <br><br><br><br><br>
                        <a href="http://eleadrnsw.blogspot.com" target="_blank">EleadrnSW&copy;</a></div>
                </div>
            </center>
        </body>
    </html>
</f:view>

<%-- 
    Document   : index
    Created on : 08 nov. 2022, 19:30:12
    Author     : CJ
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.GestorAlmacen"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Almacen"%>
<%
    if(session.getAttribute("gestor") == null){
        GestorAlmacen aux = new GestorAlmacen();
        aux.insertarProducto(new Almacen(1, "Coca Cola", 100, 10, "Bebidas"));
        aux.insertarProducto(new Almacen(2, "Pepsi", 50, 11, "Bebidas"));
        aux.insertarProducto(new Almacen(3, "Frack", 100, 2.50, "Galletas"));
        aux.insertarProducto(new Almacen(4, "Serranitas", 80, 1.50, "Galletas"));
        
        session.setAttribute("gestor", aux);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Almacen</title>
    </head>
    <body>
    <fieldset>
        <h1>2DO PARCIAL TEM-742 </h1>
        <h2>Nombre: Jose Carlos Calancha Pacheco</h2>
        <h2>Carnet: 9963944 L.P.</h2>
    </fieldset>
        
        <h1>Productos</h1>
        <a href="MainController?op=nuevo">Nuevo Producto</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="item" items="${sessionScope.gestor.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="MainController?op=modificar&id=${item.id}">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

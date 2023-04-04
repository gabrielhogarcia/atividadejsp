<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    int[] resultado = new int[10];
    for(int indice = 0;indice < 10;indice++){
        resultado[indice] = (indice + 1) * 5;
    }

    request.setAttribute("tabuada" , resultado);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tabuada</title>
</head>
<style>
    *{
        list-style: none;
    }
    body{
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        height: 97vh;
    }
</style>
<body>
    <h1>Tabuada</h1>
    <ul>
        <% for(int num = 1; num <= 10; num++){ %>
        <li>5 x <%=num %> = <%= num * 5 %></li>
        <% } %>
    </ul>
        <% for(int valor : resultado){ %>
            <li><%= valor %></li>
            <% } %>

    <hr>
    
    <ul>
    <c:forEach var="num" items="${tabuada}">
        <li>${num}</li>

     </c:forEach>
    </ul>
    
    

</body>
</html>
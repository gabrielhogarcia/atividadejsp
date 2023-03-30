<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int result = 0;
    if(request.getMethod().equals("POST")) {
        int numA = Integer.parseInt(request.getParameter("numA"));
        int numB = Integer.parseInt(request.getParameter("numB"));
        result = numA + numB;
    }
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projeto Soma</title>
</head>
<style>
    *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        text-decoration: none;
    }
    body{
        background: linear-gradient(120deg,#473247,#442121);
        color: aliceblue;
        display: flex;
        align-items: center;
        justify-content: center;
        width: 99vh;
        height: 97vh;
    }
    form{
        display: flex;
        flex-direction: column;
        gap: 10px;
        justify-content: center;
        align-items: center;
    }
    #home{
        
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        gap: 40px;
    }
    input{
        width: 200px;
        height: 30px;
        border-radius: 20px;
        border: solid rgb(167, 56, 56) 2px;
        padding-left: 10px;
    }
    button{
        background-color:rgb(167, 56, 56);
        padding: 20px 0;
        border-radius: 20px;
        border: none;
        margin: 10px 0;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        width: 100px;
    }
    h2{
        margin: 20px 0px;
        color: aliceblue;
    }
    
   
</style>
<body>

    <div id="home">
    
        <h1>Soma</h1>
        
        <form action="soma.jsp" method="post">
                <div class="cixinhaum">
            <input type="number" name="numA" />
                </div>
            <input type="number" name="numB" />
            <button type="submit">Somar</button>
        
            <h2>Resultado: <%= result %></h2>

        </form>
    </div>

</body>
</html>
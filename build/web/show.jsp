<%-- 
    Document   : show
    Created on : 2018-08-27, 18:47:29
    Author     : GRZEŚ
--%>

<%@page import="model.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wynik zapytania</title>
        <style>
            .head{
                width: 400px;
                margin: 0 auto;
                text-align: center;

            }
            .result{

                margin: 0 auto;
                width: 400px;
                padding: 1em;
                border: 1px solid #CCC;
                border-radius: 1em;
            }
            .info{
                width: 200px;
                margin-top: 20%;
                margin-left: 80%;
            }
        </style>
    </head>
    <body>

        <jsp:useBean id="car" class="model.Car" scope="request" ></jsp:useBean>>

            <div class="head">
                <h1>Wynik zapytania: ${requestScope.option}</h1>
        </div>
        <div class="result">
            <p>W wyniku Twojego zapytania otrzymano następujacy wynik:</p>
            <p>
                VIN: ${car.vin}<br>
                Marka: ${car.marka}<br>
                Model: ${car.model}<br>
                Rok: ${car.rok}<br>
                Opis: ${car.opis}</p><br /> <br />
        </div>
        <div class="info">
            <a href="home.jsp">Strona Główna</a> <br />
            <a href="info.jsp">Informacje o  Stronie</a>
        </div>    
    </body>
</html>

<%-- 
    Document   : home
    Created on : 2018-08-27, 18:22:40
    Author     : GRZEŚ
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Baza aut</title>
        <style>
            .head{
                width: 200px;
                margin: 0 auto;


            }
            form {
               
                margin: 0 auto;
                width: 400px;
               
                padding: 1em;
                border: 1px solid #CCC;
                border-radius: 1em;
            }
            .button {

                padding-left: 90px; 
            }

            button {

                margin-left: .5em;
            }
            form div + div {
                margin-top: 1em;
            }
            input {

                font: 1em sans-serif;
                border: 1px solid #999;
            }
            .about{
                width: 200px;
                margin-top: 20%;
                margin-left: 80%;
            }
            .description{

                width: 500px;
                margin: 0 auto;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1 class="head">Przegląd Aut</h1> <br>

        <form action="Controller" method="POST">

            <div>
                <input type="text" name="vin" placeholder="Numer VIN"/>
            </div>   
            <div>
                <input type="text" name="marka" placeholder="Marka" />
            </div>
            <div>
                <input type="text" name="model" placeholder="Model"/>
            </div>
            <div>
                <input type="text" name="rok" placeholder="Rok"/>  
            </div>
            <div>
                <input type="text" name="opis" placeholder="Opis"/>
            </div>
            <div>
                <input type="radio" name="option" value="add"/>Dodaj<br>
                <input type="radio" name="option" value="search"/>Szukaj<br>
                <input type="radio" name="option" value="update"/>Modyfikuj<br>
                <input type="radio" name="option" value="delete"/>Usuń<br>
            </div>
            <div class="button">
                <input type="submit" value="Wykonaj">
            </div>
        </form> <br />
        <div class="description">
            <p>Odnajdź, modyfikuj bądź usuń pojazd podając numer VIN.</p>
            <p>Dodaj auto do bazy danych, wypełniając wszytskie pola.</p>
        </div>

        <div class="about">
            <a href="info.jsp">Informacje o  Stronie</a>
        </div>

    </body>
</html>

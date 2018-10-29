<%-- 
    Document   : info
    Created on : 2018-08-28, 18:53:22
    Author     : GRZEŚ


--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informacje dotyczące strony</title>                       
        <style> .container{
                width: 1200px; text-align: justify;
            } #HP{
                font-size:18px; margin-left: 75%; text-align: center;
            }
        
        </style>
    </head>
    <body>

        <h2>Opis strony oraz użyte technologie</h2>

        <div class="container">
            <p> Niniejsza strona jest przykładem zastosowania bazy danych w aplikacjach webowych.</p>

            <p>Wykorzystane technologie :</p>
            <ul>  
                <li>Java Enterprise Edition </li>
                <li> System Zarządzania Bazą Danych MySQL</li>
                <li>Narzędzie do zarządzania bazą danych PhpMyAdmin</li>
                <li><a href="https://commons.apache.org/proper/commons-dbcp/">DBCP</a> - biblioteka tworząca pulę połączeń</li>
            </ul>
<br />
            <p>
                Istotą aplikacji jest zastosowanie wzorca projektowego <b>DAO</b> (Data Acces Object) oraz <b>CRUD</b>(Create,Read,Update,Delete).
            </p>

            <p>
                Główną ideą DAO jest stworzenie modelu danych w postaci klas który odpowiada modelowi bazy danych. Każda znacząca
                tabela w bazie danych powinna mieć swój odpowiednik w&nbsp;aplikacji w postaci klasy.
                Klasa ta powinna spełniać konwencję <i>JavaBeans</i> tj. posiadać pola reprezentujące typy danych, settery i gettery 
                oraz przynajmniej konstuktor bezparametrowy. Dla takiej klasy, tworzy się klasę DAO która wykonuje podstawowe czynności 
                na bazie danych określane jak CRUD(Create,Read,Update,Delete) czyli tworzenie, odczyt, aktualizacja oraz usuwanie.
            </p>
            <p>
                Dla zobrazowania powyższej teori została napisana niniejsza aplikacja, która wykonuje podstawowe operacje na tabeli aut w bazie danych.
            </p>
            <p>
                Do połączenia z bazą danych w języku Java, użyto wbudowaną technologię <b>JDBC</b>(Java Database Connectivity) oraz sterownik <b>mysql-connector-java 5.1.23.</b>       
            </p>
            <p>
                W przypadku otrzymania do serwletu wielu zapytań jednocześnie, z których każde ma do dyspozycji jedno połączenie z bazą danych
                może dojść do opóźnień bądź błędów odpowiedzi. W&nbsp;rozwiazaniu problemu pomaga zastosowanie mechanizmów tworzących <a href="https://tomcat.apache.org/tomcat-8.0-doc/jdbc-pool.html">pule połączeń</a>(ang. connection pool).
                W aplikacji użyto biblioteki DBCP domyślnie wykorzystywanej przez Tomcat.
                DBCP pozwala zdefiniować takie parametry jak: początkowa i dotatkowa ilość połączeń oraz minimalna i maksymalna ilość połączeń do bazy danych.
            </p>

            <p>
                Konfigurację połączenia z bazą danych zdefiniowano w pliku <i>context.xml</i> generowanym automatycznie przez Tomcat jako <a href="https://tomcat.apache.org/tomcat-8.0-doc/config/context.html">kontekst aplikacji</a>.
                W celu uniknięcia powtarzalności kodu, została utworzona odrębna klasa(CreateConnection) odpowiedzialna za pobieranie połączenia do bazy danych. 
                Klasa zwiera jedną statyczną metodę <i>getConnection()</i>.
            </p>
            <p>
                Sposobem na zabezpiezcenie się przed <a href="https://pl.wikipedia.org/wiki/SQL_injection"><b>SQLInjection</b></a> jest wykorzystanie klasy języka Java <b>PreparedStatement</b>. Używając metody <i>setString()</i> wstawiona wartość zawsze będzie napisem a&nbsp;nie np. dalszym fragmentem zapytania.
            </p>
            <p>
                Niniejsza aplikacja opiera się o wzorzec architektoniczny <b>MVC</b>(Model View Controller) który oddziela logikę aplikacji 
                od widoku. W związku z czym, pliki <b>JSP</b> nie zawierają <i>skryptletów</i>, co podnosi czytelność kodu. 
            </p>
        </div>
<br />
        <a id="HP" href="home.jsp">Strona Główna</a>
    </body>
</html>

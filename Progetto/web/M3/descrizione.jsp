<%-- 
    Document   : descrizione
    Created on : 24-apr-2017, 14.10.24
    Author     : Asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>About NerdBook</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Francesca Cella">
	<meta name="keywords" content="cos'è nerdbook nerd amici social">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
        <link rel="icon" href="img/favicon.png" type="image/png" />
    </head>
    <body>
        <header>
            <nav>
                <jsp:include page="nav.jsp" />
                <a href="login.jsp">Login</a>
            </nav>
            <h1>NerdBook</h1>
        </header>
        <div id="sommario">
            <ul>
                <li><a href="#intro">Che cos'è NerdBook?</a></li>
                <li><a href="#azioni">Che cosa posso fare con NerdBook?</a></li>
                <li><a href="#contenuti">Che cosa e come posso condividere i miei contenuti?</a></li>
            </ul>
        </div>
        <div id="intro">
            <h1>Che cos'è NerdBook?</h1>
            <p>NerdBook è un social network gratis rivolto a chiunque voglia
            condividere con altri utenti le proprie passioni.</p>
        </div>
        <div id="azioni">
            <h2>Che cosa posso fare con NerdBook?</h2>
            <p>NerdBook offre agli utenti la possibilità di creare gruppi e
            e condividere contenuti multimediali.</p>
        </div>
        <div id="contenuti">
            <h3>Che cosa e come posso condividere i miei contenuti?</h3>
            <p>È possibile condividere contenuti quali messaggi, immagini,
            link sulla propria bacheca o sulla bacheca dei propri amici 
            o ancora sulla bacheca dei gruppi ai quali si è iscritti.</p>
        </div>
    </body>
</html>
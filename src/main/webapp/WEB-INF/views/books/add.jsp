<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
  <head>
    <title>Dodaj książkę</title>
  </head>
  <body>

  <h1>Dodaj książkę</h1>
  <a href="list"> Wróć do listy</a>

       <form method="post" action="add">
       <label> ISBN: <input type="text" name="isbn"></label><br>
       <label> Tytuł: <input type="text" name="title"></label><br>
       <label> Autor: <input type="text" name="author"></label><br>
       <label> Wydawca: <input type="text" name="publisher"></label><br>
       <label> Typ: <input type="text" name="type"></label><br>
        <button type="submit">Dodaj</button>
  </body>
</html>

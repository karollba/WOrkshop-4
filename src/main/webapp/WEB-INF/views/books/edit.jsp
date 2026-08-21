<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
  <head>
    <title>Edytuj książkę</title>
  </head>
  <body>

  <h1>Edytuj książkę</h1>
  <a href="list"> Wróć do listy</a>

       <form method="post" action="edit">
       <input type="hidden" name="id" value="${book.id}">
       <label> ISBN: <input type="text" name="isbn" value="@{book.isbn}"></label><br>
       <label> Tytuł: <input type="text" name="title" value="@{book.title}"></label><br>
       <label> Autor: <input type="text" name="author" value="@{book.author}"></label><br>
       <label> Wydawca: <input type="text" name="publisher" value="@{book.publisher}"></label><br>
       <label> Typ: <input type="text" name="type" value="@{book.type}"></label><br>
        <button type="submit">Zapisz</button>
  </body>
</html>

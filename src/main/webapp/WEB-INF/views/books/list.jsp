<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
  <head>
    <title>Ksiazki</title>
  </head>
  <body>

  <h1>Lista książek</h1>
  <a href="add"> Dodaj książkę</a>

  <table border="1">
  <tr>
       <th>ID</th>
       <th>ISBN</th>
       <th>Tytuł</th>
       <th>Autor</th>
       <th>Wydawca</th>
       <th>Typ</th>
       <th>Akcja</th>

  </tr>
 <c:forEach var="book" items="${books}">

 <tr>
    <td>${book.id}</td>
    <td>${book.isbn}</td>
    <td>${book.title}</td>
    <td>${book.author}</td>
    <td>${book.publisher}</td>
    <td>${book.type}</td>
    <td>
    <a href="edit?id=${book.id}"> Edytuj </a>
    <a href="delete?id=${book.id}"> Usuń </a>
    </td>
 </tr>
 </c:forEach>
 </table>


  </body>
</html>

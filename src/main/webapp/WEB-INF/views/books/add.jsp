<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="header.jsp" %>


<div class="container-fluid">
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">BooksCRUD</h1>
    <a href="<c:url value='/admin/books/list'/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
      <i class="fas fa-download fa-sm text-white-50"></i> Lista książek</a>
  </div>

 <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Dodawanie książek</h6>
    </div>

 <div class="card-body">

  <h1>Dodaj książkę</h1>

       <form method="post" action="add">


            <div class="form-group">
                <label for="isbn">ISBN</label>
                <input value="${book.isbn}" name="isbn" type="text" class="form-control" id="isbn" placeholder="ISBN">
            </div>

            <div class="form-group">
                <label for="title">Tytuł</label>
                <input value="${book.title}" name="title" type="text" class="form-control" id="title" placeholder="Title">
            </div>

            <div class="form-group">
                <label for="author">Author</label>
                <input value="${book.author}" name="author" type="text" class="form-control" id="author" placeholder="Author">
            </div>

            <div class="form-group">
                <label for="publisher">Wydawca</label>
                <input value="${book.publisher}" name="publisher" type="text" class="form-control" id="publisher" placeholder="Publisher">
            </div>

            <div class="form-group">
                <label for="type">Typ</label>
                <input value="${book.type}" name="type" type="text" class="form-control" id="type" placeholder="Type">
            </div>

            <button type="submit" class="btn btn-primary">Dodaj</button>
             </form>
           </div>
               <a href="<c:url value='/admin/books/list'/>" class="btn btn-primary"> Main page</a>
         </div>
       </div>
<%@ include file="footer.jsp" %>
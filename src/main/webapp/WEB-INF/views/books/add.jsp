<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/header.jsp"%>
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dodaj Książkę</h1>
    <a href="<c:url value='/admin/books/list'/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
      <i class="fas fa-download fa-sm text-white-50"></i> Lista Książek</a>
  </div>
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Dodawanie użytkownika</h6>
    </div>
    <div class="card-body">
      <form method="post">

        <div class="form-group">
          <label for="isbn">ISBN</label>
          <input name="isbn" type="text" class="form-control" id="isbn" placeholder="ISBN">
      </div>
      <div class="form-group">
          <label for="title">Title</label>
          <input name="title" type="text" class="form-control" id="title" placeholder="Title">
      </div>
      <div class="form-group">
              <label for="author">Author</label>
              <input name="author" type="text" class="form-control" id="author" placeholder="author">
          </div>

    <div class="form-group">
          <label for="wydawca">Wydawca</label>
          <input name="wydawca" type="text" class="form-control" id="wydawca" placeholder="wydawca">
      </div>
        <div class="form-group">
          <label for="type">Typ</label>
          <input name="type" type="text" class="form-control" id="type" placeholder="type">
      </div>

        <button type="submit" class="btn btn-primary">Dodaj</button>
      </form>

    </div>
  </div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>



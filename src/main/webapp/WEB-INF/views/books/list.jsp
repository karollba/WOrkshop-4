<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/header.jsp"%>

      <!-- Begin Page Content -->
      <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
          <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
          <a href="<c:url value='/admin/books/add'/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                  class="fas fa-download fa-sm text-white-50"></i> Add new User</a>
        </div>

        <!-- Content Row -->
        <div class="row">
            <div class="col-12">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary"> Books list</h6>
                </div>
                <div class="card-body">
                  <table  class="table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>ISBN</th>
                        <th>Tytuł</th>
                        <th>Autor</th>
                        <th>Wydawca</th>
                        <th>Typ</th>
                        <th>Akcja</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="book" items="${books}">
                      <tr>
                          <td>${book.id}</td>
                          <td>${books.isbn}</td>
                          <td>${books.title}</td>
                          <td>${books.author}</td>
                          <td>${books.publisher}</td>
                          <td>${books.type}</td>
                      <td>
                        <a href="edit?id=${book.id}" class="btn btn-info btn-sm">Edit</a>
                        <a href="delete?id=${book.id}" class="btn btn-info btn-sm">Usuń</a>
                      </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
        </div>
      </div>

<%@include file="/WEB_INF/views/footer.jsp"%>

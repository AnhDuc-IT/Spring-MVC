<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib uri="http://www.springframework.org/tags/form" prefix="form" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Delete User ${id}</title>

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  </head>
  <body>
    <div class="container mt-5">
      <div class="row">
        <div class="col-12 mx-auto">
          <h3>Delete a user with id = ${id}</h3>
          <hr />
          <div class="alert alert-danger">
            Are you sure you want to delete this user?
          </div>

          <form:form
            method="post"
            modelAttribute="newUser"
            action="/admin/user/delete"
          >
            <div class="mb-3" style="display: none">
              <label class="form-label">ID:</label>
              <form:input
                path="id"
                type="text"
                class="form-control"
                value="${id}"
              />
            </div>
            <button type="submit" class="btn btn-danger">Confirm</button>
            <a href="/admin/user" class="btn btn-secondary ms-2">Cancel</a>
          </form:form>
        </div>
      </div>
    </div>
  </body>
</html>

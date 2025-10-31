<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="Mai Anh Đức" />
    <title>UpdateUser - Mai Anh Đức</title>
    <link href="/css/styles.css" rel="stylesheet" />
    <script
      src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body class="sb-nav-fixed">
    <jsp:include page="../layout/header.jsp" />
    <!-- Layout -->
    <div id="layoutSidenav">
      <jsp:include page="../layout/sidebar.jsp" />

      <!-- Main content -->
      <div id="layoutSidenav_content">
        <main>
          <div class="container-fluid px-4">
            <h1 class="mt-4">Manager Users</h1>
            <ol class="breadcrumb mb-4">
              <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
              <li class="breadcrumb-item active">Users</li>
            </ol>
            <div class="container mt-5">
              <div class="row">
                <div class="col-12 mx-auto">
                  <div class="d-flex justify-content-between">
                    <h3>User detail with id = ${id}</h3>
                  </div>
                  <hr />
                  <div class="card" style="width: 60%">
                    <div class="card-header">User information</div>
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item">ID: ${user.id}</li>
                      <li class="list-group-item">Email: ${user.email}</li>
                      <li class="list-group-item">
                        FullName: ${user.fullName}
                      </li>
                      <li class="list-group-item">Address: ${user.address}</li>
                    </ul>
                  </div>
                  <a href="/admin/user" class="btn btn-success">Back</a>
                </div>
              </div>
            </div>
          </div>
        </main>
        <jsp:include page="../layout/footer.jsp" />
      </div>
    </div>

    <!-- Scripts -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
      <script
  src="/resources/js/scripts.js"
    ></script>
  </body>
</html>

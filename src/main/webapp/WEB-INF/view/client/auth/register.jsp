<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="Colorlib Templates" />
    <meta name="author" content="Colorlib" />
    <meta name="keywords" content="Colorlib Templates" />
    <title>Đăng ký tài khoản</title>

    <!-- Icons font CSS-->
    <link
      href="vendor/mdi-font/css/material-design-iconic-font.min.css"
      rel="stylesheet"
      media="all"
    />
    <link
      href="vendor/font-awesome-4.7/css/font-awesome.min.css"
      rel="stylesheet"
      media="all"
    />

    <!-- Font special for pages-->
    <link
      href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
      rel="stylesheet"
    />

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all" />
    <link
      href="vendor/datepicker/daterangepicker.css"
      rel="stylesheet"
      media="all"
    />

  <!-- Main CSS-->
  <link href="<c:url value='/client/css/register.css'/>" rel="stylesheet" media="all" />
  </head>

    <body>
    <div class="page-wrapper bg-gra-02 font-poppins">
      <div class="wrapper wrapper--w680">
        <div class="card card-4">
          <div class="card-body">
            <h2 class="title">ĐĂNG KÍ TÀI KHOẢN</h2>

            <!-- Spring Form -->
            <form:form
              method="post"
              action="/register"
              modelAttribute="newUser"
              enctype="multipart/form-data"
            >
              <!-- First row: Email and Full Name -->
              <div class="row row-space">
                <div class="col-2">
                  <div class="input-group">
                    <label class="label">Email</label>
                    <form:input
                      path="email"
                      type="email"
                      class="input--style-4"
                      placeholder="Nhập email"
                    />
                  </div>
                </div>

                <div class="col-2">
                  <div class="input-group">
                    <label class="label">Họ và tên</label>
                    <form:input
                      path="fullName"
                      type="text"
                      class="input--style-4"
                      placeholder="Nhập họ tên"
                    />
                  </div>
                </div>
              </div>

              <!-- Second row: Phone and Password -->
              <div class="row row-space">
                <div class="col-2">
                  <div class="input-group">
                    <label class="label">Số Điện Thoại</label>
                    <form:input
                      path="phone"
                      type="text"
                      class="input--style-4"
                      placeholder="Nhập số điện thoại"
                    />
                  </div>
                </div>

                <div class="col-2">
                  <div class="input-group">
                    <label class="label">Mật khẩu</label>
                    <form:input
                      type="password"
                      path="password"
                      class="input--style-4"
                      placeholder="Nhập mật khẩu"
                    />
                  </div>
                </div>
              </div>

              <div class="col-2">
                <div class="input-group">
                  <label class="label">Địa chỉ</label>
                  <form:input
                    path="address"
                    class="input--style-4"
                    placeholder="Nhập địa chỉ"
                  />
                </div>
              </div>

              <div class="mb-3 col-12 col-md-6">
                <label for="avatarFile" class="form-label">Avatar</label>
                <input
                  class="form-control"
                  type="file"
                  id="avatarFile"
                  accept=".png, .jpg, .jpeg"
                  name="duckuroFile"
                />
              </div>
              <form:hidden path="role.name" value="USER" />
              <div class="p-t-15">
                <button class="btn btn--radius-2 btn--green" type="submit">
                  Đăng ký
                </button>
              </div>
            </form:form>
            <!-- End Spring Form -->
          </div>
        </div>
      </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>
    <!-- Main JS-->
    <script src="js/global.js"></script>
  </body>
</html>

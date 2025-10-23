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
    <title>Create Product</title>

    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
      $(document).ready(() => {
        const avatarFile = $("#avatarFile");
        avatarFile.change(function (e) {
          const imgURL = URL.createObjectURL(e.target.files[0]);
          $("#avatarPreview").attr("src", imgURL);
          $("#avatarPreview").css({ display: "block" });
        });
      });
    </script>

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
            <h1 class="mt-4">QUẢN LÝ SẢN PHẨM</h1>
            <ol class="breadcrumb mb-4">
              <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
              <li class="breadcrumb-item active">Products</li>
            </ol>

            <div class="container mt-5">
              <div class="row">
                <div class="col-md-6 col-12 mx-auto">
                  <h1 style="color: rgb(23, 59, 158)">CẬP NHẬT SẢN PHẨM</h1>
                  <hr />

                  <form:form
                    method="post"
                    action="/admin/product/update"
                    modelAttribute="newProduct"
                    class="row"
                    enctype="multipart/form-data"
                  >
                    <div class="mb-3" style="display: none">
                      <label class="form-label">ID:</label>
                      <form:input type="text" class="form-control" path="id" />
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                      <c:set var="errorname">
                        <form:errors path="name" cssClass="invalid-feedback" />
                      </c:set>
                      <label class="form-label">Tên Sản Phẩm:</label>
                      <form:input
                        type="text"
                        class="form-control ${not empty errorname ? 'is-invalid' : ''}"
                        path="name"
                      />
                      ${errorname}
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                      <c:set var="errorprice">
                        <form:errors path="price" cssClass="invalid-feedback" />
                      </c:set>
                      <label class="form-label">Giá:</label>
                      <form:input
                        type="number"
                        class="form-control ${not empty errorprice ? 'is-invalid' : ''}"
                        path="price"
                      />
                      ${errorprice}
                    </div>

                    <div class="mb-3 col-12 col-md-6">
                      <c:set var="errordetail">
                        <form:errors
                          path="detailDesc"
                          cssClass="invalid-feedback"
                        />
                      </c:set>
                      <label class="form-label">Chi tiết sản phẩm:</label>
                      <form:input
                        type="text"
                        class="form-control ${not empty errordetail ? 'is-invalid' : ''}"
                        path="detailDesc"
                      />
                      ${errordetail}
                    </div>

                    <div class="mb-3 col-12 col-md-6">
                      <label class="form-label">Mổ tả ngắn:</label>
                      <form:input
                        type="text"
                        class="form-control"
                        path="shortDesc"
                      />
                    </div>

                    <div class="mb-3 col-12 col-md-6">
                      <c:set var="errorquantity">
                        <form:errors
                          path="quantity"
                          cssClass="invalid-feedback"
                        />
                      </c:set>
                      <label class="form-label">Số lượng</label>
                      <form:input
                        type="number"
                        class="form-control ${not empty errorquantity ? 'is-invalid' : ''}"
                        path="quantity"
                      />
                      ${errorquantity}
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                      <label class="form-label">Đã bán:</label>
                      <form:input
                        type="number"
                        class="form-control"
                        path="sold"
                      />
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                      <label class="form-label">Thương hiệu:</label>
                      <form:select class="form-select" path="factory">
                        <form:option value="Macbook">Macbook</form:option>
                        <form:option value="Lenovo">Lenovo</form:option>
                        <form:option value="Asus">Asus</form:option>
                        <form:option value="HP">HP</form:option>
                      </form:select>
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                      <label class="form-label">Sinh Viên - Văn Phòng</label>
                      <form:select class="form-select" path="target">
                        <form:option value="Văn Phòng"
                          >Sinh Viên - Văn Phòng</form:option
                        >
                        <form:option value="Gaming - Đồ họa"
                          >Gaming - Đồ họa</form:option
                        >
                        <form:option value="Doanh Nhân">Doanh Nhân</form:option>
                        <form:option value="AI">AI</form:option>
                        <form:option value="Mỏng Nhẹ">Mỏng Nhẹ</form:option>
                      </form:select>
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                      <form:hidden path="photo" />
                      <label for="avatarFile" class="form-label"
                        >Hình ảnh:</label
                      >
                      <input
                        class="form-control"
                        type="file"
                        id="avatarFile"
                        accept=".png, .jpg, .jpeg"
                        name="duckuroFile"
                      />
                    </div>

                    <div class="col-12 mb-3">
                      <img
                        style="max-height: 250px; display: none"
                        alt="avatar preview"
                        id="avatarPreview"
                      />
                    </div>

                    <div class="col-12 mb-5">
                      <button type="submit" class="btn btn-primary">
                        Cập Nhật
                      </button>
                    </div>
                  </form:form>
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
    ></script>
    <script src="js/scripts.js"></script>
  </body>
</html>

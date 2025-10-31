<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Trang chủ - TechStore</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
      rel="stylesheet"
    />

    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet" />
    <link
      href="/client/lib/owlcarousel/assets/owl.carousel.min.css"
      rel="stylesheet"
    />

    <link href="/client/css/bootstrap.min.css" rel="stylesheet" />

    <link href="/client/css/style.css" rel="stylesheet" />
  </head>
  <body>
    <div
      id="spinner"
      class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50 d-flex align-items-center justify-content-center"
    >
      <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <jsp:include page="../layout/header.jsp" />
    <div
      class="modal fade"
      id="searchModal"
      tab-index="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-fullscreen">
        <div class="modal-content rounded-0">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">
              Search by keyword
            </h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body d-flex align-items-center">
            <div class="input-group w-75 mx-auto d-flex">
              <input
                type="search"
                class="form-control p-3"
                placeholder="keywords"
                aria-describedby="search-icon-1"
              />
              <span id="search-icon-1" class="input-group-text p-3"
                ><i class="fa fa-search"></i
              ></span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="../layout/banner.jsp" />
    
    <div class="container-fluid fruite py-5">
      <div class="container py-5">
        <div class="tab-class text-center">
          <div class="row g-4">
            <div class="col-lg-4 text-start">
              <h1>Sản phẩm nổi bật</h1>
            </div>
            <div class="col-lg-8 text-end">
              <ul class="nav nav-pills d-inline-flex text-center mb-5">
                <li class="nav-item">
                  <a
                    class="d-flex m-2 py-2 bg-light rounded-pill active"
                    data-bs-toggle="pill"
                    href="#tab-1"
                  >
                    <span class="text-dark" style="width: 130px"
                      >Tất Cả Sản Phẩm</span
                    >
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    class="d-flex py-2 m-2 bg-light rounded-pill"
                    data-bs-toggle="pill"
                    href="#tab-2"
                  >
                    <span class="text-dark" style="width: 130px">Macbook</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    class="d-flex m-2 py-2 bg-light rounded-pill"
                    data-bs-toggle="pill"
                    href="#tab-3"
                  >
                    <span class="text-dark" style="width: 130px">Asus</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    class="d-flex m-2 py-2 bg-light rounded-pill"
                    data-bs-toggle="pill"
                    href="#tab-4"
                  >
                    <span class="text-dark" style="width: 130px">Lenovo</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a
                    class="d-flex m-2 py-2 bg-light rounded-pill"
                    data-bs-toggle="pill"
                    href="#tab-5"
                  >
                    <span class="text-dark" style="width: 130px">HP</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="tab-content">
            <div id="tab-1" class="tab-pane fade show p-0 active">
              <div class="row g-4">
                <div class="col-lg-12">
                  <div class="row g-4">
                    <c:forEach var="product" items="${products}">
                      <div class="col-md-6 col-lg-4 col-xl-3">
                        <div
                          class="rounded position-relative fruite-item h-100 d-flex flex-column"
                        >
                          <div class="fruite-img">
                            <img
                              src="/images/product/${product.photo}"
                              class="img-fluid w-100 rounded-top"
                              alt="${product.name}"
                            />
                          </div>
                          <div
                            class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                            style="top: 10px; left: 10px"
                          >
                            Laptop
                          </div>
                          <div
                            class="p-4 border border-secondary border-top-0 rounded-bottom d-flex flex-column flex-grow-1"
                          >
                            <h4
                              style="
                                font-size: 18px;
                                min-height: 40px;
                                overflow: hidden;
                              "
                              class="text-truncate"
                            >
                              <a href="/product/${product.id}">
                                ${product.name}
                              </a>
                            </h4>
                            <p
                              style="
                                font-size: 13px;
                                min-height: 30px;
                                overflow: hidden;
                              "
                            >
                              ${product.shortDesc}
                            </p>
                            <div class="d-flex flex-column mt-auto">
                              <p
                                style="
                                  font-size: 18px; /* Tăng size giá */
                                  text-align: center;
                                  width: 100%;
                                "
                                class="text-dark fw-bold mb-3"
                              >
                                <fmt:formatNumber
                                  type="number"
                                  value="${product.price}"
                                />đ
                              </p>
                              <form action="/cart/add" method="post" style="display:inline">
                                <input type="hidden" name="productId" value="${product.id}" />
                                <button type="submit"
                                  class="mx-auto btn border border-secondary rounded-pill px-3 text-primary"
                                ><i
                                  class="fa fa-shopping-bag me-2 text-primary"
                                ></i>
                                Thêm vào giỏ hàng</button>
                              </form>
                              >
                            </div>
                          </div>
                        </div>
                      </div>
                    </c:forEach>
                  </div>
                </div>
              </div>
            </div>
            <div id="tab-2" class="tab-pane fade show p-0"></div>
            <div id="tab-3" class="tab-pane fade show p-0"></div>
            <div id="tab-4" class="tab-pane fade show p-0"></div>
            <div id="tab-5" class="tab-pane fade show p-0"></div>
          </div>
        </div>
      </div>
    </div>
    <jsp:include page="../layout/feature.jsp" />
    <jsp:include page="../layout/footer.jsp" />

    <a
      href="#"
      class="btn btn-primary border-3 border-primary rounded-circle back-to-top"
      ><i class="fa fa-arrow-up"></i
    ></a>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/client/lib/easing/easing.min.js"></script>
    <script src="/client/lib/waypoints/waypoints.min.js"></script>
    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

    <script src="/client/js/main.js"></script>
  </body>
</html>

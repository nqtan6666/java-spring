<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Dashboard - Hỏi Dân IT</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container p-2">
                                <div class="row ">
                                    <div class="col-md-6 col-12 mx-auto">
                                        <h3>User Detail</h3>
                                        <form:form method="post" action="/admin/users/update" modelAttribute="user">
                                            <div class="form-group mt-3 d-none">
                                                <form:input type="text" class="form-control" path="id" />
                                            </div>
                                            <div class="form-group mt-3">
                                                <label>Email Address</label>
                                                <form:input type="email" class="form-control" readonly="true"
                                                    path="email" placeholder="Enter email" />
                                            </div>
                                            <div class="form-group mt-3">
                                                <label>Phone Number</label>
                                                <form:input type="text" class="form-control" path="phone"
                                                    placeholder="Enter phone number" />
                                            </div>
                                            <div class="form-group mt-3">
                                                <label>Full Name</label>
                                                <form:input type="text" class="form-control" path="fullName"
                                                    placeholder="Enter full name" />
                                            </div>
                                            <div class="form-group mt-3">
                                                <label>Address</label>
                                                <form:input type="text" class="form-control" path="address"
                                                    placeholder="Enter address" />
                                            </div>
                                            <button type="submit" class="btn btn-primary mt-3">Submit</button>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/chart-area-demo.js"></script>
                <script src="/js/chart-bar-demo.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/datatables-simple-demo.js"></script>
            </body>

            </html>
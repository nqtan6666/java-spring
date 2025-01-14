<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <html lang="en">

            <head>
                <title>List User</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
                <link href="/css/demo.css" rel="stylesheet" />

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container p-2">
                    <div class="row">
                        <div class="col-12 mx-auto">
                            <div class="d-flex justify-content-between mb-2">
                                <h2>List User</h2>
                                <a href="/admin/users/create" class="btn btn-primary">
                                    Create user
                                </a>
                            </div>
                            <hr>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Email</th>
                                        <th>FullName</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listUser}" var="item">
                                        <tr>
                                            <td>${item.id}</td>
                                            <td>${item.email}</td>
                                            <td>${item.fullName}</td>
                                            <td>
                                                <div class="d-flex justify-content-center gap-1">
                                                    <a href="/admin/user/${item.id}" class="btn btn-primary">View</a>
                                                    <a href="/admin/user/delete/${item.id}"
                                                        class="btn btn-danger">Delete</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </body>
            <script></script>

            </html>
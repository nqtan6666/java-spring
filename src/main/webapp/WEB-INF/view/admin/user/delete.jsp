<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <html lang="en">

            <head>
                <title>Delete user</title>
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
                                <h2>Delete the user with id = ${id}</h2>
                            </div>
                            <hr>
                            <div class="alert alert-danger" role="alert">
                                Are you sure delete
                            </div>
                            <form:form action="/admin/user/delete" method="post">
                                <div class="form-group mt-3 d-none">
                                    <input type="text" class="form-control" name="id" value="${id}" />
                                </div>
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </body>
            <script></script>

            </html>
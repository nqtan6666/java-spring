<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <html lang="en">

            <head>
                <title>Create User</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <link href="/css/demo.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

            </head>

            <body>
                <div class="container p-2">
                    <div class="row ">
                        <div class="col-md-6 col-12 mx-auto">
                            <h3>Create User</h3>
                            <hr>
                            <form:form method="post" action="/admin/users/create" modelAttribute="newUser">
                                <div class="form-group mt-3">
                                    <label>Email Address</label>
                                    <form:input type="email" class="form-control" path="email"
                                        placeholder="Enter email" />
                                </div>
                                <div class="form-group mt-3">
                                    <label>Password</label>
                                    <form:input type="password" class="form-control" path="password"
                                        placeholder="Enter password" />
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
            </body>
            <script>
            </script>

            </html>
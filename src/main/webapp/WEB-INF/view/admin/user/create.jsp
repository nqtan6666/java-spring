<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <html lang="en">

        <head>
            <title>View Items</title>
            <!-- Latest compiled and minified CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <link href="/css/demo.css" rel="stylesheet">

            <!-- Latest compiled JavaScript -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        </head>

        <body>
            <div class="container p-2">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-6 col-md-12">
                        <h3 class="text-center">Create User</h3>
                        <form>
                            <div class="form-group mt-3">
                                <label for="mail">Email Address</label>
                                <input type="email" class="form-control" id="mail" placeholder="Enter email" />
                            </div>
                            <div class="form-group mt-3">
                                <label for="pass">Password</label>
                                <input type="password" class="form-control" id="pass" placeholder="Enter password" />
                            </div>
                            <div class="form-group mt-3">
                                <label for="phone">Phone Number</label>
                                <input type="text" class="form-control" id="phone" placeholder="Enter phone number" />
                            </div>
                            <div class="form-group mt-3">
                                <label for="fullname">Full Name</label>
                                <input type="text" class="form-control" id="fullname" placeholder="Enter full name" />
                            </div>
                            <div class="form-group mt-3">
                                <label for="address">Address</label>
                                <input type="text" class="form-control" id="address" placeholder="Enter address" />
                            </div>
                            <button type="submit" class="btn btn-primary w-100 mt-3">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>
        <script>
        </script>

        </html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%@include file="head.jsp"%>
    <body class="grad">
        <%@include file="/elements/navbar.jsp"%>
        <div class="container d-flex justify-content-center">
            <div class="row col-6 rounded align-self-center" style="background-color: #f7f7ff;">
                <div class="col-12 p-5 pb-4">
                    <form action="/authentication" method="post">
                        <div class="mb-3 ">
                            <label for="exampleInputEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail" name="email" aria-describedby="emailHelp">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword" name="password">
                        </div>
                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn btn-main w-50 mt-4">Log In</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

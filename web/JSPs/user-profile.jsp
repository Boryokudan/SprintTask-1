<%@ page import="main.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="head.jsp"%>
<body class="grad">
<%@include file="/elements/navbar.jsp"%>
<div class="container d-flex justify-content-center">
    <div class="row col-6 rounded align-self-center" style="background-color: #f7f7ff;">
        <div class="col-12 p-5 pb-4">
            <%
                User user = (User) request.getAttribute("user");
            %>
            <form>
                <div class="mb-3 text-center">
                    <h3>Welcome, <%= user.getFullName() %>!</h3>
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label">Name: </label>
                    <input type="text" class="form-control" id="name" name="name" value="<%= user.getFullName() %>" disabled>
                </div>
                <div class="mb-3 ">
                    <label for="exampleInputEmail" class="form-label">Email address:</label>
                    <input type="email" class="form-control" id="exampleInputEmail" name="email" value="<%= user.getEmail() %>" disabled>
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword" class="form-label">Password:</label>
                    <input type="password" class="form-control" id="exampleInputPassword" name="password" value="<%= user.getPassword() %>" disabled>
                </div>
                <button type="button" class="btn btn-main mb-3 align-self-center" data-bs-toggle="modal" data-bs-target="#editUserModal">
                    Edit
                </button>
            </form>
            <%@include file="edit-user-modal.jsp"%>
        </div>
    </div>
</div>
</body>
</html>

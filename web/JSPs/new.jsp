<%@ page import="java.util.ArrayList" %>
<%@ page import="main.Item" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../elements/head.jsp"%>
<html>
<%@include file="../elements/navbar.jsp"%>
<body class="grad">
<div class="container">
  <div class="row">
    <div class="col-6 mx-auto text-center" style="color: #2B2D42;">
      <h1>New!</h1>
      <h5>Browse our list of newly arrived products</h5>
    </div>
  </div>
  <div class="row col-8 mx-auto mt-5">
      <%
        ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");

        for (Item item : items) {
          String price = String.format("%.2f", item.getPrice());
      %>
      <div class="col-4">
        <div class="card bg-main p-1 m-1 my-3">
          <img src="../<%= item.getImageSource() %>" class="card-img-top" height="250" alt="item_image">
          <div class="card-body text-center">
            <h4 class="card-title mb-2"><%= item.getName() %></h4>
            <h5 class="card-price mb-2"><strong>$<%= price %></strong></h5><hr>
            <p class="card-text mb-2"><%= item.getDescription() %></p>
            <a href="#" class="btn btn-main mt-2 mb-2">Buy Now</a>
          </div>
        </div>
      </div>
      <%
        }
      %>
  </div>
</div>
<%@include file="../elements/footer.jsp"%>
</body>
</html>
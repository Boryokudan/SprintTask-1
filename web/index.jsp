<%@ page import="java.util.ArrayList" %>
<%@ page import="main.Item" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="JSPs/head.jsp"%>
<html>
    <body>
        <div class="container">
            <div class="row">
                    <%
                        ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");

                        for (Item item : items) {
                    %>
                            <div class="col-2 mt-3">
                                <div class="card p-1">
                                    <img src="https://lap.kz/wp-content/uploads/2020/10/apple-macboo-pro-touch-bar-15-retina-512gb-silver-4-1000x1000-1-300x300.png" class="card-img-top" alt="...">
                                    <div class="card-body text-center">
                                        <h4 class="card-title mb-2"><%= item.getName() %></h4><hr>
                                        <h5 class="card-price mb-2"><strong>$<%= item.getPrice() %></strong></h5>
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
    </body>
</html>
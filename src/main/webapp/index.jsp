<%--
  Created by IntelliJ IDEA.
  User: alexandrafossum
  Date: 2019-06-11
  Time: 09:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <%! int counter = 0;%>
    <title>Title</title>
</head>
<body style="background-color: lightskyblue">

<%@ include file="partials/navbar.jsp"%>

<% counter++;
if (counter == 1) {
    System.out.println(counter);
}
%>

<h1 class="text-center">This is my Adlister</h1>

<p class="text-center" style="padding: 15px">Page views: <%= counter %></p>

<%--<p class="text-justify">PATH: <%= request.getRequestURL() %></p>--%>
<%--<p class="text-justify">"name" parameter: <%= request.getParameter("name") %></p>--%>
<%--<p>USER-AGENT HEADER: <%= request.getHeader("user-agent")%></p>--%>

<%--<p>EL "name" parameter: ${param.name}</p>--%>
<%--<p>User-Agent header: ${header["user-agent"]}</p>--%>

<% request.setAttribute("menuItems", new String[]{"Home", "Contact", "Admin Dashboard"});%>
<% request.setAttribute("isAdmin", false);%>


<c:if test="${param.name == 'alexandra'}">

<main>
    <h4 class="text-center">I used to be Mormon</h4>
</main>

</c:if>

<c:if test="${param.name != 'alexandra'}">

    <main>
        <h4 class="text-center">Hey, you</h4>
    </main>

</c:if>


<%@ include file="partials/footer.jsp"%>


</body>
</html>

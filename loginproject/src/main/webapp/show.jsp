<%@page import="loginproject.model.User"%>

<html>

<body>

<%


User user =(User) request.getAttribute("user");
System.out.print(user);



%>


<table>

<tr>
<th>email</th><th>password</th>
</tr>


<tr>
<td><%=user.getEmail() %></td><td><%=user.getPassword() %></td>
</tr>
</table>
</body>
</html>
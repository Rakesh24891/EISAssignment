<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>User Store Application</title>
</head>
<body>
<a href="/RedirectWebApp/">Back</a>
		<h2 align="center">Near By Stations</h2>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h3>List of Users</h3></caption>
            <tr>
                <th>Name</th>
                <th>Station Number</th>
                <th>Latitude</th>
                <th>Longitude</th>
                  <th>Bike Stands</th>
                    <th>Available Bike Stands</th>
                      <th>Availabe Bikes</th>
                       <th>Distance</th>
            </tr>
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td><a href="/test/"><c:out value="${user.name}" /></a></td>
                    <td><c:out value="${user.stationNumber}" /></td>
                    <td><c:out value="${user.latitude}" /></td>
                    <td><c:out value="${user.longitude}" /></td>
                      <td><c:out value="${user.bikeStands}" /></td>
                        <td><c:out value="${user.availableStands}" /></td>
                          <td><c:out value="${user.availableBikes}" /></td>
                           <td><c:out value="${user.distance}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Being Java Guys | Spring DI Hello World</title>
<style>
body {
 font-size: 20px;
 color: teal;
 font-family: Calibri;
}

td {
 font-size: 15px;
 color: black;
 width: 100px;
 height: 22px;
 text-align: center;
}
.heading {
 font-size: 18px;
 color: white;
 font: bold;
 background-color: CadetBlue;
 border: thick;
}
</style>
</head>
<body>
 <center>
  
 
 
 <b>User List | Dream JAVA </b>
 

   
  

  <table border="1">
   <tr>
    <td class="heading">Sr. No.</td>
    <td class="heading">First Name</td>
    <td class="heading">Last Name</td>
    <td class="heading">User Name</td>
    <td class="heading">Mobile Number</td>
    <td class="heading">Edit</td>
    <td class="heading">Delete</td>
   </tr>
   <c:forEach var="user" items="${userList}">
    <tr>
     <td>${user.userId}</td>
     <td>${user.firstName}</td>
     <td>${user.lastName}</td>
     <td>${user.userName}</td>
     <td>${user.mobNumber}</td>
     <td><a href="edit?id=${user.userId}">Edit</a></td>
     <td><a href="delete?id=${user.userId}">Delete</a></td>
    </tr>
   </c:forEach>
   <tr><td colspan="7"><a href="register">Add New User</a></td></tr>
  </table>

 </center>
</body>
</html>

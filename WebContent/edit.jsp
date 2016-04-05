<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>Dream Java  | Spring JDBCTemplate</title>
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
  
 
 
 <b>Edit User Details | Dream JAVA </b>
 

  <div>
   <form:form method="post" action="update" modelAttribute="user">
    <table>
     <tr>
      <td>First Name :</td>
      <td><form:input path="firstName"
        value="${map.user.firstName}" />
      </td>
     </tr>
     <tr>
      <td>Last Name :</td>
      <td><form:input path="lastName" value="${map.user.lastName}" />
      </td>
     </tr>
    <tr>
      <td>Mobile Number:</td>
      <td><form:input path="mobNumber" value="${map.user.mobNumber}" />
      </td>
     </tr>

      <tr>
      <td>User Name :</td>
      <td><form:input path="userName" value="${map.user.userName}" />
      </td>
     </tr>
     </tr>
     <tr>
      <td> </td>
      <td><input type="submit" value="Save" />
      </td>
     </tr>
    </table>
    <form:hidden path="userId" value="${map.user.userId}" />

   </form:form>
  </div>
 </center>
</body>
</html>

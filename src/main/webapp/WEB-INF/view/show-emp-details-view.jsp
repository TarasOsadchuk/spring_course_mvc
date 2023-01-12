<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, you are WELCOME!!!</h2>

<br>
<br>
<br>

<%--<h2>Your name: ${param.employeeName} </h2>--%>

<h3>Your name: ${employee.name} </h3>
<h3>Your surname: ${employee.surname}</h3>
<h3>Your salary: ${employee.salary}</h3>
<h3>Your Department: ${employee.department}</h3>
<h3>Your car: ${employee.carBrand}</h3>
<h3>language(s):</h3>
<ul>

    <c:forEach var="lang" items="${employee.languages}">

        <h3><li>${lang}</li></h3>

    </c:forEach>

</ul>
<h3>Your phone number: ${employee.phoneNumber}</h3>
<h3>Your email: ${employee.email}</h3>
</body>

</html>
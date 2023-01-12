<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, Please enter your details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee">



    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    Department
    <form:select path="department">
        <%--        <form:option value="Information Technology" label="IT"/>--%>
        <%--        <form:option value="Human Resources" label="HR"/>--%>
        <%--        <form:option value="Salary" label="Salary"/>--%>
        <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>
    Which car do you want?
    <%--    BMW<from:radiobutton path="carBrand" value="BMW"/>--%>
    <%--    Audi<from:radiobutton path="carBrand" value="Audi"/>--%>
    <%--    Mercedes-Benz<from:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>
    <from:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Foreign Language(s)
    <%--    EN <form:checkbox path="languages" value="English"/>--%>
    <%--    FR <form:checkbox path="languages" value="French"/>--%>
    <%--    UK <form:checkbox path="languages" value="Ukrainian"/>--%>
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>
    <input type="submit" value="OK">

</form:form>

</body>

</html>
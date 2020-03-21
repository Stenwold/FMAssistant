<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>

<html>
    <head>
        <title>List of footballers</title>
    </head>
    <body>
            <h2>Basic information about footballers in database:</h2>
            <table>
                <tr>
                    <th>Footballer</th>
                    <th>Position</th>
                    <th>Age</th>
                    <th>Club</th>
                </tr>

                <c:forEach var="tempFootballer" items="${footballersList}">
                    <tr>
                        <td>${tempFootballer.name}</td>
                        <td>${tempFootballer.position}</td>
                        <td>${tempFootballer.age}</td>
                        <td>${tempFootballer.club}</td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>
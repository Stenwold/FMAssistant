<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
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
                    <th>Defending</th>
                    <th>Appearances this season</th>
                </tr>

                <c:forEach var="tempFootballer" items="${footballersList}" varStatus="counter">
                    <tr>
                        <td>${tempFootballer.name}</td>
                        <td>${tempFootballer.position}</td>
                        <td>${tempFootballer.age}</td>
                        <td>${tempFootballer.club}</td>
                        <td>${footballerAttributes[counter.index].defending}</td>
                        <td>${footballerStats[counter.index].firstTeamApps}</td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>
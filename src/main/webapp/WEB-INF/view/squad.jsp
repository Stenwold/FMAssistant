<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML>

<html>
    <head>
        <!--loading styles for table and top bar -->
        <link type="text/css"
              rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/table.css">

        <link type="text/css"
              rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/navigation-top-bar.css">

        <title>List of footballers</title>
    </head>
    <body>
    <div id="placeholder" style="width:auto;height:100vh;background: #d4fafa;
    font-family: Arial, Helvetica, sans-serif;">
        <div class="topnav">
            <a href="#home">Home</a>
            <a class="active" href="#squad">Squad</a>
            <a href="#scouting">Scouting</a>
            <a href="#coaches">Coaches</a>
        </div>

    <h2 style="padding-left: 20px">Basic information about footballers in database:</h2>
            <table class = customTable>
                <thead>
                    <tr>
                        <th>Footballer</th>
                        <th>Position</th>
                        <th>Age</th>
                        <th>Club</th>
                        <th>Defending</th>
                        <th>Appearances this season</th>
                    </tr>
                </thead>
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
    </div>
    </body>
</html>
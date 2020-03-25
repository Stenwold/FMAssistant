<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML>

<html>
<head>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/table.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/navigation-top-bar.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/select.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/button.css">

    <title>Scouting page</title>
</head>
<body>
<div id="placeholder" style="width:auto;height:100vh;background: #d4fafa;
            font-family: Arial, Helvetica, sans-serif;">
    <div class="topnav">
        <a href="${pageContext.request.contextPath}/test/Home">Home</a>
        <a href="${pageContext.request.contextPath}/test/Squad">Squad</a>
        <a class="active" href="${pageContext.request.contextPath}/test/Scouting">Scouting</a>
        <a href="${pageContext.request.contextPath}/test/Coaches">Coaches</a>
    </div>

    <h2 style="padding-left: 20px">Scouting network</h2>

    <!--surround the select box with a "custom-select" DIV element. Remember to set the width:-->
    <form action="${pageContext.request.contextPath}/test/scoutPlayers"  method="post">
        <div class="custom-select" style="width:200px; padding-left: 20px;">
                <select name="positions" id = 1>
                    <option value=null>Filter positions:</option>
                    <option value="ALL">Select all</option>
                    <option value="GK">Goalkeeers</option>
                    <option value="CB">Central defenders</option>
                    <option value="FB">Fullback defenders</option>
                    <option value="CM">Central midfielders</option>
                    <option value="CAM">Central attacking midfielders</option>
                    <option value="W">Wingers</option>
                    <option value="ST">Strikers</option>
                </select>
        </div>

    <!--surround the select box with a "custom-select" DIV element. Remember to set the width:-->
    <div style="height: 20px"></div>
    <div class="custom-select" style="width:200px; padding-left: 20px;">
        <select name="status">
            <option value="0">Filter list type:</option>
            <option value="1">Shortlist</option>
            <option value="2">League Players</option>
            <option value="3">Best Players</option>
        </select>
    </div>
        <div style="padding-left: 20px; padding-top: 20px">
            <input type="submit" value="Search">
        </div>
    </form>
    <div style="height: 20px"></div>
    <table class = "customTable">
        <thead>
        <tr>
            <th>Footballer</th>
            <th>Position</th>
            <th>Age</th>
            <th>Club</th>
            <th>Rate</th>
            <th>Value</th>
            <th>Contract</th>
            </tr>
        </thead>
    </table>
</div>
<script src="${pageContext.request.contextPath}/resources/selecting.js"></script>
</body>
</html>
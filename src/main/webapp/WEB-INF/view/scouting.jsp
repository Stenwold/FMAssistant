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
    <div class="custom-select" style="width:200px; padding-left: 20px;">
        <select name="positions">
            <option value="0">Filter positions:</option>
            <option value="1">Select all</option>
            <option value="2">Goalkeeers</option>
            <option value="3">Central defenders</option>
            <option value="4">Fullback defenders</option>
            <option value="5">Central midfielders</option>
            <option value="6">Central attacking midfielders</option>
            <option value="7">Wingers</option>
            <option value="8">Strikers</option>
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

    <script src="${pageContext.request.contextPath}/resources/selecting.js"></script>



    <div class="myButton" style="padding-top: 20px; width:200px; padding-left: 20px;">
        <c:url var="submitSearching" value="/test/scoutPlayers">
            <c:param name="requiredPosition" value=""/>
            <c:param name="requiredStatus" value=""/>
        </c:url>
        <a href="${submitSearching}"> Search</a>
    </div>


    <table class = customTable>
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
</body>
</html>
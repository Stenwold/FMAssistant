<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML>

<html>
<head>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/navigation-top-bar.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/select.css">

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
        <select>
            <option value="0">Filter positions:</option>
            <option value="1">Goalkeeers</option>
            <option value="2">Central defenders</option>
            <option value="3">Fullback defenders</option>
            <option value="4">Central midfielders</option>
            <option value="5">Central attacking midfielders</option>
            <option value="6">Wingers</option>
            <option value="7">Fast strikers</option>
            <option value="8">Strong strikers</option>
        </select>
    </div>

    <!--surround the select box with a "custom-select" DIV element. Remember to set the width:-->
    <div style="height: 20px"></div>
    <div class="custom-select" style="width:200px; padding-left: 20px;">
        <select>
            <option value="0">Filter list type:</option>
            <option value="1">Shortlist</option>
            <option value="2">League Players</option>
            <option value="3">Best Players</option>
        </select>
    </div>

    <script src="${pageContext.request.contextPath}/resources/selecting.js"></script>
</div>
</body>
</html>
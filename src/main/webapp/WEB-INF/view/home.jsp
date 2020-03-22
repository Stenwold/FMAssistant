<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML>

<html>
    <head>
        <link type="text/css"
              rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/navigation-top-bar.css">

        <title>FM Assistant home page</title>
    </head>
    <body>
        <div id="placeholder" style="width:auto;height:100vh;background: #d4fafa;
            font-family: Arial, Helvetica, sans-serif;">
            <div class="topnav">
                <a class="active" href="${pageContext.request.contextPath}/test/Home">Home</a>
                <a href="${pageContext.request.contextPath}/test/Squad">Squad</a>
                <a href="${pageContext.request.contextPath}/test/Scouting">Scouting</a>
                <a href="${pageContext.request.contextPath}/test/Coaches">Coaches</a>
            </div>
        </div>
    </body>
</html>
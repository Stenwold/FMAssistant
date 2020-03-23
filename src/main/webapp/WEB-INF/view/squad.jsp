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

        <link type="text/css"
              rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/position-badges.css">

        <title>Squad management</title>
    </head>
    <body>
    <div id="placeholder" style="width:auto;height:100vh;background: #d4fafa;
    font-family: Arial, Helvetica, sans-serif;">
        <div class="topnav">
            <a href="${pageContext.request.contextPath}/test/Home">Home</a>
            <a class="active" href="${pageContext.request.contextPath}/test/Squad">Squad</a>
            <a href="${pageContext.request.contextPath}/test/Scouting">Scouting</a>
            <a href="${pageContext.request.contextPath}/test/Coaches">Coaches</a>
        </div>

        <h2 style="padding-left: 20px">First Team Table - fixed size</h2>
            <table class = customTable>
                <thead>
                    <tr>
                        <th style="width:60px"></th>
                        <th>Footballer</th>
                        <th>Team status</th>
                        <th>Age</th>
                        <th>Rate</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tr>
                    <td><div class="positionbadge" id="gk">GK</div></td>
                    <td>${footballersList[0].name}</td>
                    <td>${footballersList[0].teamStatus}</td>
                    <td></td>
                    <td>
                        <!-- construct an "update" link with customer id -->
                        <c:url var="updateLink" value="/test/changeTeamStatus">
                            <c:param name="footballerId" value="${footballersList[0].id}" />
                            <c:param name="newStatus" value="U23/Reserves"/>
                        </c:url>
                        <a href="${updateLink}">Move to U23</a>

                        <!-- construct an "update" link with customer id -->
                        <c:url var="updateLink" value="/test/changeTeamStatus">
                            <c:param name="footballerId" value="${footballersList[0].id}" />
                            <c:param name="newStatus" value="Loan"/>
                        </c:url>
                        <a href="${updateLink}">Move to Loan</a>

                        <!-- construct an "update" link with customer id -->
                        <c:url var="updateLink" value="/test/changeTeamStatus">
                            <c:param name="footballerId" value="${footballersList[0].id}" />
                            <c:param name="newStatus" value="Not wanted"/>
                        </c:url>
                        <a href="${updateLink}">Move to Not wanted</a>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="gk">GK</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cb">CB</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cb">CB</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cb">CB</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cb">CB</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="fb">RB</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="fb">RB</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="fb">LB</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="fb">LB</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cm">CDM</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cm">DLP</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cm">B2B</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cm">MEZ</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cam">CAM</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cam">CAM</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="w">RW</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="w">RW</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="w">LW</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="w">LW</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="st">ST</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="st">ST</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="res">CB</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="res">RW</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="res">ST</div></td>
                    <td>Placeholder</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        <h2 style="padding-left: 20px">U23/Reserves Team Table :</h2>

        <table class = customTable>
            <thead>
            <tr>
                <th>Footballer</th>
                <th>Position</th>
                <th>Age</th>
                <th>Club</th>
                <th>Rate</th>
                <th>Team Status</th>
                <th>Mobility</th>
            </tr>
            </thead>
            <c:forEach var="tempFootballer" items="${footballersList}" varStatus="counter">
                <c:if test="${tempFootballer.teamStatus =='U23/Reserves'}">
                    <tr>
                        <td>${tempFootballer.name}</td>
                        <td>${tempFootballer.position}</td>
                        <td>${tempFootballer.age}</td>
                        <td>${tempFootballer.club}</td>
                        <td>Not calculated yet</td>
                        <td>${tempFootballer.teamStatus}</td>
                        <td>${footballerAttributes[counter.index].mobility}</td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>
        <h2 style="padding-left: 20px">Loaned/for loan players Table :</h2>

        <table class = customTable>
            <thead>
            <tr>
                <th>Footballer</th>
                <th>Position</th>
                <th>Age</th>
                <th>Club</th>
                <th>Rate</th>
                <th>Team Status</th>
                <th>Mobility</th>
            </tr>
            </thead>
            <c:forEach var="tempFootballer" items="${footballersList}" varStatus="counter">
                <c:if test="${tempFootballer.teamStatus =='Loan'}">
                    <tr>
                        <td>${tempFootballer.name}</td>
                        <td>${tempFootballer.position}</td>
                        <td>${tempFootballer.age}</td>
                        <td>${tempFootballer.club}</td>
                        <td>Not calculated yet</td>
                        <td>${tempFootballer.teamStatus}</td>
                        <td>${footballerAttributes[counter.index].mobility}</td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>
        <h2 style="padding-left: 20px">Not wanted players Table:</h2>

        <table class = customTable>
            <thead>
            <tr>
                <th>Footballer</th>
                <th>Position</th>
                <th>Age</th>
                <th>Club</th>
                <th>Rate</th>
                <th>Team Status</th>
                <th>Mobility</th>
            </tr>
            </thead>
            <c:forEach var="tempFootballer" items="${footballersList}" varStatus="counter">
                <c:if test="${tempFootballer.teamStatus =='Not wanted'}">
                    <tr>
                        <td>${tempFootballer.name}</td>
                        <td>${tempFootballer.position}</td>
                        <td>${tempFootballer.age}</td>
                        <td>${tempFootballer.club}</td>
                        <td>Not calculated yet</td>
                        <td>${tempFootballer.teamStatus}</td>
                        <td>${footballerAttributes[counter.index].mobility}</td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>
    </div>
    </body>
</html>
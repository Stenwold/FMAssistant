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

        <link type="text/css"
              rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/button.css">

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
                        <th style="width:40px">Rate</th>
                        <th style="width:180px">Name</th>
                        <th style="width:40px">Age</th>
                        <th style="width:40px">Nat</th>
                        <th style="width:40px">Val</th>
                        <th style="width:40px">Cont</th>
                        <th style="width:40px">Wag</th>
                        <th style="width:40px">HG</th>
                        <th style="width:40px">YHG</th>
                        <th></th>
                        <th style="width:260px">Actions</th>
                    </tr>
                </thead>
                <c:forEach var="Footballer" items="${firstTeamFootballers}" varStatus="counter">
                    <tr>
                        <td>
                       <!--bit ugly way, but it still takes less code than write 25 rows for each player individually-->

                            <c:set var="index" value="${counter.index}"/>
                            <c:choose>
                                <c:when test="${index <= 1}">
                                    <div class="positionbadge" id="gk">
                                        <c:if test="${Footballer!=null}">
                                            ${Footballer.position}
                                        </c:if>
                                        <c:if test="${Footballer==null}">
                                            GK
                                        </c:if>
                                    </div>
                                </c:when>
                                <c:when test="${(index >= 2)&&(index <=5) }">
                                    <div class="positionbadge" id="cb">
                                        <c:if test="${Footballer!=null}">
                                            ${Footballer.position}
                                        </c:if>
                                        <c:if test="${Footballer==null}">
                                            CB
                                        </c:if>
                                    </div>
                                </c:when>
                                <c:when test="${(index >= 6)&&(index <=9)}">
                                    <div class="positionbadge" id="fb">
                                        <c:if test="${Footballer!=null}">
                                            ${Footballer.position}
                                        </c:if>
                                        <c:if test="${Footballer==null}">
                                            FB
                                        </c:if>
                                    </div>
                                </c:when>
                                <c:when test="${(index >= 10)&&(index <=13)}">
                                    <div class="positionbadge" id="cm">
                                        <c:if test="${Footballer!=null}">
                                            ${Footballer.position}
                                        </c:if>
                                        <c:if test="${Footballer==null}">
                                            CM
                                        </c:if>
                                    </div>
                                </c:when>
                                <c:when test="${(index >= 14)&&(index <=15)}">
                                    <div class="positionbadge" id="cam">
                                        <c:if test="${Footballer!=null}">
                                            ${Footballer.position}
                                        </c:if>
                                        <c:if test="${Footballer==null}">
                                            CAM
                                        </c:if>
                                    </div>
                                </c:when>
                                <c:when test="${(index >= 16)&&(index <=19)}">
                                    <div class="positionbadge" id="w">
                                        <c:if test="${Footballer!=null}">
                                            ${Footballer.position}
                                        </c:if>
                                        <c:if test="${Footballer==null}">
                                            W
                                        </c:if>
                                    </div>
                                </c:when>
                                <c:when test="${(index >= 20)&&(index <=21)}">
                                    <div class="positionbadge" id="st">
                                        <c:if test="${Footballer!=null}">
                                            ${Footballer.position}
                                        </c:if>
                                        <c:if test="${Footballer==null}">
                                            ST
                                        </c:if>
                                    </div>
                                </c:when>
                                <c:when test="${(index >= 22)&&(index <=24)}">
                                    <div class="positionbadge" id="res">
                                        <c:if test="${Footballer!=null}">
                                            ${Footballer.position}
                                        </c:if>
                                        <c:if test="${Footballer==null}">
                                            RES
                                        </c:if>
                                    </div>
                                </c:when>
                            </c:choose>
                        </td>
                        <td>${Footballer.positionRating}</td>
                        <td>${Footballer.name}</td>
                        <td>${Footballer.age}</td>
                        <td>${Footballer.country}</td>
                        <td>
                            <c:if test="${Footballer!=null}">
                                ${Footballer.value/1000000} M
                            </c:if>
                        </td>
                        <td>${Footballer.contract}</td>
                        <td>
                            <c:if test="${Footballer!=null}">
                                ${Footballer.wage/1000} k
                            </c:if>
                        </td>
                        <td>${Footballer.hgStatus}</td>
                        <td>${Footballer.yearsToHG}</td>
                        <td></td>
                        <td>
                            <c:if test="${Footballer!=null}">
                                <div class="myButton">
                                    <c:url var="updateLink" value="/test/changeTeamStatus">
                                        <c:param name="footballerId" value="${Footballer.id}" />
                                        <c:param name="newStatus" value="U23/Reserves"/>
                                    </c:url>
                                    <a href="${updateLink}">> U23</a>
                                </div>

                                <div class="myButton">
                                    <c:url var="updateLink" value="/test/changeTeamStatus">
                                        <c:param name="footballerId" value="${Footballer.id}" />
                                        <c:param name="newStatus" value="Loan"/>
                                    </c:url>
                                    <a href="${updateLink}">> Loan</a>
                                </div>

                                <div class="myButton">
                                    <c:url var="updateLink" value="/test/changeTeamStatus">
                                        <c:param name="footballerId" value="${Footballer.id}" />
                                        <c:param name="newStatus" value="Not wanted"/>
                                    </c:url>
                                    <a href="${updateLink}">> Not Wanted </a>
                                </div>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
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
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach var="tempFootballer" items="${restFootballers}" varStatus="counter">
                <c:if test="${tempFootballer.teamStatus =='U23/Reserves'}">
                    <tr>
                        <td>${tempFootballer.name}</td>
                        <td>${tempFootballer.position}</td>
                        <td>${tempFootballer.age}</td>
                        <td>${tempFootballer.club}</td>
                        <td>Not calculated yet</td>
                        <td>${tempFootballer.teamStatus}</td>
                        <td>${restAttr[counter.index].mobility}</td>
                        <td>
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${tempFootballer.id}" />
                                    <c:param name="newStatus" value="First Team"/>
                                </c:url>
                                <a href="${updateLink}">> First Team</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${tempFootballer.id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${tempFootballer.id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </td>
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
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach var="tempFootballer" items="${restFootballers}" varStatus="counter">
                <c:if test="${tempFootballer.teamStatus =='Loan'}">
                    <tr>
                        <td>${tempFootballer.name}</td>
                        <td>${tempFootballer.position}</td>
                        <td>${tempFootballer.age}</td>
                        <td>${tempFootballer.club}</td>
                        <td>Not calculated yet</td>
                        <td>${tempFootballer.teamStatus}</td>
                        <td>${restAttr[counter.index].mobility}</td>
                        <td>
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${tempFootballer.id}" />
                                    <c:param name="newStatus" value="First Team"/>
                                </c:url>
                                <a href="${updateLink}">> First Team</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${tempFootballer.id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23/Reserves</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${tempFootballer.id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </td>
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
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach var="tempFootballer" items="${restFootballers}" varStatus="counter">
                <c:if test="${tempFootballer.teamStatus =='Not wanted'}">
                    <tr>
                        <td>${tempFootballer.name}</td>
                        <td>${tempFootballer.position}</td>
                        <td>${tempFootballer.age}</td>
                        <td>${tempFootballer.club}</td>
                        <td>Not calculated yet</td>
                        <td>${tempFootballer.teamStatus}</td>
                        <td>${restAttr[counter.index].mobility}</td>
                        <td>
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${tempFootballer.id}" />
                                    <c:param name="newStatus" value="First Team"/>
                                </c:url>
                                <a href="${updateLink}">> First Team</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${tempFootballer.id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23/Reserves</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${tempFootballer.id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>
    </div>
    </body>
</html>
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
                        <th>Footballer</th>
                        <th>Team status</th>
                        <th>Age</th>
                        <th>Rate</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tr>
                    <td><div class="positionbadge" id="gk">GK</div></td>
                    <td>${firstTeamFootballers[0].name}</td>
                    <td>${firstTeamFootballers[0].teamStatus}</td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[0]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[0].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[0].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[0].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="gk">GK</div></td>
                    <td>${firstTeamFootballers[1].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[1]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[1].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[1].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[1].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cb">CB</div></td>
                    <td>${firstTeamFootballers[2].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[2]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[2].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[2].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[2].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cb">CB</div></td>
                    <td>${firstTeamFootballers[3].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[3]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[3].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[3].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[3].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cb">CB</div></td>
                    <td>${firstTeamFootballers[4].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[4]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[4].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[4].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[4].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cb">CB</div></td>
                    <td>${firstTeamFootballers[5].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[5]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[5].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[5].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[5].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="fb">RB</div></td>
                    <td>${firstTeamFootballers[6].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[6]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[6].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[6].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[6].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="fb">RB</div></td>
                    <td>${firstTeamFootballers[7].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[7]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[7].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[7].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[7].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="fb">LB</div></td>
                    <td>${firstTeamFootballers[8].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[8]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[8].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[8].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[8].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="fb">LB</div></td>
                    <td>${firstTeamFootballers[9].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[9]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[9].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[9].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[9].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cm">CDM</div></td>
                    <td>${firstTeamFootballers[10].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[10]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[10].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[10].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[10].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cm">DLP</div></td>
                    <td>${firstTeamFootballers[11].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[11]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[11].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[11].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[11].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cm">B2B</div></td>
                    <td>${firstTeamFootballers[12].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[12]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[12].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[12].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[12].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cm">MEZ</div></td>
                    <td>${firstTeamFootballers[13].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[13]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[13].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[13].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[13].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cam">CAM</div></td>
                    <td>${firstTeamFootballers[14].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[14]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[14].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[14].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[14].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="cam">CAM</div></td>
                    <td>${firstTeamFootballers[15].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[15]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[15].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[15].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[15].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="w">RW</div></td>
                    <td>${firstTeamFootballers[16].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[16]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[16].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[16].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[16].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="w">RW</div></td>
                    <td>${firstTeamFootballers[17].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[17]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[17].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[17].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[17].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="w">LW</div></td>
                    <td>${firstTeamFootballers[18].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[18]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[18].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[18].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[18].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="w">LW</div></td>
                    <td>${firstTeamFootballers[19].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[19]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[19].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[19].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[19].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="st">ST</div></td>
                    <td>${firstTeamFootballers[20].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[20]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[20].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[20].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[20].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td><div class="positionbadge" id="st">ST</div></td>
                    <td>${firstTeamFootballers[21].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[21]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[21].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[21].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[21].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="positionbadge" id="res">
                            <c:if test="${firstTeamFootballers[22]!=null}">
                                ${firstTeamFootballers[22].position}
                            </c:if>
                            <c:if test="${firstTeamFootballers[22]==null}">
                                RES
                            </c:if>
                        </div>
                    </td>
                    <td>${firstTeamFootballers[22].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[22]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[22].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[22].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[22].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="positionbadge" id="res">
                            <c:if test="${firstTeamFootballers[23]!=null}">
                                ${firstTeamFootballers[23].position}
                            </c:if>
                            <c:if test="${firstTeamFootballers[23]==null}">
                                RES
                            </c:if>
                        </div>
                    </td>
                    <td>${firstTeamFootballers[23].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[23]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[23].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[23].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[23].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="positionbadge" id="res">
                            <c:if test="${firstTeamFootballers[24]!=null}">
                                ${firstTeamFootballers[24].position}
                            </c:if>
                            <c:if test="${firstTeamFootballers[24]==null}">
                                RES
                            </c:if>
                        </div>
                    </td>
                    <td>${firstTeamFootballers[24].name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <c:if test="${firstTeamFootballers[24]!=null}">
                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[24].id}" />
                                    <c:param name="newStatus" value="U23/Reserves"/>
                                </c:url>
                                <a href="${updateLink}">> U23</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[24].id}" />
                                    <c:param name="newStatus" value="Loan"/>
                                </c:url>
                                <a href="${updateLink}">> Loan</a>
                            </div>

                            <div class="myButton">
                                <c:url var="updateLink" value="/test/changeTeamStatus">
                                    <c:param name="footballerId" value="${firstTeamFootballers[24].id}" />
                                    <c:param name="newStatus" value="Not wanted"/>
                                </c:url>
                                <a href="${updateLink}">> Not Wanted </a>
                            </div>
                        </c:if>
                    </td>
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
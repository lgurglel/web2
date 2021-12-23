<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table centering" border="1">
    <thead class="thead-dark">
    <tr>
        <th>X</th>
        <th>Y</th>
        <th>R</th>
        <th>Current time</th>
        <th>Result</th>
    </tr>
    </thead>
    <tbody>
        <jsp:useBean id="entries" scope="session" class="models.Entries"/>
        <c:forEach var="entry" items="${entries.entries}">
            <tr class="table-row">
                <td>${entry.x}</td>
                <td>${entry.y}</td>
                <td>${entry.r}</td>
                <td>${entries.simpleDateFormat.format(entry.queryTime)}</td>
                <td>${entry.result ? "<div style=\"color: green\">Попал!</div>" :
                            "<div style=\"color: red\">Мимо!</div>"}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<%@ page import="com.example.Student" %>
<%@ page import="com.example.Group" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Панель Студента</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
    <h1>Панель Студента</h1>

    <h2>Пошук Студентів</h2>
    <form method="post" action="<%=request.getContextPath()%>/student">
        Тип Пошуку:
        <select name="searchType">
            <option value="byLastName">За Прізвищем</option>
            <option value="byGroupName">За Назвою Групи</option>
        </select><br>
        Прізвище: <input type="text" name="lastName"><br>
        Назва Групи: <input type="text" name="groupName"><br>
        <input type="submit" value="Шукати">
    </form>

    <h2>Вибір Групи</h2>
    <form method="post" action="<%=request.getContextPath()%>/student">
        Виберіть Групу для відображення студентів:
        <select name="groupName">
            <% List<Group> groups = (List<Group>) request.getAttribute("groups"); %>
            <% if (groups != null) { %>
            <% for (Group group : groups) { %>
            <option value="<%= group.getName() %>"><%= group.getName() %></option>
            <% } %>
            <% } %>
        </select><br>
        <input type="submit" name="searchType" value="Отримати список">
    </form>

    <% List<Student> searchResults = (List<Student>) request.getAttribute("searchResults"); %>
    <% if (searchResults != null && !searchResults.isEmpty()) { %>
    <h2>Результати Пошуку</h2>
    <table border="1">
        <thead>
        <tr>
            <th>Ім'я</th>
            <th>Прізвище</th>
            <th>Група</th>
        </tr>
        </thead>
        <tbody>
        <% for (Student student : searchResults) { %>
        <tr>
            <td><%= student.getFirstName() %></td>
            <td><%= student.getLastName() %></td>
            <td><%= student.getGroup() != null ? student.getGroup().getName() : "Без Групи" %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <% } else if (searchResults != null) { %>
    <p>Результатів не знайдено.</p>
    <% } %>

    <a href="${pageContext.request.contextPath}/admin">Перейти до Панелі Деканату</a>
</div>
</body>
</html>
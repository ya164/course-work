<%@ page import="com.example.Group" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Панель Деканату</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
    <h1>Панель Деканату</h1>
    <% String message = (String) request.getAttribute("message");
        String messageClass = (String) request.getAttribute("messageClass");
        if (message != null && messageClass != null) { %>
    <div class="<%= messageClass %>">
        <p><%= message %></p>
    </div>
    <% } %>

    <h2>Створити Групу</h2>
    <form method="post">
        <input type="hidden" name="action" value="createGroup">
        Назва Групи: <input type="text" name="groupName"><br>
        <input type="submit" value="Створити">
    </form>

    <h2>Створити Студента</h2>
    <form method="post">
        <input type="hidden" name="action" value="createStudent">
        Назва Групи: <select name="groupName">
        <% for (Group group : (List<Group>) request.getAttribute("groups")) { %>
        <option value="<%= group.getName() %>"><%= group.getName() %></option>
        <% } %>
    </select><br>
        Ім'я: <input type="text" name="firstName"><br>
        Прізвище: <input type="text" name="lastName"><br>
        <input type="submit" value="Створити">
    </form>

    <h2>Редагувати Групу</h2>
    <form method="post">
        <input type="hidden" name="action" value="editGroup">
        Назва Групи: <select name="groupName">
        <% for (Group group : (List<Group>) request.getAttribute("groups")) { %>
        <option value="<%= group.getName() %>"><%= group.getName() %></option>
        <% } %>
    </select><br>
        Нова Назва Групи: <input type="text" name="newGroupName"><br>
        <input type="submit" value="Редагувати">
    </form>

    <h2>Видалити Групу</h2>
    <form method="post">
        <input type="hidden" name="action" value="deleteGroup">
        Назва Групи: <select name="groupName">
        <% for (Group group : (List<Group>) request.getAttribute("groups")) { %>
        <option value="<%= group.getName() %>"><%= group.getName() %></option>
        <% } %>
    </select><br>
        <input type="submit" value="Видалити">
    </form>

    <h2>Редагувати Студента</h2>
    <form method="post">
        <input type="hidden" name="action" value="editStudent">
        Назва Групи: <select name="groupName">
        <% for (Group group : (List<Group>) request.getAttribute("groups")) { %>
        <option value="<%= group.getName() %>"><%= group.getName() %></option>
        <% } %>
    </select><br>
        Ім'я: <input type="text" name="firstName"><br>
        Прізвище: <input type="text" name="lastName"><br>
        Нове Ім'я: <input type="text" name="newFirstName"><br>
        Нове Прізвище: <input type="text" name="newLastName"><br>
        <input type="submit" value="Редагувати">
    </form>

    <h2>Видалити Студента</h2>
    <form method="post">
        <input type="hidden" name="action" value="deleteStudent">
        Назва Групи: <select name="groupName">
        <% for (Group group : (List<Group>) request.getAttribute("groups")) { %>
        <option value="<%= group.getName() %>"><%= group.getName() %></option>
        <% } %>
    </select><br>
        Ім'я: <input type="text" name="firstName"><br>
        Прізвище: <input type="text" name="lastName"><br>
        <input type="submit" value="Видалити">
    </form>

    <a href="${pageContext.request.contextPath}/student">Перейти до Панелі Студента</a>
</div>
</body>
</html>


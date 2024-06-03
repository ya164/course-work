<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Головна Сторінка</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
    <h1>Ласкаво просимо до нашого веб-додатку!</h1>
    <p><a href="student">Студентська Панель</a></p>
    <form action="login" method="post">
        <input type="password" name="password" placeholder="Введіть пароль">
        <input type="submit" value="Увійти в панель деканату">
    </form>
    <% if (request.getAttribute("errorMessage") != null) { %>
    <div class="error-message">
        <%= request.getAttribute("errorMessage") %>
    </div>
    <% } %>
    <div class="welcome-section">
        <h2>Ласкаво просимо!</h2>
        <p>Представляємо наш новий веб-застосунок: відчуйте максимальну функціональність та зручність одночасно! Наша платформа розроблена з думкою про студентів, надаючи їм всі необхідні інструменти. Більше ніяких проблем з пошуком студентів та отриманням списків груп!</p>
    </div>
    <div class="reviews-section">
        <h2>Відгуки студентів</h2>
        <div class="review">
            <p><strong>Ярослав Лось</strong> <span class="stars">★★★★★</span>: "Неймовірний веб-застосунок, ніколи ще таким зручним не користувався!"</p>
        </div>
        <div class="review">
            <p><strong>Рой Бабайцев</strong> <span class="stars">★★★★☆</span>: "Дуже задоволений функціоналом, хоча іноді зустрічаються невеликі збої, але команда підтримки завжди на зв'язку!"</p>
        </div>
        <div class="review">
            <p><strong>Максим Лихогуб</strong> <span class="stars">★★★★★</span>: "Система ідеально підходить для наших академічних потреб. Все працює швидко та ефективно!"</p>
        </div>
    </div>
</div>
</body>
</html>


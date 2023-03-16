<?php
//чтобы получить доступ из нашей странички
header('Access-Control-Allow-Origin: *');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News-Laravel</title>

@vite('resources/css/app.css')


</head>

<body>

<header>
    <div class="menu flex-box-start">
        <img src="img/logo.png" class="logoMenu marg-right">
        <div class="nav flex-box">
            <div class="bd-btm cat marg-right pointer" onclick="renderAllNews()">ГЛАВНАЯ</div>
            <div class="cat marg-right pointer" onclick="renderNewsCategory('Технологии')">ТЕХНОЛОГИИ</div>
            <div class="cat marg-right pointer" onclick="renderNewsCategory('Спорт')">СПОРТ</div>
            <div class="cat marg-right pointer" onclick="renderNewsCategory('Космос')">КОСМОС</div>
        </div>
    <div>
</header>

<main>

    <div id="news">

  </div>

</main>

<footer>
    <div class="menu flex-box-start jc-center">Проект с использованием Docker и Laravel v{{Illuminate\Foundation\Application::VERSION}}
    <div>
</footer>

<template id="tmpl-news">        
    <div class="item-news">
        ${category}
        <div class="image pointer"><img src="img/${photo}" onclick="renderNews(${id})"></div>
        <div class="title">${title}</div>
        <div class="date-time flex-box">
            <div class="date">${date}</div>
            <div class="view"><img src="img/view.png">${view}</div>
            <div class="like"><img src="img/like.png" class="pointer" onclick="addLikes(${id})"><div class="test">${like}</div></div>
        </div>
    </div>
</template>

<template id="tmpl-category">
    <div id="square" class="pointer" onclick="renderNewsCategory('${category}')">${category}</div>
</template>

<template id="tmpl-news-one">
    <div class="item-news-one">
        <div class="title-news-one "><h1>${title}</h1></div>

        <div class="image-news-one"><img src="img/${photo}"><br></div>

        <div class="description ta-justify"><p>${description}</p></div>
        <div class="date-time-news-one flex-box">
            <div class="date">${date}</div>
            <div class="view"><img src="img/view.png">${view}</div>
            <div class="like"><img src="img/like.png" class="pointer" onclick="addLikes(${id})"><div class="test">${like}</div></div>
        </div>
    </div>
</template>


<script src="js/app.js"></script>
</body>
</html>



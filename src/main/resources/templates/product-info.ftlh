<!DOCTYPE html>
<html>
<head>
    <title>SELL</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<#include "navbar.ftlh">
<div class="container mt-5">
<h4>Подробная информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.id}" height="200px"/><br><br>
</#list>
<b>Название товара: </b>${product.name}<br>
<b>Цена: </b>${product.price} ${product.currency}<br>
<b>Количество: </b>${product.count} ${product.unit}<br>
</div>
</body>
</html>
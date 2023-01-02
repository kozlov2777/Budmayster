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
<div class="form-row">
    <div class="form-group col-md-6">
    <form action="/product/findByPrice" method="get" class="form-inline">
    <input type="text" name="price" placeholder="Search by price">
        <button type="submit" class="btn btn-primary ml-2">Search</button>
    </form>
    </div>
</div>
<div class="form-row">
    <div class="form-group col-md-6">
        <form action="/product/findByName" method="get" class="form-inline">
            <input type="text" name="name" placeholder="Search by name">
            <button type="submit" class="btn btn-primary ml-2">Search</button>
        </form>
    </div>
</div>
</div>
<div class="container mt-5">
<div class="card-columns">
    <#list products as product>
        <div class="card my-3">
            <#if product.images??>
                <#list product.images as image>
                    <img src="/images/${image.id}" height="400" class="card-img-top"/>
                </#list>
            </#if>
                <div class="card-body">
                    <h5 class="card-title">${product.name}</h5>
                    <p class="card-text">${product.price} grn</p>
                    <a href="/product/${product.getIdString(product)}">More...</a>
                    <p class="card-text"><small class="text-muted">Count: ${product.count} ${product.unit}</small></p>
                </div>
        </div>
    <#else>
        No message
    </#list>
</div>
</div>
</body>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>
<!DOCTYPE html>
<html>
    <head>
        <title>Hi?n th? ?i?m sinh viên</title>
        <!-- Link CSS c?a Bootstrap -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.dropdown').on('mouseenter', function () {
                    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
                }).on('mouseleave', function () {
                    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
                });
            });
        </script>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>
        <!-- Header -->
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h1>Hi?n th? ?i?m sinh viên</h1>
                    </div>
                </div>
            </div>
        </header>

        <!-- Navigation bar -->
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand">Trang ch?</a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#"  data-toggle="dropdown" role="button" >Ngành h?c</a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Khoa h?c</a></li>
                                <li><a href="#">Kinh t?</a></li>
                                <li><a href="#">Ngo?i ng?</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-right">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Tìm ki?m">
                        </div>
                        <button type="submit" class="btn btn-default">Tìm ki?m</button>
                    </form>
                </div>
            </div>
        </nav>

        <!-- Danh sách các môn trong ngành -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Danh sách các môn trong ngành</h2>
                    <div class="list-group">
                        <a href="#" class="list-group-item">Toán cao c?p</a>
                        <a href="#" class="list-group-item">V?t lý ??i c??ng</a>
                        <a href="#" class="list-group-item">C?u trúc d? li?u và gi?i thu?t</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Danh sách ?i?m c?a sinh viên -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>?i?m c?a sinh viên</h2>
                    <div class="btn-group" role="group" aria-label="Ch?n s?p x?p">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            S?p x?p theo
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="#">Tên</a></li>
                            <li><a href="#">?iê?m</a></li>
                        </ul>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Mã sinh viên</th>
                                <th>Tên sinh viên</th>
                                <th>Nga?nh</th>
                                <th>Môn ho?c</th>
                                <th>?i?m</th>
                            </tr>
                        </thead>                  
                    </table>
                    <tbody><c:forEach var="student" items="${students}">
                        <tr>
                            <td>${student.mssv}</td>
                            <td>${student.name}</td>
                            <td>${student.birthdate}</td>
                            <td>${student.gender}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </div>
            </div>
        </div>
    </body>
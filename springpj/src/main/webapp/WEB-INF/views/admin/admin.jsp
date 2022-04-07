<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
        />
        <link rel="stylesheet" href="/css/index.css" />
        <link rel="stylesheet" href="/css/manager.css" />
    </head>
    <body>
        <article>
            <h1>BOOK</h1>
            <p>안녕하세요, ${principal.user.username}관리자님!</p>
            <a href="/admin/branch/branchList">지점 관리 바로가기</a>
            <a href="/admin/menu/menuList">메뉴 관리 바로가기</a>
            <a href="/admin/mileage/mileageList">마일리지 관리 바로가기</a>
            <a href="/admin/study/studyList">스터디 관리 바로가기</a>
            <a href="/admin/user/userList">회원 관리 바로가기</a>
            <a href="../index">홈 바로가기</a>
        </article>
    </body>
</html>
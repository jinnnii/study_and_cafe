<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link
            rel="canonical"
            href="https://getbootstrap.com/docs/5.0/examples/dashboard/"
        />

        <!-- Bootstrap core CSS -->
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
        <!-- <link href="css/index.css" rel="stylesheet" /> -->
        <link href="/css/manager_page.css" rel="stylesheet" />
        <link href="/css/index.css" rel="stylesheet" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
        />

        <!-- Custom styles for this template -->
        <link href="/css/dashboard.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <header
            class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap shadow"
        >
            <a class="logo-icon col-md-3 col-lg-2 me-0 px-3" href="../index">BOOK</a>
            <button
                class="navbar-toggler position-absolute d-md-none collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#sidebarMenu"
                aria-controls="sidebarMenu"
                aria-expanded="false"
                aria-label="Toggle navigation"
            >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="w-100"></div>
            <div class="navbar-nav">
                <div class="nav-item text-nowrap">
                    <a class="" href="#"><i class="fas fa-home"></i></a>

                    <a href="#"><i class="fas fa-bell"></i></a>
                    <a href="#">
                        <i class="fas fa-user-circle"></i>
                    </a>
                </div>
            </div>
        </header>

        <div class="container-fluid">
            <div class="row">
                <nav
                    id="sidebarMenu"
                    class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse"
                >
                    <div class="position-sticky pt-3">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a
                                    class="nav-link"
                                    aria-current="page"
                                    href="branchManagement"
                                >
                                    <span data-feather="home"></span>
                                    지점 관리
                                </a>
                            </li>
                            <li class="nav-item">
                                <a
                                    class="nav-link active"
                                    aria-current="page"
                                    href="studyManagement"
                                >
                                    <span data-feather="home"></span>
                                    스터디 관리
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="menuManagement">
                                    <span data-feather="file"></span>
                                    메뉴 관리
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="userManagement">
                                    <span data-feather="users"></span>
                                    회원 관리
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="mileageManagement">
                                    <span data-feather="users"></span>
                                    포인트 관리
                                </a>
                            </li>
                        </ul>

                        <h6
                            class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted"
                        >
                            <span><a href="/logout">로그아웃</a></span>
                            <a
                                class="link-secondary"
                                href="/logout"
                                aria-label="Add a new report"
                            >
                                <i class="fas fa-angle-right"></i>
                            </a>
                        </h6>
                        <!-- <ul class="nav flex-column mb-2"></ul> -->
                    </div>
                </nav>

                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <div
                        class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom"
                    >
                        <h1 class="h2">스터디 관리</h1>
                        <div class="search">
                            <input type="text" name="word" />
                            <button><i class="fas fa-search"></i></button>
                        </div>
                        
                    </div>

                    <div class="table-responsive">
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">스터디번호</th>
                                    <th scope="col">스터디명</th>
                                    <th scope="col">지역</th>
                                    <th scope="col">시작일</th>
                                    <th scope="col">마감일</th>
                                    <th scope="col">인원</th>
                                    <th scope="col">스터디리더</th>
                                    <th scope="col">마일리지</th>
                                    <th scope="col">좋아요</th>
                                    <th scope="col">삭제</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach items="${list}" var="studyGroup">
                                <tr>
									<td>${studyGroup.id}</td>
									<td>${studyGroup.title}</td>
									<td>${studyGroup.local}지역</td>
									<td>${studyGroup.startDate}</td>
									<td>${studyGroup.endDate}</td>
									<td>${studyGroup.}/${studyGroup.limitCount}</td>
									<td>${studyGroup.leader}</td>
									<td>${studyGroup.mileage}</td>
									<td>${studyGroup.likes}</td>
									<td><button type="button" class="submit"
											id="delete"
											onclick="location.href='/admin/studyGroup/delete/${studyGroup.id}'">삭제</button></td>
                                </tr>
                               </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </main>
            </div>
        </div>

        <ul class="paging">
            <li class="prev"><i class="fas fa-angle-left"></i></li>
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
            <li class="next"><i class="fas fa-angle-right"></i></li>
        </ul>
    </body>
    <script src="js/bootstrap.bundle.min.js"></script>

    <script
        src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
        integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
        crossorigin="anonymous"
    ></script>
    <script
        src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
        integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
        crossorigin="anonymous"
    ></script>
    <script src="js/dashboard.js"></script>
    <script>
        function switchStatus(id) {
            console.log(id);
        }
    </script>
</html>
 --%>
 	
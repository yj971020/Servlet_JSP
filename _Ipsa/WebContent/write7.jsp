<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>1조 프로젝트</title>
    <link rel="stylesheet" href="css/css.css">
    <link rel="stylesheet" href="css/serviceoffice_stylesheet.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style2.css">
    <link rel="stylesheet" href="js/serviceoffice_style.js">
    <link rel="stylesheet" href="css/font-stylesheet.css">
</head>

<body>
    <header id="header">
        <div class="wrap_group">
            <div>
                <a href="index.jsp">
                    <h1>IPSA</h1>
                </a>
            </div>
            <div class="navbar_menu">
                <ul class="top_navbar">
                    <div class="navbar_item" style="display: inline-block;" onclick="location.href='write7.jsp'"><a
                        href="#">마이페이지</a></div>
                    <div class="navbar_item" style="display: inline-block;" onclick="location.href='write2.jsp'"><a
                            href="#">회원정보 수정</a></div>
                    <div class="navbar_item" style="display: inline-block;" onclick="location.href='write.jsp'"><a
                            href="#">문의하기</a></div>
                            <div class="navbar_item" style="display: inline-block;" onclick="location.href='write5.jsp'"><a
                                href="#">문의내역</a></div>
                            <div class="navbar_item" style="display: inline-block;" onclick="location.href='write4.jsp'"><a
                                href="#">리뷰하기</a></div>
                                <div class="navbar_item" style="display: inline-block;" onclick="location.href='write6.jsp'"><a
                                    href="#">리뷰내역</a></div>
                </ul>
            </div>
        </div>
    </header>
    <div class="board_wrap">
        <div class="board_title">
            <div style="text-align:center"><a href="board.html"><strong>마이페이지</strong></a></div>
            <div style="text-align:center"><p> 님 환영합니다! </p></div>
        </div>
        <div class="bt_wrap">
            <a href="write2.jsp" class="on">회원정보 수정</a>
        </div>
        <div class="bt_wrap">
            <a href="write.jsp" class="on">문의하기</a>
        </div>
        <div class="bt_wrap">
            <a href="write4.jsp" class="on">리뷰하기</a>
        </div>
        <div class="bt_wrap">
            <a style="border: none; background: transparent; color:white;"></a>
        </div>
        <div class="bt_wrap">
            <a style="border: none; background: transparent;color:white;"></a>
        </div>

    <footer class="footer" style="padding-bottom: 0px;">
        <div class="row">
            <div class="col-md-3 info-big">
                <a href="index.jsp">
                    <img src="images/logo.png" style="height: 150px;">
                </a>
            </div>
            <div class="col-md-5" style="line-height: 30px;">
                <h2><strong>We support your success</strong></h2>
                <p></p>
                <p style="font-size: large;">Office IPSA where you can focus on your work. We provide the best work
                    environment.
                    Join us to go higher. It will be the most wonderful experience of your life. thank you.</p>
            </div>
            <div class="col-md-3" style="text-align: left; font-size: 
            medium; line-height: 20px;">
                <p><strong>IPSA(주) | 대표자 : 양승인</strong></p>
                <p>
                    사업자등록번호 : 123-4567-89<br>
                    서울특별시 강남구 역삼동 819-3 삼오빌딩 5층<br>
                    강남점 | 구로점 | 종로점<br>
                    전화 : 02-333-4445<br>
                    이메일 : hhm12345@naver.com
                </p>
            </div>
    </footer>

</body>

</html>
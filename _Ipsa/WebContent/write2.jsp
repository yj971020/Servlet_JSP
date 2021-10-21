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
    <link rel="stylesheet" href="js/serviceoffice_style.js">
    <link rel="stylesheet" href="css/font-stylesheet.css">
</head>
<script language="javascript" type="text/javascript" >

    // 1. 숫자만 입력받게 하는 방법
    function onlyNumber() {
        if ((event.keyCode < 48) || (event.keyCode > 57))
            event.returnValue = false;
    }

    function CheckForm() {
        if (document.getElementById("txtMobile1").value == "") {
            window.alert("휴대폰 번호를 선택하시오.");
            return false;
        }
        if (document.getElementById("txtMobile2").value.length != 4) {
            window.alert("가운데 번호는 4자리로 입력하세요");
        }
    }

</script>
    
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
    <div class="board_wrap_detail">
        <div class="board_title">
            <a href="board.html"><strong>회원정보 수정</strong></a>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="info">
                    <dl>
                        <dt>아이디</dt>
                        <dd><input type="text" placeholder="아이디"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>비밀번호</dt>
                        <dd><input type="password" placeholder="비밀번호"></dd>
                    </dl>
                </div>
                    <div class="info">
                    <dl>
                            <dt>이름</dt>
                            <dd><input type="text" placeholder="이름"></dd>
                    </dl>
                    </div>
                    <div class="info">
                        <dl>
                                <dt>이메일</dt>
                                <dd><input type="text" placeholder="이름"></dd>
                            </dl>
                            </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd><input type="text" placeholder="번호"></dd>
                        </dl>
            </div>
            <div class="info">
                <dl>
                    <dt>회사</dt>
                    <dd><input type="text" placeholder="회사"></dd>
                    </dl>
            </div>
            <div class="bt_wrap">
                <a href="" class="on">등록</a>
                <a href="write7.jsp" class="off">취소</a>-->
            </div>
        </div>
    </div>
    <footer class="footer" style="padding-bottom: 0px;">
        <div class="row">
            <div class="col-md-3 info-big">
                <a href="index.jsp">
                    <img src="images/logo.png" style="height: 150px;">
                </a>
            </div>
            <div class="col-md-5">
                <h2><strong>We support your success</strong></h2>
                <p></p>
                <p style="font-size: large;">Office IPSA where you can focus on your work. We provide the best work
                    environment.
                    Join us to go higher. It will be the most wonderful experience of your life. thank you.</p>
            </div>
            <div class="col-md-3" style="text-align: left; font-size: 
            medium;">
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
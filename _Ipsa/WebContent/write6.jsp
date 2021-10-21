<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>1조 프로젝트</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/css.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/serviceoffice_stylesheet.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style2.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/serviceoffice_style.js">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-stylesheet.css">
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
                    <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/write7.jsp'"><a
                        href="#">마이페이지</a></div>
                    <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/member/dpdate.do'"><a
                            href="#">회원정보 수정</a></div>
                    <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/board/add.do'"><a
                            href="#">문의하기</a></div>
                            <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/board/list.do'"><a
                                href="#">문의내역</a></div>
                            <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/review/add.do'"><a
                                href="#">리뷰하기</a></div>
                                <div class="navbar_item" style="display: inline-block;" onclick="location.href='<%=request.getContextPath()%>/review/list.do'"><a
                                    href="#">리뷰내역</a></div>
                </ul>
            </div>
        </div>
    </header>
    <div class="board_wrap">
        <div class="board_title">
            <a href="board.html"><strong>리뷰내역</strong></a>
        </div>
            <div class="board_list_wrap">
               <!-- <div class="board_list">
                    <div class="top">
                        <div class="num">번호</div>
                        <div class="title">리뷰내용</div>
                        <div class="date">작성일</div>
                        <div class="count">조회</div>
                    </div>
                    <div>
                        <div class="num"></div>
                        <div class="title"></div>
                     
                        <div class="date"></div>
                        <div class="count"></div>
                    </div>
                    <div>
                        <div class="num"></div>
                        <div class="title"></div>
                        
                        <div class="date"></div>
                        <div class="count"></div>
                    </div>
                    <div>
                        <div class="num"></div>
                        <div class="title"></div>
                        <div class="date"></div>
                        <div class="count"></div>
                    </div>
                    <div>
                        <div class="num"></div>
                        <div class="title"></div>
                        
                        <div class="date"></div>
                        <div class="count"></div>
                    </div>
                    <div>
                        <div class="num"></div>
                        <div class="title"></div>
                        
                        <div class="date"></div>
                        <div class="count"></div>
                    </div>
        </div>
        
  -->	<table border="1">
		<tr>
			<th>번호</th>
			<th>지점명</th>
			<th>이름</th>
			<th>내용</th>
		<th>지점</th>
		<th>지점</th>
		</tr>
		<c:forEach var="review" items="${reviews }">
			<tr>
				<td>${review.no}</td>
				<c:if test="${review.branch == 0 }">
					<td>강남점</td>
				</c:if>
				<c:if test="${review.branch == 1 }">
					<td>종로점</td>
				</c:if>
				<c:if test="${review.branch == 2 }">
					<td>구로점</td>
				</c:if>
				<td><a href="update.do?no=${review.no }">${review.name }</a></td>
				<td>${review.content}</td>
				<td>${review.regDate }</td>
				<td><a href="delete.do?no=${review.no }">[삭제]</a></td>
			</tr>
		</c:forEach>
	</table>
	
	
    </div>
    <footer class="footer" style="padding-bottom: 0px;">
        <div class="row">
            <div class="col-md-3 info-big">
                <a href="index.jsp">
                    <img src="<%=request.getContextPath()%>/images/logo.png" style="height: 150px;">
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
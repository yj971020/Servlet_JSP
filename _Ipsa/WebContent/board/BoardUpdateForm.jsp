<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
<style>
   ul {
      padding : 0;
   }
   li {
      list-style : none;
   }
   label {
      float : left;
      text-align : rigth;
      width : 60px;
   }
</style>
</head>
<body>
   <jsp:include page="/Header.jsp"/>
   <h1>게시판 수정</h1>
   <form action="update.do" method="post">
      <ul>
         <li>
            <label for="no">번호</label>
            <input type="text" id="no" name="no" size="5" value="${board.no }" readonly>
         </li>
         <li>
            <label for="name">작성자</label>
            <input type="text" id="name" name="name" size="50" value="${board.name }">
         </li>
         <li>
            <label for="title">제목</label>
            <input type="text" id="title" name="title" size="50" value="${board.title }">
         </li>
         <li>
            <label for="content">내용</label>
            <textarea id="content" name="content" rows="5" cols="40">${board.content }</textarea>
         </li>
         <li>
            <label for="reservation">예약원하는 날짜</label>
            <input type="text" id="reservation" name="reservation" placeholder="예)2013-01-01" value="${board.reservation }">
         </li>
         <li>
            <label for="select">지점</label>
            <select id="select" name="select">
               <option value="0" ${board.select==0?"selected":""}>선택</option>
               <option value="1" ${board.select==1?"selected":""}>강남점</option>
               <option value="2" ${board.select==2?"selected":""}>종로점</option>
               <option value="3" ${board.select==3?"selected":""}>구로점</option>
            </select>
         </li>
      </ul>
      <input type="submit" value="저장">
      <input type="button" value="삭제" onclick="location.href='delete.do?no=${board.no}'">
      <input type="button" value="취소" onclick="location.href='list.do'">
   </form>
   <jsp:include page="/Tail.jsp"/>
</body>
</html>
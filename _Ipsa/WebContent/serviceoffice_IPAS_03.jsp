
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상세-구로</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/serviceoffice_stylesheet.css">
    <link rel="stylesheet" href="js/serviceoffice_style.js">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/font-stylesheet.css">
    <script src="js/jquery-3.6.0.min.js"></script>

    <!-- <script type="text/javascript"
        src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=076c8943e3723fdf543def2d2f9cfc21"></script> -->
</head>

<body>
    <div id="wrap">
        <header id="header">
            <div class="wrap_group">
                <div>
                    <a href="index.jsp">
                        <h1>IPSA</h1>
                    </a>
                </div>
                <div class="navbar_menu">
                    <ul class="top_navbar">
                        <div class="navbar_item" style="display: inline-block;"
                            onclick="location.href='serviceoffice_IPAS_01.jsp'"><a href="#">종로점</a></div>
                        <div class="navbar_item" style="display: inline-block;"
                            onclick="location.href='serviceoffice_IPAS_02.jsp'"><a href="#">강남점</a></div>
                        <div class="navbar_item" style="display: inline-block; background-color:rgb(99, 126, 62);"
                            onclick="location.href='serviceoffice_IPAS_03.jsp'"><a href="#">구로점</a></div>
                    </ul>
                </div>
                <div>
                    <a href="#" style="color: black;">My Page</a>
                </div>
            </div>
        </header>

        <main>
            <section class="row">
                <div id="office_slide" class="col-md-9">
                    <div class="section_name">
                        <h1 class="section_title"></h1>
                    </div>
                    <div id="section_slide">

                        <input type="radio" name="slide" id="slide01" checked>
                        <input type="radio" name="slide" id="slide02">
                        <input type="radio" name="slide" id="slide03">
                        <input type="radio" name="slide" id="slide04">
                        <input type="radio" name="slide" id="slide05">
                        <input type="radio" name="slide" id="slide06">

                        <ul class="slide_content">

                            <li class="slide_item">
                                <label for="slide06" class="left"></label>
                                <label for="slide02" class="right"></label>
                                <a><img src="images/office_013.jpg" alt="종로점"></a>
                            </li>
                            <li class="slide_item">
                                <label for="slide01" class="left"></label>
                                <label for="slide03" class="right"></label>
                                <a><img src="images/office_014.jpg" alt="종로점"></a>
                            </li>
                            <li class="slide_item">
                                <label for="slide02" class="left"></label>
                                <label for="slide04" class="right"></label>
                                <a><img src="images/office_015.jpg" alt="종로점"></a>
                            </li>
                            <li class="slide_item">
                                <label for="slide03" class="left"></label>
                                <label for="slide05" class="right"></label>
                                <a><img src="images/office_016.jpg" alt="종로점"></a>
                            </li>
                            <li class="slide_item">
                                <label for="slide04" class="left"></label>
                                <label for="slide06" class="right"></label>
                                <a><img src="images/office_017.jpg" alt="종로점"></a>
                            </li>
                            <li class="slide_item">
                                <label for="slide05" class="left"></label>
                                <label for="slide01" class="right"></label>
                                <a><img src="images/office_018.jpg" alt="종로점"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="office_intro" class="col-md-3">
                    <div>
                        <h1>구로점</h1>
                    </div>
                    <div class="intro_p">
                        <img src="images/hearts_list.png">
                        <span>오피스 본질에 초점을 맞춰 입주사가 업무에 집중할 수 있는 환경을 제공합니다.<br><br><br><br></span>
                        <img src="images/hearts_list.png">
                        <span>구로디지털단지에 위치한 소호사무실 입니다. 디지털단지 중심에 위치하여 7호선과 2호선 이용이 용이합니다.
                            보다 넓은 공간으로 구성되어 있습니다.</span>
                    </div>
                </div>
            </section>
            <div class="office_con">
                <h1>편의시설</h1>
                <div class="office_icon row">
                    <div class="col-md-3" style="text-align: center;">
                        <img src="images/coffee.png">
                        <span><br>다양한 음료제공 및 <br>휴식공간 제공</span>
                    </div>
                    <div class="col-md-3" style="text-align: center;">
                        <img src="images/clean.png">
                        <span><br>방역강화 사무실별 <br>소독제 배치</span>
                    </div>
                    <div class="col-md-3" style="text-align: center;">
                        <img src="images/pwd.png">
                        <span><br>지문인식 보안시스템 <br>(출입카드 불필요)</span>
                    </div>
                    <div class="col-md-3" style="text-align: center;">
                        <img src="images/ice.png">
                        <span><br>24시간 개별 냉.난방</span>
                    </div>

                </div>
            </div>

            <div class="office_map row">
                <h1>오시는 길</h1>
                <div class="col-md-8">
                    <div id="map" style="width:600px; height:350px; margin-left: 100px;"></div>
                </div>

                <div class="map_text col-md-4">
                    <img src="images/placeholder.png"><span>오시는 길</span>
                    <p>대한민국 서울특별시 구로구 도림천로 477</p>
                    <img src="images/placeholder.png"><span>SUBWAY</span>
                    <p>
                        지하철 7,2 호선 구로 디지털단지 도보 1분<br>

                    </p>
                </div>
            </div>

            <div class="notice_wrap row">

                <h1>Review</h1>
                <div class="star col-md-4">
                    <div class="score">
                        <img class="score_star" src="images/star.png">
                        <p>4</p>
                    </div>
                    <div class="score_img">
                        <img src="images/starrate.png" style="background-color:#ffc107;">
                        <img src="images/starrate.png" style="background-color:#ffc107;">
                        <img src="images/starrate.png" style="background-color:#ffc107;">
                        <img src="images/starrate.png" style="background-color:#ffc107;">
                        <img src="images/starrate.png" style="background-color:#ccc;">
                    </div>
                </div>
                <div class="star_board col-md-8">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>NO</th>
                                <th>Name</th>
                                <th>Star</th>
                                <th>Writer</th>
                                <th>Date</th>
                                <th>View</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>01</td>
                                <td>양승인</td>
                                <td><img src="images/star.png"><img src="images/star.png"><img
                                        src="images/star.png"><img src="images/star.png"><img src="images/star.png">
                                </td>
                                <td>너무 잘 이용했습니다.</td>
                                <td>2017.8.11</td>
                                <td class="view">94</td>
                            </tr>
                            <tr>
                                <td>02</td>
                                <td>하헌민</td>
                                <td><img src="images/star.png"><img src="images/star.png"><img
                                        src="images/star.png"><img src="images/star.png"><img src="images/star.png">
                                </td>
                                <td>대표님이 너무 친절해요</td>
                                <td>2020.1.21</td>
                                <td>93</td>
                            </tr>
                            <tr>
                                <td>03</td>
                                <td>김예진</td>
                                <td><img src="images/star.png"><img src="images/star.png"><img
                                        src="images/star.png"><img src="images/star.png"><img src="images/star.png">
                                </td>
                                <td>짱짱★☆★☆</td>
                                <td>2021.8.11</td>
                                <td>75</td>
                            </tr>
                            <tr>
                                <td>04</td>
                                <td>심유미</td>
                                <td><img src="images/star.png"><img src="images/star.png"><img
                                        src="images/star.png"><img src="images/star.png"><img src="images/star.png">
                                </td>
                                <td>깨끗하고 좋아요 감사합니다.</td>
                                <td>2021.1.11</td>
                                <td>41</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="table_input">
                    <div class="board_button">
                        <!-- <input type="button" value="수정하기" class="btn btn-outline-success "> -->
                        <input type="button" value="글쓰기" class="btn btn-outline-success"
                            onclick="location.href='star.html'">
                    </div>
                </div>
            </div>



        </main>

        <footer class="footer" style="padding-bottom: 0px;">
            <div class="row">
                <div class="col-md-3 info-big">
                    <a href="index.jsp">
                        <img src="images/ipsa_1조.png" style="height: 150px;">
                    </a>
                </div>
                <div class="col-md-5">
                    <h1><strong style="font-size:40px; font-weight:800; line-height:70px;">We support your
                            success</strong></h1>
                    <p></p>
                    <p style="font-size: large;">Office IPSA where you can focus on your work. We provide the best work
                        environment.
                        Join us to go higher. It will be the most wonderful experience of your life. thank you.</p>
                </div>
                <div class="col-md-3" style="text-align: left; font-size: 
                medium;">
                    <p><strong>IPSA(주) | 대표자 : 양승인</strong></p><br>
                    <p style="line-height:20px;">
                        사업자등록번호 : 123-4567-89<br>
                        서울특별시 강남구 역삼동 819-3 삼오빌딩 5층<br>
                        강남점 | 구로점 | 종로점<br>
                        전화 : 02-333-4445<br>
                        이메일 : hhm12345@naver.com
                    </p>
                </div>
        </footer>
    </div>


    <script type="text/javascript"
        src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=ffa4adaea0c31b28cc337e80b18fadf8"></script>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(37.48487444122252, 126.90029580919145), // 지도의 중심좌표
                level: 4 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption);

        var imageSrc = 'https://cdn1.iconfinder.com/data/icons/basic-ui-elements-coloricon/21/06_1-512.png', // 마커이미지의 주소입니다    
            imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
            imageOption = { offset: new kakao.maps.Point(27, 69) }; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

        // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
            markerPosition = new kakao.maps.LatLng(37.48487444122252, 126.90029580919145); // 마커가 표시될 위치입니다

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition,
            image: markerImage // 마커이미지 설정 
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        var content = '<div class="customoverlay">' +
            '  <a href="http://kko.to/wJ6IyLrf0" target="_blank">' +
            '    <span class="title">공유오피스(IPSA)</span>' +
            '  </a>' +
            '</div>';

        // 커스텀 오버레이가 표시될 위치입니다 
        var position = new kakao.maps.LatLng(37.48487444122252, 126.90029580919145);

        // 커스텀 오버레이를 생성합니다
        var customOverlay = new kakao.maps.CustomOverlay({
            map: map,
            position: position,
            content: content,
            yAnchor: 1
        });
    </script>

</body>

</html>
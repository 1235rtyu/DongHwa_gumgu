<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>History Trend</title>
<link rel="stylesheet" href="resources/style.css">
<link rel="shortcut icon" href="resources/image/KPF.jpg" type="image/x-icon" />
<jsp:include page="pluginpage.jsp" />

<!-- 하이차트 라이브러리 포함 -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<style>
/* HTML과 body의 높이를 100%로 설정 */
html, body {
    height: 100%;
    margin: 0; /* 기본 마진 제거 */
    font-family: Arial, sans-serif;
}

/* Flexbox 레이아웃 설정 */
.container {
    display: flex;
    height: 100%; /* 부모 요소의 높이를 100%로 설정 */
    padding: 30px; /* 좌우 여백 추가 */
}

/* 왼쪽 4칸 영역 */
.left {
    flex: 3;
    background-color: #f8f9fa; /* 밝은 회색 배경색 */

    border-right: 1px solid #ddd; /* 오른쪽 경계선 추가 */
    box-sizing: border-box;
    display: flex;
    align-items: center; /* 수직 가운데 정렬 */
}

.left h2 {
    margin-top: 0;
    margin-bottom: 20px;
    color: #333;
    font-size: 18px;
}

.pen-settings {
    display: flex;
    flex-direction: column;
    width: 100%;
}

.pen-settings label {
    margin-bottom: 5px;
    font-weight: bold;
    color: #555;
}

.pen-settings input[type="text"],
.pen-settings select,
.pen-settings input[type="color"],
.pen-settings button {
    margin-bottom: 15px;
    padding: 8px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.pen-settings select {
    height: 380px;
}

.pen-settings input[type="color"],
.pen-settings button {
    width: 530px; 
    height: 40px; 
}

.pen-settings button {
    background-color: white;
    color: black;
    border: 1px solid black;
    cursor: pointer;
    transition: background-color 0.3s;
}

.pen-settings button:hover {
    background-color: #f0f0f0;
}

/* 오른쪽 6칸 영역 */
.right {
    flex: 7;
    background-color: lightblue; /* 배경색은 예시입니다. 필요에 따라 제거 또는 변경하세요 */
    padding: 10px;
    position: relative;
    display: flex;
    align-items: center; /* 수직 가운데 정렬 */
}

/* 차트 컨테이너를 오른쪽 정가운데에 배치 */
#container {
    width: 90%; /* 차트의 너비를 90%로 설정하여 줄였습니다 */
    height: 50%;
    margin: 0 auto; /* 차트를 중앙에 배치 */
}
</style>

</head>
<body>
  

   <div class="container">
       <div class="left">
           <!-- 왼쪽 4칸에 들어갈 내용 -->
           <div class="pen-settings">
               <h2>Pen Groups Settings</h2>
               
               <!-- 팬 검색 -->
               <label for="pen-search">Search Pen:</label>
               <input type="text" id="pen-search" placeholder="Search Pen...">

               <!-- 팬 목록 -->
               <label for="pen-list">Pen List:</label>
               <select id="pen-list" multiple>
                   <option>Pen 1</option>
                   <option>Pen 2</option>
                   <option>Pen 3</option>
                   <option>Pen 4</option>
               </select>

               <!-- 컬러 설정 -->
               <label for="pen-color">Color:</label>
               <input type="color" id="pen-color" value="#ff0000">

               <!-- Add 버튼 -->
               <button type="button">Add</button>
           </div>
       </div>
       <div class="right">
           <!-- 오른쪽 6칸에 들어갈 내용 -->
           <div id="container"></div>
       </div>
   </div>

   <script>
   // 하이차트 초기화 코드
   document.addEventListener('DOMContentLoaded', function () {
       Highcharts.chart('container', {
           chart: {
               type: 'line'
           },
           title: {
               text: 'Monthly Average Temperature'
           },
           subtitle: {
               text: 'Source: WorldClimate.com'
           },
           xAxis: {
               categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
           },
           yAxis: {
               title: {
                   text: 'Temperature (°C)'
               }
           },
           tooltip: {
               enabled: true,
               shared: true,
               crosshairs: true
           },
           legend: {
               layout: 'horizontal',
               align: 'center',
               verticalAlign: 'bottom'
           },
           plotOptions: {
               line: {
                   dataLabels: {
                       enabled: true
                   },
                   enableMouseTracking: true
               }
           },
           series: [{
               name: 'Tokyo',
               data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
           }, {
               name: 'New York',
               data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
           }, {
               name: 'Berlin',
               data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
           }, {
               name: 'London',
               data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
           }],
           responsive: {
               rules: [{
                   condition: {
                       maxWidth: 500
                   },
                   chartOptions: {
                       legend: {
                           layout: 'horizontal',
                           align: 'center',
                           verticalAlign: 'bottom'
                       }
                   }
               }]
           },
           exporting: {
               enabled: true
           }
       });
   });
   </script>
</body>
</html>

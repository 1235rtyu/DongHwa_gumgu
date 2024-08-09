<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>History Trend</title>
  <link rel="stylesheet" href="resources/style.css">
<link rel="shortcut icon" href="resources/image/KPF.jpg" type="image/x-icon" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


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
                <select id="pen-list" multiple></select>

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
//전역변수
    
//로드
    $(document).ready(function() {

//        loadPenList(); // 팬 목록을 로드
test();
test2();

        // 하이차트 초기화 코드
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
                // 데이터 시리즈를 여기에 추가
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

//이벤트

//함수
	// 팬 목록을 AJAX를 통해 가져오는 함수
	function loadPenList() {
	    $.ajax({
	        url: '/donghwa/api/pens/list',
	        type: 'GET',
	        dataType: 'json',
	        success: function(data) {
	            const penList = $('#pen-list');
	            penList.empty(); // 기존 항목 제거
	            $.each(data, function(index, pen) {
	                const option = $('<option></option>');
	                option.val(pen.id);
	                option.text('Pen ' + pen.id); // 또는 적절한 이름
	                penList.append(option);
	            });
	        },
	        error: function(xhr, status, error) {
	            console.error('Error fetching pen list:', error);
	        }
	    });
	}

    function test(){
        $.ajax({
            url:"/donghwa/api/pens/test",
            type:"post",
            data:{
                "a":"A",
                "b":"B"
            },success:function(ss){
                console.log(ss);
            }
        });
	}

    function test2(){
        $.ajax({
            url:"/donghwa/api/pens/test2",
            type:"post",
            data:{
                "a":"A",
                "b":"B"
            },success:function(ss){
                console.log(ss);
            }
        });
	}

	
    </script>
</body>
</html>

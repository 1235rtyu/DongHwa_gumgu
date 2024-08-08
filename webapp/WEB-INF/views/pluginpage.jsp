<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 사이드바 템플릿 사용-->
<script type="text/javascript" src="resources/js/sidebar/jquery.min.js"></script>

<!-- 사이드바 기본css -->
<link rel="stylesheet" href="resources/css/sidebar/sidebar-css.css" />

<!-- 사이드바 템플릿 사용-->
<script type="text/javascript" src="resources/js/sidebar/jquery.min.js"></script>

<!-- 제이쿼리홈페이지 js -->
<script type="text/javascript" src="resources/js/jquery/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery/jquery-migrate-1.2.1.min.js"></script>

<!-- popper 드롭다운-->
<script src="resources/js/dropdown/popper.js"></script>


<!-- 사이드바 템플릿 사용-->
<script type="text/javascript" src="resources/js/sidebar/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/sidebar/bootstrap.min.css" />


<!-- fontawesome 4.7.0 버전 -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css" />


<!-- 제이쿼리 ui -->
<script type="text/javascript" src="resources/js/jquery-ui/jquery-ui.js"></script>
<link rel="stylesheet" href="resources/css/jquery-ui/jquery-ui.css"/>
<link rel="stylesheet" href="resources/css/jquery-ui/jquery-ui.theme.css"/>


<!-- datepicker -->
<script type="text/javascript" src="resources/js/datepicker/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="resources/js/datepicker/bootstrap-datepicker.ko.min.js"></script>
<link rel="stylesheet" href="resources/css/datepicker/bootstrap-datepicker.css"/>


<!-- 타임피커 -->
<script type="text/javascript" src="resources/js/timepicker/jquery.timepicker.min.js"></script>
<link rel="stylesheet" href="resources/css/timepicker/jquery.timepicker.css"/>


<!-- Tabulator 테이블 -->
<script type="text/javascript" src="resources/js/tabulator/tabulator.js"></script>
<link rel="stylesheet" href="resources/css/tabulator/tabulator_simple.css"/>

<!-- moment -->
<script type="text/javascript" src="resources/js/moment/moment.min.js"></script>

<!-- 구글차트 
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
-->



<!-- 구글차트 로컬 -->
<!-- 
<script type="text/javascript" src="./charts/loader.js"></script>
 -->

<!-- select2 
<script type="text/javascript" src="resources/js/select2/select2.js"></script>
<link rel="stylesheet" href="resources/css/select2/select2.css"/>
-->


<!-- 캡쳐 -->
<script type="text/javascript" src="resources/js/html2canvas.js"></script>


<!-- 모달 -->
<script type="text/javascript" src="resources/js/modal/jquery.modal.js"></script>
<link rel="stylesheet" href="resources/css/modal/jquery.modal.css"/>

<!-- 하이차트  -->
<!--  <script type="text/javascript" src="resources/js/highchart/highcharts.js"></script>
<link rel="stylesheet" href="resources/css/highchart/highcharts.css"/>  -->

 
<script>

function logOut(){
	$.ajax({
		url:"logout_ok.jsp",
		type:"post",
		success:function(result){
			alert("Log Out Success");
			location.href="index.jsp";			
		}
	});
}	

</script>
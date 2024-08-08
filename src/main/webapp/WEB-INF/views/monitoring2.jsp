<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>OPC</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="resources/style.css" />
    <style>
body {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

.main {
    display: flex;
    flex-wrap: wrap;
    height: calc(100vh - 200px);
}

.left {
    flex: 2;
    padding: 50px;
    background-color: #e1e1e1;
}

.right {
    flex: 8;
    padding: 20px;
    background-color: #f5f5f5;
    display: flex;
    flex-direction: column;
    gap: 20px;
    overflow-y: auto;
}

@media (max-width: 768px) {
    .main {
        flex-direction: column;
    }

    .left, .right {
        flex: none;
        width: 100%;
    }
}

.range-inputs, .bulk-update, .bulk-update-alt {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    box-sizing: border-box;
    margin-bottom: 20px; /* 박스 간의 간격 조절 */
}

.range-inputs label, .bulk-update label, .bulk-update-alt label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #333;
}

.range-inputs input, .bulk-update input, .bulk-update-alt input {
    width: calc(100% - 20px);
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.range-inputs button, .bulk-update button, .bulk-update-alt button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    border: none;
    border-radius: 4px;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

.range-inputs button:hover, .bulk-update button:hover, .bulk-update-alt button:hover {
    background-color: #45a049;
}

.results {
    margin-top: 20px;
}

#false {
    margin-top: 10px;
    background-color: red;
}

.input-container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px; /* 간격 조절 */
}

.input-card {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    flex: 1 1 calc(10% - 20px); /* 10개씩 한 줄에 배치 */
    box-sizing: border-box;
    max-width: calc(10% - 20px);
}

.input-card label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #333;
}

.input-card input {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 14pt;
}

.input-card .ex1 {
    font-size: 12pt;
    color: #666;
}

    </style>
</head>
<body>

    <h1>**OPC**</h1>
    <div class="main">
        <div class="left">
            <div class="range-inputs">
                <label for="id">ADDRESS: M0100</label>
                <input type="text" id="id" placeholder="ex: D0100">
                
                <label for="value">VALUE:</label>
                <input type="text" id="value" placeholder="ex: D0150">
                
                <button type="button" onclick="calculateIds()">WRITE</button>
                <button id="false" type="button" onclick="clearRange()">CLEAN</button>
            </div>

            <div class="bulk-update">
                <h3>bulk-update</h3>
                <label for="rangeStart" style="margin-top: 13px;">Start Address:</label>
                <input type="text" id="rangeStart" placeholder="ex: D0100">
                
                <label for="rangeEnd">End Address:</label>
                <input type="text" id="rangeEnd" placeholder="ex: D0150">
                
                <label for="bulkValue">Value:</label>
                <input type="text" id="bulkValue" placeholder="ex: 123">
                
                <button type="button" onclick="bulkUpdate()">BULK UPDATE</button>
            </div>

            <div class="bulk-update-alt">
                <h3>bulk-update-19개</h3>
                <label for="rangeStartAlt" style="margin-top: 13px;">Start Address:</label>
                <input type="text" id="rangeStartAlt" placeholder="ex: D0200">
                
                <label for="rangeEndAlt">End Address:</label>
                <input type="text" id="rangeEndAlt" placeholder="ex: D0250">
                
                <label for="bulkValueAlt">Value:</label>
                <input type="text" id="bulkValueAlt" placeholder="ex: 456">
                
                <button type="button" onclick="bulkUpdateAlt()">BULK UPDATE ALT</button>
            </div>

            <div class="results" id="results"></div>
        </div>
        <div class="right">
            <form id="writeForm">
                <div class="input-container">
                    <c:forEach var="i" begin="100" end="900">
                        <div class="input-card">
                            <label for="d0${i}">D0${i}</label>
                            <input type="text" id="d0${i}" onclick="handleCardClick('D0${i}', this.value)" required>
                            <div class="ex1" id="d0${i}_d"></div>
                        </div>
                    </c:forEach>
                </div>
            </form>
        </div>
    </div>
    <script>
    // 전역 변수
    var currentId = '';
    var currentValue = '';

    $(function(){
        setInterval(getMonitoring1, 500);
    });

    function getMonitoring1(){
        $.ajax({
           url: "/donghwa/monitoring1/Dview",
           type: "post",
           dataType: "json",
           success: function(rtn){
              var data = rtn.multiValues;

              if(data !== "Fail"){
                 for (var i = 100; i <= 900; i++) {
                    $("#d0" + i).val(data["DONGHWA_PLC_D_D0" + i]);
                 }
              }
           }
        });
    }
    
    function handleCardClick(address, value) {
        // 카드 클릭 시 값 저장
        currentId = address;
        currentValue = value;
        // 입력 필드에 현재 클릭된 카드의 값을 설정 (선택 사항)
        document.getElementById("id").value = address;
        document.getElementById("value").value = value;
    }

    function calculateIds() {
        // 입력 필드에서 값 가져오기
        var id = document.getElementById("id").value;
        var value = document.getElementById("value").value;
        
        console.log("Sending Data:");
        console.log("ID:", id);
        console.log("Value:", value);

        $.ajax({
            url: "/donghwa/setSelectTagValueD",
            type: "post",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify({
                id: id,
                value: value
            }),
            success: function(rtn) {
                console.log("Response Data:");
                console.log(rtn);
            },
            error: function(xhr, status, error) {
                console.log("AJAX 호출 에러:");
                console.log("Status:", status);
                console.log("Error:", error);
                console.log("Response Text:", xhr.responseText);
            }
        });
    }

    function bulkUpdate() {
        // 입력 필드에서 값 가져오기
        var rangeStart = document.getElementById("rangeStart").value;
        var rangeEnd = document.getElementById("rangeEnd").value;
        var bulkValue = document.getElementById("bulkValue").value;
        
        // 유효성 검사
        if (!rangeStart || !rangeEnd || !bulkValue) {
            alert("Please fill in all fields.");
            return;
        }

        // 범위 및 값 객체 생성
        var data = {
            rangeStart: rangeStart,
            rangeEnd: rangeEnd,
            bulkValue: bulkValue
        };

        $.ajax({
            url: "/donghwa/bulkUpdate",
            type: "post",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify(data),
            success: function(response) {
                console.log("Response Data:", response);
                alert(response.status);
            },
            error: function(xhr, status, error) {
                console.log("AJAX 호출 에러:", status, error, xhr.responseText);
                alert("Error occurred. Check console for details.");
            }
        });
    }

    function clearRange() {
        // 범위 및 값 객체 생성
        var data = {
            rangeStart: "D0100",
            rangeEnd: "D0199",
            bulkValue: "0"
        };

        $.ajax({
            url: "/donghwa/bulkUpdate",
            type: "post",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify(data),
            success: function(response) {
                console.log("Response Data:", response);
                alert(response.status);
            },
            error: function(xhr, status, error) {
                console.log("AJAX 호출 에러:", status, error, xhr.responseText);
                alert("Error occurred. Check console for details.");
            }
        });
    }


    function bulkUpdateAlt() {
        // 입력 필드에서 값 가져오기
        var rangeStart = document.getElementById("rangeStartAlt").value;
        var rangeEnd = document.getElementById("rangeEndAlt").value;
        var bulkValue = document.getElementById("bulkValueAlt").value;
        
        // 유효성 검사
        if (!rangeStart || !rangeEnd || !bulkValue) {
            alert("Please fill in all fields.");
            return;
        }

        // 범위 및 값 객체 생성
        var data = {
            rangeStart: rangeStart,
            rangeEnd: rangeEnd,
            bulkValue: bulkValue
        };

        $.ajax({
            url: "/donghwa/bulkUpdateAlt",
            type: "post",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify(data),
            success: function(response) {
                console.log("Response Data:", response);
                alert(response.status);
            },
            error: function(xhr, status, error) {
                console.log("AJAX 호출 에러:", status, error, xhr.responseText);
                alert("Error occurred. Check console for details.");
            }
        });
    }
      
    </script>
</body>

</html>

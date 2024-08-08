<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>OPC UA Client</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <h1>OPC UA Client</h1>

    <h2>Read Values</h2>
    <button id="readValuesBtn">Read Values</button>
    <div id="readValuesResult"></div>

    <h2>Write Value</h2>
    <form id="writeForm">
        <label for="nodeId">Node ID(Word):</label>
        <input type="text" id="nodeId" name="nodeId" required>
        <br>
        <label for="value">Value(Word):</label>
        <input type="text" id="value" name="value" required>
        <br>
        
        <label for="nodeId">Node ID2(String):</label>
        <input type="text" id="nodeId2" name="nodeId2" required>
        <br>        
        <label for="value">Value2(String):</label>
        <input type="text" id="value2" name="value2" required>
        <br>
        
        <label for="nodeId">Node ID3(Boolean):</label>
        <input type="text" id="nodeId3" name="nodeId3" required>
        <br>        
        <label for="value">Value3(Boolean):</label>
        <input type="text" id="value3" name="value3" required>
        <br>
        
        
        <button type="button" onclick="writeValue()">Write Value</button>
    </form>
    
    
    <div id="writeResult"></div>

    <h2>Read Single Value</h2>
    <button id="readSingleValueBtn">Read Single Value</button>
    <div id="readSingleValueResult"></div>

    <script>
        $(document).ready(function(){
            $("#readValuesBtn").click(function(){
                $.ajax({
                    url: "/donghwa/opc",
                    method: "GET",
                    success: function(data) {
                        $("#readValuesResult").html(JSON.stringify(data, null, 2));
                    },
                    error: function(error) {
                        $("#readValuesResult").html("Error: " + error.responseText);
                    }
                });
            });


            $("#readSingleValueBtn").click(function(){
                $.ajax({
                    url: "/",
                    method: "GET",
                    success: function(data) {
                        $("#readSingleValueResult").html(data);
                    },
                    error: function(error) {
                        $("#readSingleValueResult").html("Error: " + error.responseText);
                    }
                });
            });
        });


        function writeValue(){
		console.log("ASD");

            $.ajax({
                url: "/donghwa/write_test",
                type: "POST",
                dataTyap:"json",
                data: $("#writeForm").serialize(),
                success: function(data) {
                    $("#writeResult").html(data.message);
                },
                error: function(error) {
                    $("#writeResult").html("Error: " + error.responseText);
                }
            });
        }
    </script>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>OPC UA Client</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="resources/style.css" />
<style>
/* 기존 스타일 */
.ex1 {
  border-radius: 30px;
  width: 70px;
  height: 70px;
  display: table-cell;
  vertical-align: middle;
  text-align: center;
  cursor: pointer;
}


.parent {
  border: 1px solid black;
  margin: 1px;
  padding: 10px;

  text-align: center;
}

.child {
  display: inline-block;
  width: 80px;
  height: 80px;
}

.range-inputs {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    box-sizing: border-box;
}
.range-inputs label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
    color: #333;
}
.range-inputs input {
    width: calc(100% - 20px);
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
.range-inputs button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    border: none;
    border-radius: 4px;
    color: white;
    font-size: 16px;
    cursor: pointer;
}
.range-inputs button:hover {
    background-color: #45a049;
}
.results {
    margin-top: 20px;
}

.page {
    display: flex;
   
}

.right {
    margin-left:200px;
    width: 100%;
    
    padding: 20px;
    box-sizing: border-box;
}


.left {
   margin-left:20px;
    width: 20%;
    padding: 20px;
    box-sizing: border-box;
}
#false{
	margin-top:10px;
	background-color:red;
}




</style>

</head>
<body id="by">

<h1>OPC UA Client</h1>

<div class="page">
    <div class="left">
        <div class="range-inputs">
            <label for="startId">start ID:</label>
            <div>M0100</div>
            <input type="text" id="startId" placeholder="ex: M0100">
        
            <label for="endId">end ID:</label>
            <input type="text" id="endId" placeholder="ex: M0150">
        
            <button type="button" onclick="calculateIds()">TRUE</button>
            <button id="false" type="button" onclick="calculateIds2()">FALSE</button>
        </div>
        <div class="results" id="results"></div>
    </div>
    
    
<form id="writeForm">
    <div class="right">
       <div class="parent">
          <div class="child">
              <label for="value">M0100</label>
              <input type="text" id="m0100" required style="font-size:14pt;">
            <div class="ex1" id="m0100_d"></div>
              
              <label for="value">M0101</label>
              <input type="text" id="m0101" required style="font-size:14pt;">
              <div class="ex1" id="m0101_d"></div>
              
              <label for="value">M0102</label>
              <input type="text" id="m0102" required style="font-size:14pt;">
              <div class="ex1" id="m0102_d"></div>
              
              <label for="value">M0103</label>
              <input type="text" id="m0103" required style="font-size:14pt;">
              <div class="ex1" id="m0103_d"></div>
              
              <label for="value">M0104</label>
              <input type="text" id="m0104" required style="font-size:14pt;">
              <div class="ex1" id="m0104_d"></div>
              
              <label for="value">M0105</label>
              <input type="text" id="m0105" required style="font-size:14pt;">
              <div class="ex1" id="m0105_d"></div>
              
              <label for="value">M0106</label>
              <input type="text" id="m0106" required style="font-size:14pt;">
              <div class="ex1" id="m0106_d"></div>
              
              <label for="value">M0107</label>
              <input type="text" id="m0107" required style="font-size:14pt;">
              <div class="ex1" id="m0107_d"></div>
              
              <label for="value">M0108</label>
              <input type="text" id="m0108" required style="font-size:14pt;">
              <div class="ex1" id="m0108_d"></div>
              
              <label for="value">M0109</label>
              <input type="text" id="m0109" required style="font-size:14pt;">
              <div class="ex1" id="m0109_d"></div>
         </div>
         
         <div class="child">
              <label for="value">M0110</label>
              <input type="text" id="m0110" required style="font-size:14pt;">
            <div class="ex1" id="m0110_d"></div>
              
              <label for="value">M0111</label>
              <input type="text" id="m0111" required style="font-size:14pt;">
              <div class="ex1" id="m0111_d"></div>
              
              <label for="value">M0112</label>
              <input type="text" id="m0112" required style="font-size:14pt;">
              <div class="ex1" id="m0112_d"></div>
              
              <label for="value">M0113</label>
              <input type="text" id="m0113" required style="font-size:14pt;">
              <div class="ex1" id="m0113_d"></div>
              
              <label for="value">M0114</label>
              <input type="text" id="m0114" required style="font-size:14pt;">
              <div class="ex1" id="m0114_d"></div>
              
              <label for="value">M0115</label>
              <input type="text" id="m0115" required style="font-size:14pt;">
              <div class="ex1" id="m0115_d"></div>
              
              <label for="value">M0116</label>
              <input type="text" id="m0116" required style="font-size:14pt;">
              <div class="ex1" id="m0116_d"></div>
              
              <label for="value">M0117</label>
              <input type="text" id="m0117" required style="font-size:14pt;">
              <div class="ex1" id="m0117_d"></div>
              
              <label for="value">M0118</label>
              <input type="text" id="m0118" required style="font-size:14pt;">
              <div class="ex1" id="m0118_d"></div>
              
              <label for="value">M0119</label>
              <input type="text" id="m0119" required style="font-size:14pt;">
              <div class="ex1" id="m0119_d"></div>
         </div>
         
         
         <div class="child">
              <label for="value">M0120</label>
              <input type="text" id="m0120" required style="font-size:14pt;">
            <div class="ex1" id="m0120_d"></div>
              
              <label for="value">M0121</label>
              <input type="text" id="m0121" required style="font-size:14pt;">
              <div class="ex1" id="m0121_d"></div>
              
              <label for="value">M0122</label>
              <input type="text" id="m0122" required style="font-size:14pt;">
              <div class="ex1" id="m0122_d"></div>
              
              <label for="value">M0123</label>
              <input type="text" id="m0123" required style="font-size:14pt;">
              <div class="ex1" id="m0123_d"></div>
              
              <label for="value">M0124</label>
              <input type="text" id="m0124" required style="font-size:14pt;">
              <div class="ex1" id="m0124_d"></div>
              
              <label for="value">M0125</label>
              <input type="text" id="m0125" required style="font-size:14pt;">
              <div class="ex1" id="m0125_d"></div>
              
              <label for="value">M0126</label>
              <input type="text" id="m0126" required style="font-size:14pt;">
              <div class="ex1" id="m0126_d"></div>
              
              <label for="value">M0127</label>
              <input type="text" id="m0127" required style="font-size:14pt;">
              <div class="ex1" id="m0127_d"></div>
              
              <label for="value">M0128</label>
              <input type="text" id="m0128" required style="font-size:14pt;">
              <div class="ex1" id="m0128_d"></div>
              
              <label for="value">M0129</label>
              <input type="text" id="m0129" required style="font-size:14pt;">
              <div class="ex1" id="m0129_d"></div>
         
         </div>
         
         
         <div class="child">
              <label for="value">M0130</label>
              <input type="text" id="m0130" required style="font-size:14pt;">
            <div class="ex1" id="m0130_d"></div>
              
              <label for="value">M0131</label>
              <input type="text" id="m0131" required style="font-size:14pt;">
              <div class="ex1" id="m0131_d"></div>
              
              <label for="value">M0132</label>
              <input type="text" id="m0132" required style="font-size:14pt;">
              <div class="ex1" id="m0132_d"></div>
              
              <label for="value">M0133</label>
              <input type="text" id="m0133" required style="font-size:14pt;">
              <div class="ex1" id="m0133_d"></div>
              
              <label for="value">M0134</label>
              <input type="text" id="m0134" required style="font-size:14pt;">
              <div class="ex1" id="m0134_d"></div>
              
              <label for="value">M0135</label>
              <input type="text" id="m0135" required style="font-size:14pt;">
              <div class="ex1" id="m0135_d"></div>
              
              <label for="value">M0136</label>
              <input type="text" id="m0136" required style="font-size:14pt;">
              <div class="ex1" id="m0136_d"></div>
              
              <label for="value">M0137</label>
              <input type="text" id="m0137" required style="font-size:14pt;">
              <div class="ex1" id="m0137_d"></div>
              
              <label for="value">M0138</label>
              <input type="text" id="m0138" required style="font-size:14pt;">
              <div class="ex1" id="m0138_d"></div>
              
              <label for="value">M0139</label>
              <input type="text" id="m0139" required style="font-size:14pt;">
              <div class="ex1" id="m0139_d"></div>
         
         </div>               
         
         
         <div class="child">
              <label for="value">M0140</label>
              <input type="text" id="m0140" required style="font-size:14pt;">
            <div class="ex1" id="m0140_d"></div>
              
              <label for="value">M0141</label>
              <input type="text" id="m0141" required style="font-size:14pt;">
              <div class="ex1" id="m0141_d"></div>
              
              <label for="value">M0142</label>
              <input type="text" id="m0142" required style="font-size:14pt;">
              <div class="ex1" id="m0142_d"></div>
              
              <label for="value">M0143</label>
              <input type="text" id="m0143" required style="font-size:14pt;">
              <div class="ex1" id="m0143_d"></div>
              
              <label for="value">M0144</label>
              <input type="text" id="m0144" required style="font-size:14pt;">
              <div class="ex1" id="m0144_d"></div>
              
              <label for="value">M0145</label>
              <input type="text" id="m0145" required style="font-size:14pt;">
              <div class="ex1" id="m0145_d"></div>
              
              <label for="value">M0146</label>
              <input type="text" id="m0146" required style="font-size:14pt;">
              <div class="ex1" id="m0146_d"></div>
              
              <label for="value">M0147</label>
              <input type="text" id="m0147" required style="font-size:14pt;">
              <div class="ex1" id="m0147_d"></div>
              
              <label for="value">M0148</label>
              <input type="text" id="m0148" required style="font-size:14pt;">
              <div class="ex1" id="m0148_d"></div>
              
              <label for="value">M0149</label>
              <input type="text" id="m0149" required style="font-size:14pt;">
              <div class="ex1" id="m0149_d"></div>
         
         </div>               
         
         
         
         <div class="child">
              <label for="value">M0150</label>
              <input type="text" id="m0150" required style="font-size:14pt;">
            <div class="ex1" id="m0150_d"></div>
              
              <label for="value">M0151</label>
              <input type="text" id="m0151" required style="font-size:14pt;">
              <div class="ex1" id="m0151_d"></div>
              
              <label for="value">M0152</label>
              <input type="text" id="m0152" required style="font-size:14pt;">
              <div class="ex1" id="m0152_d"></div>
              
              <label for="value">M0153</label>
              <input type="text" id="m0153" required style="font-size:14pt;">
              <div class="ex1" id="m0153_d"></div>
              
              <label for="value">M0154</label>
              <input type="text" id="m0154" required style="font-size:14pt;">
              <div class="ex1" id="m0154_d"></div>
              
              <label for="value">M0155</label>
              <input type="text" id="m0155" required style="font-size:14pt;">
              <div class="ex1" id="m0155_d"></div>
              
              <label for="value">M0156</label>
              <input type="text" id="m0156" required style="font-size:14pt;">
              <div class="ex1" id="m0156_d"></div>
              
              <label for="value">M0157</label>
              <input type="text" id="m0157" required style="font-size:14pt;">
              <div class="ex1" id="m0157_d"></div>
              
              <label for="value">M0158</label>
              <input type="text" id="m0158" required style="font-size:14pt;">
              <div class="ex1" id="m0158_d"></div>
              
              <label for="value">M0159</label>
              <input type="text" id="m0159" required style="font-size:14pt;">
              <div class="ex1" id="m0159_d"></div>
         
         </div>               
         
         
         
         <div class="child">
              <label for="value">M0160</label>
              <input type="text" id="m0160" required style="font-size:14pt;">
            <div class="ex1" id="m0160_d"></div>
              
              <label for="value">M0161</label>
              <input type="text" id="m0161" required style="font-size:14pt;">
              <div class="ex1" id="m0161_d"></div>
              
              <label for="value">M0162</label>
              <input type="text" id="m0162" required style="font-size:14pt;">
              <div class="ex1" id="m0162_d"></div>
              
              <label for="value">M0163</label>
              <input type="text" id="m0163" required style="font-size:14pt;">
              <div class="ex1" id="m0163_d"></div>
              
              <label for="value">M0164</label>
              <input type="text" id="m0164" required style="font-size:14pt;">
              <div class="ex1" id="m0164_d"></div>
              
              <label for="value">M0165</label>
              <input type="text" id="m0165" required style="font-size:14pt;">
              <div class="ex1" id="m0165_d"></div>
              
              <label for="value">M0166</label>
              <input type="text" id="m0166" required style="font-size:14pt;">
              <div class="ex1" id="m0166_d"></div>
              
              <label for="value">M0167</label>
              <input type="text" id="m0167" required style="font-size:14pt;">
              <div class="ex1" id="m0167_d"></div>
              
              <label for="value">M0168</label>
              <input type="text" id="m0168" required style="font-size:14pt;">
              <div class="ex1" id="m0168_d"></div>
              
              <label for="value">M0169</label>
              <input type="text" id="m0169" required style="font-size:14pt;">
              <div class="ex1" id="m0169_d"></div>
         
         </div>               
         
         
         <div class="child">
              <label for="value">M0170</label>
              <input type="text" id="m0170" required style="font-size:14pt;">
            <div class="ex1" id="m0170_d"></div>
              
              <label for="value">M0171</label>
              <input type="text" id="m0171" required style="font-size:14pt;">
              <div class="ex1" id="m0171_d"></div>
              
              <label for="value">M0172</label>
              <input type="text" id="m0172" required style="font-size:14pt;">
              <div class="ex1" id="m0172_d"></div>
              
              <label for="value">M0173</label>
              <input type="text" id="m0173" required style="font-size:14pt;">
              <div class="ex1" id="m0173_d"></div>
              
              <label for="value">M0174</label>
              <input type="text" id="m0174" required style="font-size:14pt;">
              <div class="ex1" id="m0174_d"></div>
              
              <label for="value">M0175</label>
              <input type="text" id="m0175" required style="font-size:14pt;">
              <div class="ex1" id="m0175_d"></div>
              
              <label for="value">M0176</label>
              <input type="text" id="m0176" required style="font-size:14pt;">
              <div class="ex1" id="m0176_d"></div>
              
              <label for="value">M0177</label>
              <input type="text" id="m0177" required style="font-size:14pt;">
              <div class="ex1" id="m0177_d"></div>
              
              <label for="value">M0178</label>
              <input type="text" id="m0178" required style="font-size:14pt;">
              <div class="ex1" id="m0178_d"></div>
              
              <label for="value">M0179</label>
              <input type="text" id="m0179" required style="font-size:14pt;">
              <div class="ex1" id="m0179_d"></div>
         
         </div>               
         
         
         
         <div class="child">
              <label for="value">M0180</label>
              <input type="text" id="m0180" required style="font-size:14pt;">
            <div class="ex1" id="m0180_d"></div>
              
              <label for="value">M0181</label>
              <input type="text" id="m0181" required style="font-size:14pt;">
              <div class="ex1" id="m0181_d"></div>
              
              <label for="value">M0182</label>
              <input type="text" id="m0182" required style="font-size:14pt;">
              <div class="ex1" id="m0182_d"></div>
              
              <label for="value">M0183</label>
              <input type="text" id="m0183" required style="font-size:14pt;">
              <div class="ex1" id="m0183_d"></div>
              
              <label for="value">M0184</label>
              <input type="text" id="m0184" required style="font-size:14pt;">
              <div class="ex1" id="m0184_d"></div>
              
              <label for="value">M0185</label>
              <input type="text" id="m0185" required style="font-size:14pt;">
              <div class="ex1" id="m0185_d"></div>
              
              <label for="value">M0186</label>
              <input type="text" id="m0186" required style="font-size:14pt;">
              <div class="ex1" id="m0186_d"></div>
              
              <label for="value">M0187</label>
              <input type="text" id="m0187" required style="font-size:14pt;">
              <div class="ex1" id="m0187_d"></div>
              
              <label for="value">M0188</label>
              <input type="text" id="m0188" required style="font-size:14pt;">
              <div class="ex1" id="m0188_d"></div>
              
              <label for="value">M0189</label>
              <input type="text" id="m0189" required style="font-size:14pt;">
              <div class="ex1" id="m0189_d"></div>
         
         </div>               
         
         
         
         <div class="child">
              <label for="value">M0190</label>
              <input type="text" id="m0190" required style="font-size:14pt;">
            <div class="ex1" id="m0190_d"></div>
              
              <label for="value">M0191</label>
              <input type="text" id="m0191" required style="font-size:14pt;">
              <div class="ex1" id="m0191_d"></div>
              
              <label for="value">M0192</label>
              <input type="text" id="m0192" required style="font-size:14pt;">
              <div class="ex1" id="m0192_d"></div>
              
              <label for="value">M0193</label>
              <input type="text" id="m0193" required style="font-size:14pt;">
              <div class="ex1" id="m0193_d"></div>
              
              <label for="value">M0194</label>
              <input type="text" id="m0194" required style="font-size:14pt;">
              <div class="ex1" id="m0194_d"></div>
              
              <label for="value">M0195</label>
              <input type="text" id="m0195" required style="font-size:14pt;">
              <div class="ex1" id="m0195_d"></div>
              
              <label for="value">M0196</label>
              <input type="text" id="m0196" required style="font-size:14pt;">
              <div class="ex1" id="m0196_d"></div>
              
              <label for="value">M0197</label>
              <input type="text" id="m0197" required style="font-size:14pt;">
              <div class="ex1" id="m0197_d"></div>
              
              <label for="value">M0198</label>
              <input type="text" id="m0198" required style="font-size:14pt;">
              <div class="ex1" id="m0198_d"></div>
              
              <label for="value">M0199</label>
              <input type="text" id="m0199" required style="font-size:14pt;">
              <div class="ex1" id="m0199_d"></div>
         
         </div>               
         </div>         
       </div>
       
       
       

    </form>
         </div>               

    <script>
   //전역변수
   var monitoring1Interval;
   var selectId;
   var selectValue;
    
    //로드 주기시간
   $(function(){
      monitoring1Interval = setInterval("getMonitoring1();",200);
   });

    //이벤트
   $(".ex1").on("click",function(e){
      console.log(e);
      console.log(e.currentTarget.id);
      selectId = (e.currentTarget.id).replace("_d","");
      selectValue = $("#"+selectId).val();

      console.log(selectId+"// "+selectValue);

      setSelectTagValue();
   });
    
    //함수
    
    //값쓰기
    function setSelectTagValue(){
        $.ajax({
            url:"/donghwa/monitoring1/setValue",
            type:"post",
            dataType:"json",
            data:{
                "id":selectId,
                "value":selectValue
            },success:function(rtn){
                console.log(rtn);
         }
      });
   }
    
    function getMonitoring1(){
        $.ajax({
           url:"/donghwa/monitoring1/view",
           type:"post",
           dataType:"json",
           success:function(rtn){
//              console.log(rtn);
              var data = rtn.multiValues;

              if(data != "Fail"){
                 
                 var m0100 = data.DONGHWA_PLC_M_M0100;
                 var m0101 = data.DONGHWA_PLC_M_M0101;
                 var m0102 = data.DONGHWA_PLC_M_M0102;
                 var m0103 = data.DONGHWA_PLC_M_M0103;
                 var m0104 = data.DONGHWA_PLC_M_M0104;
                 var m0105 = data.DONGHWA_PLC_M_M0105;
                 var m0106 = data.DONGHWA_PLC_M_M0106;
                 var m0107 = data.DONGHWA_PLC_M_M0107;
                 var m0108 = data.DONGHWA_PLC_M_M0108;
                 var m0109 = data.DONGHWA_PLC_M_M0109;
                 var m0110 = data.DONGHWA_PLC_M_M0110;
                 var m0111 = data.DONGHWA_PLC_M_M0111;
                 var m0112 = data.DONGHWA_PLC_M_M0112;
                 var m0113 = data.DONGHWA_PLC_M_M0113;
                 var m0114 = data.DONGHWA_PLC_M_M0114;
                 var m0115 = data.DONGHWA_PLC_M_M0115;
                 var m0116 = data.DONGHWA_PLC_M_M0116;
                 var m0117 = data.DONGHWA_PLC_M_M0117;
                 var m0118 = data.DONGHWA_PLC_M_M0118;
                 var m0119 = data.DONGHWA_PLC_M_M0119;
                 var m0120 = data.DONGHWA_PLC_M_M0120;
                 var m0121 = data.DONGHWA_PLC_M_M0121;
                 var m0122 = data.DONGHWA_PLC_M_M0122;
                 var m0123 = data.DONGHWA_PLC_M_M0123;
                 var m0124 = data.DONGHWA_PLC_M_M0124;
                 var m0125 = data.DONGHWA_PLC_M_M0125;
                 var m0126 = data.DONGHWA_PLC_M_M0126;
                 var m0127 = data.DONGHWA_PLC_M_M0127;
                 var m0128 = data.DONGHWA_PLC_M_M0128;
                 var m0129 = data.DONGHWA_PLC_M_M0129;
                 var m0130 = data.DONGHWA_PLC_M_M0130;
                 var m0131 = data.DONGHWA_PLC_M_M0131;
                 var m0132 = data.DONGHWA_PLC_M_M0132;
                 var m0133 = data.DONGHWA_PLC_M_M0133;
                 var m0134 = data.DONGHWA_PLC_M_M0134;
                 var m0135 = data.DONGHWA_PLC_M_M0135;
                 var m0136 = data.DONGHWA_PLC_M_M0136;
                 var m0137 = data.DONGHWA_PLC_M_M0137;
                 var m0138 = data.DONGHWA_PLC_M_M0138;
                 var m0139 = data.DONGHWA_PLC_M_M0139;
                 var m0140 = data.DONGHWA_PLC_M_M0140;
                 var m0141 = data.DONGHWA_PLC_M_M0141;
                 var m0142 = data.DONGHWA_PLC_M_M0142;
                 var m0143 = data.DONGHWA_PLC_M_M0143;
                 var m0144 = data.DONGHWA_PLC_M_M0144;
                 var m0145 = data.DONGHWA_PLC_M_M0145;
                 var m0146 = data.DONGHWA_PLC_M_M0146;
                 var m0147 = data.DONGHWA_PLC_M_M0147;
                 var m0148 = data.DONGHWA_PLC_M_M0148;
                 var m0149 = data.DONGHWA_PLC_M_M0149;
                 var m0150 = data.DONGHWA_PLC_M_M0150;
                 var m0151 = data.DONGHWA_PLC_M_M0151;
                 var m0152 = data.DONGHWA_PLC_M_M0152;
                 var m0153 = data.DONGHWA_PLC_M_M0153;
                 var m0154 = data.DONGHWA_PLC_M_M0154;
                 var m0155 = data.DONGHWA_PLC_M_M0155;
                 var m0156 = data.DONGHWA_PLC_M_M0156;
                 var m0157 = data.DONGHWA_PLC_M_M0157;
                 var m0158 = data.DONGHWA_PLC_M_M0158;
                 var m0159 = data.DONGHWA_PLC_M_M0159;
                 var m0160 = data.DONGHWA_PLC_M_M0160;
                 var m0161 = data.DONGHWA_PLC_M_M0161;
                 var m0162 = data.DONGHWA_PLC_M_M0162;
                 var m0163 = data.DONGHWA_PLC_M_M0163;
                 var m0164 = data.DONGHWA_PLC_M_M0164;
                 var m0165 = data.DONGHWA_PLC_M_M0165;
                 var m0166 = data.DONGHWA_PLC_M_M0166;
                 var m0167 = data.DONGHWA_PLC_M_M0167;
                 var m0168 = data.DONGHWA_PLC_M_M0168;
                 var m0169 = data.DONGHWA_PLC_M_M0169;
                 var m0170 = data.DONGHWA_PLC_M_M0170;
                 var m0171 = data.DONGHWA_PLC_M_M0171;
                 var m0172 = data.DONGHWA_PLC_M_M0172;
                 var m0173 = data.DONGHWA_PLC_M_M0173;
                 var m0174 = data.DONGHWA_PLC_M_M0174;
                 var m0175 = data.DONGHWA_PLC_M_M0175;
                 var m0176 = data.DONGHWA_PLC_M_M0176;
                 var m0177 = data.DONGHWA_PLC_M_M0177;
                 var m0178 = data.DONGHWA_PLC_M_M0178;
                 var m0179 = data.DONGHWA_PLC_M_M0179;
                 var m0180 = data.DONGHWA_PLC_M_M0180;
                 var m0181 = data.DONGHWA_PLC_M_M0181;
                 var m0182 = data.DONGHWA_PLC_M_M0182;
                 var m0183 = data.DONGHWA_PLC_M_M0183;
                 var m0184 = data.DONGHWA_PLC_M_M0184;
                 var m0185 = data.DONGHWA_PLC_M_M0185;
                 var m0186 = data.DONGHWA_PLC_M_M0186;
                 var m0187 = data.DONGHWA_PLC_M_M0187;
                 var m0188 = data.DONGHWA_PLC_M_M0188;
                 var m0189 = data.DONGHWA_PLC_M_M0189;
                 var m0190 = data.DONGHWA_PLC_M_M0190;
                 var m0191 = data.DONGHWA_PLC_M_M0191;
                 var m0192 = data.DONGHWA_PLC_M_M0192;
                 var m0193 = data.DONGHWA_PLC_M_M0193;
                 var m0194 = data.DONGHWA_PLC_M_M0194;
                 var m0195 = data.DONGHWA_PLC_M_M0195;
                 var m0196 = data.DONGHWA_PLC_M_M0196;
                 var m0197 = data.DONGHWA_PLC_M_M0197;
                 var m0198 = data.DONGHWA_PLC_M_M0198;
                 var m0199 = data.DONGHWA_PLC_M_M0199;
              
                 
                 $("#m0100").val(m0100);
                 $("#m0101").val(m0101);
                 $("#m0102").val(m0102);
                 $("#m0103").val(m0103);
                 $("#m0104").val(m0104);
                 $("#m0105").val(m0105);
                 $("#m0106").val(m0106);
                 $("#m0107").val(m0107);
                 $("#m0108").val(m0108);
                 $("#m0109").val(m0109);
                 $("#m0110").val(m0110);
                 $("#m0111").val(m0111);
                 $("#m0112").val(m0112);
                 $("#m0113").val(m0113);
                 $("#m0114").val(m0114);
                 $("#m0115").val(m0115);
                 $("#m0116").val(m0116);
                 $("#m0117").val(m0117);
                 $("#m0118").val(m0118);
                 $("#m0119").val(m0119);
                 $("#m0120").val(m0120);
                 $("#m0121").val(m0121);
                 $("#m0122").val(m0122);
                 $("#m0123").val(m0123);
                 $("#m0124").val(m0124);
                 $("#m0125").val(m0125);
                 $("#m0126").val(m0126);
                 $("#m0127").val(m0127);
                 $("#m0128").val(m0128);
                 $("#m0129").val(m0129);
                 $("#m0130").val(m0130);
                 $("#m0131").val(m0131);
                 $("#m0132").val(m0132);
                 $("#m0133").val(m0133);
                 $("#m0134").val(m0134);
                 $("#m0135").val(m0135);
                 $("#m0136").val(m0136);
                 $("#m0137").val(m0137);
                 $("#m0138").val(m0138);
                 $("#m0139").val(m0139);
                 $("#m0140").val(m0140);
                 $("#m0141").val(m0141);
                 $("#m0142").val(m0142);
                 $("#m0143").val(m0143);
                 $("#m0144").val(m0144);
                 $("#m0145").val(m0145);
                 $("#m0146").val(m0146);
                 $("#m0147").val(m0147);
                 $("#m0148").val(m0148);
                 $("#m0149").val(m0149);
                 $("#m0150").val(m0150);
                 $("#m0151").val(m0151);
                 $("#m0152").val(m0152);
                 $("#m0153").val(m0153);
                 $("#m0154").val(m0154);
                 $("#m0155").val(m0155);
                 $("#m0156").val(m0156);
                 $("#m0157").val(m0157);
                 $("#m0158").val(m0158);
                 $("#m0159").val(m0159);
                 $("#m0160").val(m0160);
                 $("#m0161").val(m0161);
                 $("#m0162").val(m0162);
                 $("#m0163").val(m0163);
                 $("#m0164").val(m0164);
                 $("#m0165").val(m0165);
                 $("#m0166").val(m0166);
                 $("#m0167").val(m0167);
                 $("#m0168").val(m0168);
                 $("#m0169").val(m0169);
                 $("#m0170").val(m0170);
                 $("#m0171").val(m0171);
                 $("#m0172").val(m0172);
                 $("#m0173").val(m0173);
                 $("#m0174").val(m0174);
                 $("#m0175").val(m0175);
                 $("#m0176").val(m0176);
                 $("#m0177").val(m0177);
                 $("#m0178").val(m0178);
                 $("#m0179").val(m0179);
                 $("#m0180").val(m0180);
                 $("#m0181").val(m0181);
                 $("#m0182").val(m0182);
                 $("#m0183").val(m0183);
                 $("#m0184").val(m0184);
                 $("#m0185").val(m0185);
                 $("#m0186").val(m0186);
                 $("#m0187").val(m0187);
                 $("#m0188").val(m0188);
                 $("#m0189").val(m0189);
                 $("#m0190").val(m0190);
                 $("#m0191").val(m0191);
                 $("#m0192").val(m0192);
                 $("#m0193").val(m0193);
                 $("#m0194").val(m0194);
                 $("#m0195").val(m0195);
                 $("#m0196").val(m0196);
                 $("#m0197").val(m0197);
                 $("#m0198").val(m0198);
                 $("#m0199").val(m0199);
     

     
                 if(m0100 == true){
                    $("#m0100_d").css("background-color","green");
                 }else{
                    $("#m0100_d").css("background-color","red");
                 }
     
                 if(m0101 == true){
                    $("#m0101_d").css("background-color","green");
                 }else{
                    $("#m0101_d").css("background-color","red");
                 }
     
                 if(m0102 == true){
                    $("#m0102_d").css("background-color","green");
                 }else{
                    $("#m0102_d").css("background-color","red");
                 }
     
                 if(m0103 == true){
                    $("#m0103_d").css("background-color","green");
                 }else{
                    $("#m0103_d").css("background-color","red");
                 }
     
                 if(m0104 == true){
                    $("#m0104_d").css("background-color","green");
                 }else{
                    $("#m0104_d").css("background-color","red");
                 }
     
                 if(m0105 == true){
                    $("#m0105_d").css("background-color","green");
                 }else{
                    $("#m0105_d").css("background-color","red");
                 }
     
                 if(m0106 == true){
                    $("#m0106_d").css("background-color","green");
                 }else{
                    $("#m0106_d").css("background-color","red");
                 }
     
                 if(m0107 == true){
                    $("#m0107_d").css("background-color","green");
                 }else{
                    $("#m0107_d").css("background-color","red");
                 }
     
                 if(m0108 == true){
                    $("#m0108_d").css("background-color","green");
                 }else{
                    $("#m0108_d").css("background-color","red");
                 }
     
                 if(m0109 == true){
                    $("#m0109_d").css("background-color","green");
                 }else{
                    $("#m0109_d").css("background-color","red");
                 }
     
                 if(m0110 == true){
                    $("#m0110_d").css("background-color","green");
                 }else{
                    $("#m0110_d").css("background-color","red");
                 }
     
                 if(m0111 == true){
                    $("#m0111_d").css("background-color","green");
                 }else{
                    $("#m0111_d").css("background-color","red");
                 }
     
                 if(m0112 == true){
                    $("#m0112_d").css("background-color","green");
                 }else{
                    $("#m0112_d").css("background-color","red");
                 }
     
                 if(m0113 == true){
                    $("#m0113_d").css("background-color","green");
                 }else{
                    $("#m0113_d").css("background-color","red");
                 }
     
                 if(m0114 == true){
                    $("#m0114_d").css("background-color","green");
                 }else{
                    $("#m0114_d").css("background-color","red");
                 }
     
                 if(m0115 == true){
                    $("#m0115_d").css("background-color","green");
                 }else{
                    $("#m0115_d").css("background-color","red");
                 }
     
                 if(m0116 == true){
                    $("#m0116_d").css("background-color","green");
                 }else{
                    $("#m0116_d").css("background-color","red");
                 }
     
                 if(m0117 == true){
                    $("#m0117_d").css("background-color","green");
                 }else{
                    $("#m0117_d").css("background-color","red");
                 }
     
                 if(m0118 == true){
                    $("#m0118_d").css("background-color","green");
                 }else{
                    $("#m0118_d").css("background-color","red");
                 }
     
                 if(m0119 == true){
                    $("#m0119_d").css("background-color","green");
                 }else{
                    $("#m0119_d").css("background-color","red");
                 }

     
                 if(m0120 == true){
                    $("#m0120_d").css("background-color","green");
                 }else{
                    $("#m0120_d").css("background-color","red");
                 }
     
                 if(m0121 == true){
                    $("#m0121_d").css("background-color","green");
                 }else{
                    $("#m0121_d").css("background-color","red");
                 }
     
                 if(m0122 == true){
                    $("#m0122_d").css("background-color","green");
                 }else{
                    $("#m0122_d").css("background-color","red");
                 }
     
                 if(m0123 == true){
                    $("#m0123_d").css("background-color","green");
                 }else{
                    $("#m0123_d").css("background-color","red");
                 }
     
                 if(m0124 == true){
                    $("#m0124_d").css("background-color","green");
                 }else{
                    $("#m0124_d").css("background-color","red");
                 }
     
                 if(m0125 == true){
                    $("#m0125_d").css("background-color","green");
                 }else{
                    $("#m0125_d").css("background-color","red");
                 }
     
                 if(m0126 == true){
                    $("#m0126_d").css("background-color","green");
                 }else{
                    $("#m0126_d").css("background-color","red");
                 }
     
                 if(m0127 == true){
                    $("#m0127_d").css("background-color","green");
                 }else{
                    $("#m0127_d").css("background-color","red");
                 }
     
                 if(m0128 == true){
                    $("#m0128_d").css("background-color","green");
                 }else{
                    $("#m0128_d").css("background-color","red");
                 }
     
                 if(m0129 == true){
                    $("#m0129_d").css("background-color","green");
                 }else{
                    $("#m0129_d").css("background-color","red");
                 }

     
                 if(m0130 == true){
                    $("#m0130_d").css("background-color","green");
                 }else{
                    $("#m0130_d").css("background-color","red");
                 }
     
                 if(m0131 == true){
                    $("#m0131_d").css("background-color","green");
                 }else{
                    $("#m0131_d").css("background-color","red");
                 }
     
                 if(m0132 == true){
                    $("#m0132_d").css("background-color","green");
                 }else{
                    $("#m0132_d").css("background-color","red");
                 }
     
                 if(m0133 == true){
                    $("#m0133_d").css("background-color","green");
                 }else{
                    $("#m0133_d").css("background-color","red");
                 }
     
                 if(m0134 == true){
                    $("#m0134_d").css("background-color","green");
                 }else{
                    $("#m0134_d").css("background-color","red");
                 }
     
                 if(m0135 == true){
                    $("#m0135_d").css("background-color","green");
                 }else{
                    $("#m0135_d").css("background-color","red");
                 }
     
                 if(m0136 == true){
                    $("#m0136_d").css("background-color","green");
                 }else{
                    $("#m0136_d").css("background-color","red");
                 }
     
                 if(m0137 == true){
                    $("#m0137_d").css("background-color","green");
                 }else{
                    $("#m0137_d").css("background-color","red");
                 }
     
                 if(m0138 == true){
                    $("#m0138_d").css("background-color","green");
                 }else{
                    $("#m0138_d").css("background-color","red");
                 }
     
                 if(m0139 == true){
                    $("#m0139_d").css("background-color","green");
                 }else{
                    $("#m0139_d").css("background-color","red");
                 }

     
                 if(m0140 == true){
                    $("#m0140_d").css("background-color","green");
                 }else{
                    $("#m0140_d").css("background-color","red");
                 }
     
                 if(m0141 == true){
                    $("#m0141_d").css("background-color","green");
                 }else{
                    $("#m0141_d").css("background-color","red");
                 }
     
                 if(m0142 == true){
                    $("#m0142_d").css("background-color","green");
                 }else{
                    $("#m0142_d").css("background-color","red");
                 }
     
                 if(m0143 == true){
                    $("#m0143_d").css("background-color","green");
                 }else{
                    $("#m0143_d").css("background-color","red");
                 }
     
                 if(m0144 == true){
                    $("#m0144_d").css("background-color","green");
                 }else{
                    $("#m0144_d").css("background-color","red");
                 }
     
                 if(m0145 == true){
                    $("#m0145_d").css("background-color","green");
                 }else{
                    $("#m0145_d").css("background-color","red");
                 }
     
                 if(m0146 == true){
                    $("#m0146_d").css("background-color","green");
                 }else{
                    $("#m0146_d").css("background-color","red");
                 }
     
                 if(m0147 == true){
                    $("#m0147_d").css("background-color","green");
                 }else{
                    $("#m0147_d").css("background-color","red");
                 }
     
                 if(m0148 == true){
                    $("#m0148_d").css("background-color","green");
                 }else{
                    $("#m0148_d").css("background-color","red");
                 }
     
                 if(m0149 == true){
                    $("#m0149_d").css("background-color","green");
                 }else{
                    $("#m0149_d").css("background-color","red");
                 }

     
                 if(m0150 == true){
                    $("#m0150_d").css("background-color","green");
                 }else{
                    $("#m0150_d").css("background-color","red");
                 }
     
                 if(m0151 == true){
                    $("#m0151_d").css("background-color","green");
                 }else{
                    $("#m0151_d").css("background-color","red");
                 }
     
                 if(m0152 == true){
                    $("#m0152_d").css("background-color","green");
                 }else{
                    $("#m0152_d").css("background-color","red");
                 }
     
                 if(m0153 == true){
                    $("#m0153_d").css("background-color","green");
                 }else{
                    $("#m0153_d").css("background-color","red");
                 }
     
                 if(m0154 == true){
                    $("#m0154_d").css("background-color","green");
                 }else{
                    $("#m0154_d").css("background-color","red");
                 }
     
                 if(m0155 == true){
                    $("#m0155_d").css("background-color","green");
                 }else{
                    $("#m0155_d").css("background-color","red");
                 }
     
                 if(m0156 == true){
                    $("#m0156_d").css("background-color","green");
                 }else{
                    $("#m0156_d").css("background-color","red");
                 }
     
                 if(m0157 == true){
                    $("#m0157_d").css("background-color","green");
                 }else{
                    $("#m0157_d").css("background-color","red");
                 }
     
                 if(m0158 == true){
                    $("#m0158_d").css("background-color","green");
                 }else{
                    $("#m0158_d").css("background-color","red");
                 }
     
                 if(m0159 == true){
                    $("#m0159_d").css("background-color","green");
                 }else{
                    $("#m0159_d").css("background-color","red");
                 }

     
                 if(m0160 == true){
                    $("#m0160_d").css("background-color","green");
                 }else{
                    $("#m0160_d").css("background-color","red");
                 }
     
                 if(m0161 == true){
                    $("#m0161_d").css("background-color","green");
                 }else{
                    $("#m0161_d").css("background-color","red");
                 }
     
                 if(m0162 == true){
                    $("#m0162_d").css("background-color","green");
                 }else{
                    $("#m0162_d").css("background-color","red");
                 }
     
                 if(m0163 == true){
                    $("#m0163_d").css("background-color","green");
                 }else{
                    $("#m0163_d").css("background-color","red");
                 }
     
                 if(m0164 == true){
                    $("#m0164_d").css("background-color","green");
                 }else{
                    $("#m0164_d").css("background-color","red");
                 }
     
                 if(m0165 == true){
                    $("#m0165_d").css("background-color","green");
                 }else{
                    $("#m0165_d").css("background-color","red");
                 }
     
                 if(m0166 == true){
                    $("#m0166_d").css("background-color","green");
                 }else{
                    $("#m0166_d").css("background-color","red");
                 }
     
                 if(m0167 == true){
                    $("#m0167_d").css("background-color","green");
                 }else{
                    $("#m0167_d").css("background-color","red");
                 }
     
                 if(m0168 == true){
                    $("#m0168_d").css("background-color","green");
                 }else{
                    $("#m0168_d").css("background-color","red");
                 }
     
                 if(m0169 == true){
                    $("#m0169_d").css("background-color","green");
                 }else{
                    $("#m0169_d").css("background-color","red");
                 }

     
                 if(m0170 == true){
                    $("#m0170_d").css("background-color","green");
                 }else{
                    $("#m0170_d").css("background-color","red");
                 }
     
                 if(m0171 == true){
                    $("#m0171_d").css("background-color","green");
                 }else{
                    $("#m0171_d").css("background-color","red");
                 }
     
                 if(m0172 == true){
                    $("#m0172_d").css("background-color","green");
                 }else{
                    $("#m0172_d").css("background-color","red");
                 }
     
                 if(m0173 == true){
                    $("#m0173_d").css("background-color","green");
                 }else{
                    $("#m0173_d").css("background-color","red");
                 }
     
                 if(m0174 == true){
                    $("#m0174_d").css("background-color","green");
                 }else{
                    $("#m0174_d").css("background-color","red");
                 }
     
                 if(m0175 == true){
                    $("#m0175_d").css("background-color","green");
                 }else{
                    $("#m0175_d").css("background-color","red");
                 }
     
                 if(m0176 == true){
                    $("#m0176_d").css("background-color","green");
                 }else{
                    $("#m0176_d").css("background-color","red");
                 }
     
                 if(m0177 == true){
                    $("#m0177_d").css("background-color","green");
                 }else{
                    $("#m0177_d").css("background-color","red");
                 }
     
                 if(m0178 == true){
                    $("#m0178_d").css("background-color","green");
                 }else{
                    $("#m0178_d").css("background-color","red");
                 }
     
                 if(m0179 == true){
                    $("#m0179_d").css("background-color","green");
                 }else{
                    $("#m0179_d").css("background-color","red");
                 }

     
                 if(m0180 == true){
                    $("#m0180_d").css("background-color","green");
                 }else{
                    $("#m0180_d").css("background-color","red");
                 }
     
                 if(m0181 == true){
                    $("#m0181_d").css("background-color","green");
                 }else{
                    $("#m0181_d").css("background-color","red");
                 }
     
                 if(m0182 == true){
                    $("#m0182_d").css("background-color","green");
                 }else{
                    $("#m0182_d").css("background-color","red");
                 }
     
                 if(m0183 == true){
                    $("#m0183_d").css("background-color","green");
                 }else{
                    $("#m0183_d").css("background-color","red");
                 }
     
                 if(m0184 == true){
                    $("#m0184_d").css("background-color","green");
                 }else{
                    $("#m0184_d").css("background-color","red");
                 }
     
                 if(m0185 == true){
                    $("#m0185_d").css("background-color","green");
                 }else{
                    $("#m0185_d").css("background-color","red");
                 }
     
                 if(m0186 == true){
                    $("#m0186_d").css("background-color","green");
                 }else{
                    $("#m0186_d").css("background-color","red");
                 }
     
                 if(m0187 == true){
                    $("#m0187_d").css("background-color","green");
                 }else{
                    $("#m0187_d").css("background-color","red");
                 }
     
                 if(m0188 == true){
                    $("#m0188_d").css("background-color","green");
                 }else{
                    $("#m0188_d").css("background-color","red");
                 }
     
                 if(m0189 == true){
                    $("#m0189_d").css("background-color","green");
                 }else{
                    $("#m0189_d").css("background-color","red");
                 }


     
                 if(m0190 == true){
                    $("#m0190_d").css("background-color","green");
                 }else{
                    $("#m0190_d").css("background-color","red");
                 }
     
                 if(m0191 == true){
                    $("#m0191_d").css("background-color","green");
                 }else{
                    $("#m0191_d").css("background-color","red");
                 }
     
                 if(m0192 == true){
                    $("#m0192_d").css("background-color","green");
                 }else{
                    $("#m0192_d").css("background-color","red");
                 }
     
                 if(m0193 == true){
                    $("#m0193_d").css("background-color","green");
                 }else{
                    $("#m0193_d").css("background-color","red");
                 }
     
                 if(m0194 == true){
                    $("#m0194_d").css("background-color","green");
                 }else{
                    $("#m0194_d").css("background-color","red");
                 }
     
                 if(m0195 == true){
                    $("#m0195_d").css("background-color","green");
                 }else{
                    $("#m0195_d").css("background-color","red");
                 }
     
                 if(m0196 == true){
                    $("#m0196_d").css("background-color","green");
                 }else{
                    $("#m0196_d").css("background-color","red");
                 }
     
                 if(m0197 == true){
                    $("#m0197_d").css("background-color","green");
                 }else{
                    $("#m0197_d").css("background-color","red");
                 }
     
                 if(m0198 == true){
                    $("#m0198_d").css("background-color","green");
                 }else{
                    $("#m0198_d").css("background-color","red");
                 }
     
                 if(m0199 == true){
                    $("#m0199_d").css("background-color","green");
                 }else{
                    $("#m0199_d").css("background-color","red");
                 }

              }
           }
        });
     }



   function calculateIds() {
       // 사용자가 입력한 ID 값 가져오기
       var startId = $("#startId").val();
       var endId = $("#endId").val();

       // 입력된 값이 유효한지 확인
       if (!startId || !endId) {
           $("#results").text("Both start ID and end ID are required.");
           return;
       }

       // 시작 ID와 끝 ID를 숫자로 변환 (예: M0100 -> 100, M0110 -> 110)
       var startNumber = parseInt(startId.replace(/M/, ''), 10);
       var endNumber = parseInt(endId.replace(/M/, ''), 10);

       // 시작 ID와 끝 ID가 올바른지 확인
       if (isNaN(startNumber) || isNaN(endNumber)) {
           $("#results").text("Invalid ID format. Ensure IDs start with 'M' followed by numbers.");
           return;
       }

       // 계산된 ID 값을 배열에 저장
       var ids = [];
       for (var i = startNumber; i <= endNumber; i++) {
           // M0000 형식으로 ID 값을 만듭니다.
           var id = "M" + i.toString().padStart(4, '0');
           // 접두사 붙이기
        //   ids.push("DONGHWA.PLC.M." + id.toUpperCase());
           ids.push("DONGHWA.PLC.M." + id.toUpperCase());
       }

       // 결과를 HTML 요소에 표시
       $("#results").html("ID:<br>" + ids.join("<br>"));
       console.log("Data being sent:", JSON.stringify({ ids: ids }));
       console.log("Sending IDs to server:", ids); // 추가된 부분
       // 서버로 POST 요청 보내기
       $.ajax({
           url: "/donghwa/write_test",
           type: "POST",
           contentType: "application/json",
           data: JSON.stringify({ ids: ids }),
           success: function(response) {
               console.log("Server response:", response);
           },
           error: function(xhr, status, error) {
               console.error("Error:", status, error);
           }
       });
   }

   function calculateIds2() {
       // 사용자가 입력한 ID 값 가져오기
       var startId = $("#startId").val();
       var endId = $("#endId").val();

       // 입력된 값이 유효한지 확인
       if (!startId || !endId) {
           $("#results").text("Both start ID and end ID are required.");
           return;
       }

       // 시작 ID와 끝 ID를 숫자로 변환 (예: M0100 -> 100, M0110 -> 110)
       var startNumber = parseInt(startId.replace(/M/, ''), 10);
       var endNumber = parseInt(endId.replace(/M/, ''), 10);

       // 시작 ID와 끝 ID가 올바른지 확인
       if (isNaN(startNumber) || isNaN(endNumber)) {
           $("#results").text("Invalid ID format. Ensure IDs start with 'M' followed by numbers.");
           return;
       }

       // 계산된 ID 값을 배열에 저장
       var ids = [];
       for (var i = startNumber; i <= endNumber; i++) {
           // M0000 형식으로 ID 값을 만듭니다.
           var id = "M" + i.toString().padStart(4, '0');
           // 접두사 붙이기
        //   ids.push("DONGHWA.PLC.M." + id.toUpperCase());
           ids.push("DONGHWA.PLC.M." + id.toUpperCase());
           console.log("calculateIds_FALSE 함수가 호출되었습니다.");
       }

       // 결과를 HTML 요소에 표시
       $("#results").html("ID:<br>" + ids.join("<br>"));
       console.log("Data being sent:", JSON.stringify({ ids: ids }));
       console.log("Sending IDs to server:", ids); // 추가된 부분
       // 서버로 POST 요청 보내기
       $.ajax({
           url: "/donghwa/write_test_false",
           type: "POST",
           contentType: "application/json",
           data: JSON.stringify({ ids: ids }),
           success: function(response) {
               console.log("Server response:", response);
           },
           error: function(xhr, status, error) {
               console.error("Error:", status, error);
           }
       });
   }

    </script>
</body>
</html>
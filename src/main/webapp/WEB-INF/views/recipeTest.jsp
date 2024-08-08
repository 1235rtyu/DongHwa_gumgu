<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/style.css">
  <%@ include file="include/mainHeader.html" %>
  <title>Recipe</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  
</head>
<style>
body {
  background: #ffffff; /* 흰색 배경 */
  width: 100%; /* 100%로 변경하여 반응형으로 설정 */
  height: calc(100vh - 122.95px); /* 전체 높이에서 헤더와 푸터의 높이 합산 */
  
  left: 0;
  top: 47.79px; /* 헤더 바로 아래 위치 */
  z-index: 0;
}

</style>
<body>
  <div class="group-1">
    <div class="recipe-main"></div>
    <div class="recipe-footer"></div>
    <div class="number"><input type="text" class="input-number" oninput="validateNumberInput(event)"/></div>
    <div class="name"><input type="text" class="input-name" /></div>
    <div class="comment"><input type="text" class="input-comment"/></div>
    <div class="segment">Segment</div>
    <div class="number2">Number</div>
    <div class="name2">Name</div>
    <div class="comment2">Comment</div>
    <div class="recipe-details">Recipe details</div>
    <div class="process-step">Process step</div>
    <div class="time">Time</div>
    <div class="min">[min]</div>
    <div class="c">[°C]</div>
    <div class="c2">[°C]</div>
    <div class="c3">[°C]</div>
    <div class="min2">[min]</div>
    <div class="mbar">[mbar]</div>
    <div class="k-n">[kN]</div>
    <div class="k-n2">[kN]</div>
    <div class="k-n3">[kN]</div>
    <div class="k-n-s">[kN/s]</div>
    <div class="mm">[mm]</div>
    <div class="mm2">[mm]</div>
    <div class="mm3">[mm]</div>
    <div class="min3">[min]</div>
    <div class="min4">[min]</div>
    <div class="div">[-]</div>
    <div class="mm-s">[mm/s]</div>
    <div class="temperature">Temperature</div>
    <div class="temperature-tolerance-controller">
      Temperature tolerance
      <br />
      controller
    </div>
    <div class="temperature-tolerance-holdback">
      Temperature tolerance
      <br />
      holdback
    </div>
    <div class="hold-back-timeout-heating">
      Hold Back Timeout
      <br />
      Heating
    </div>
    <div class="pressure-set-value">Pressure set value</div>
    <div class="pressing-capacity-f-1">Pressing capacity F1</div>
    <div class="pressing-capacity-f-2">Pressing capacity F2</div>
    <div class="force-tolerance">Force Tolerance</div>
    <div class="position-absolut-z">Position absolut “z”</div>
    <div class="position-relatly-z-z">Position relatly “+z/-z”</div>
    <div class="distance-tolerance">Distance Tolerance</div>
    <div class="holding-time-1">Holding time 1</div>
    <div class="holding-time-2">Holding time 2</div>
    <div class="number-of-loops">Number of Loops</div>
    <div class="speed-of-plunger">Speed of Plunger</div>
    <div class="gradient-of-force">Gradient of Force</div>

    <!---------------------------------input text----------------------------------------->

    <div class="segment-0"><input type="text" class="input-segment" id="segment_0" value="0" disabled/></div>
    <div class="segment-1"><input type="text" class="input-segment" id="segment_1" value="1" disabled/></div>
    <div class="segment-2"><input type="text" class="input-segment" id="segment_2" value="2" disabled/></div>
    <div class="segment-3"><input type="text" class="input-segment" id="segment_3" value="3" disabled/></div>
    <div class="segment-4"><input type="text" class="input-segment" id="segment_4" value="4" disabled/></div>
    <div class="segment-5"><input type="text" class="input-segment" id="segment_5" value="5" disabled/></div>
    <div class="segment-6"><input type="text" class="input-segment" id="segment_6" value="6" disabled/></div>
    <div class="segment-7"><input type="text" class="input-segment" id="segment_7" value="7" disabled/></div>
    <div class="segment-8"><input type="text" class="input-segment" id="segment_8" value="8" disabled/></div>
    <div class="segment-9"><input type="text" class="input-segment" id="segment_9" value="9" disabled/></div>
    <div class="segment-10"><input type="text" class="input-segment" id="segment_10" value="10" disabled/></div>
    <div class="segment-11"><input type="text" class="input-segment" id="segment_11" value="11" disabled/></div>
    <div class="segment-12"><input type="text" class="input-segment" id="segment_12" value="12" disabled/></div>
    <div class="segment-13"><input type="text" class="input-segment" id="segment_13" value="13" disabled/></div>
    <div class="segment-14"><input type="text" class="input-segment" id="segment_14" value="14" disabled/></div>
    <div class="segment-15"><input type="text" class="input-segment" id="segment_15" value="15" disabled/></div>
    <div class="segment-16"><input type="text" class="input-segment" id="segment_16" value="16" disabled/></div>
    <div class="segment-17"><input type="text" class="input-segment" id="segment_17" value="17" disabled/></div>
    <div class="segment-18"><input type="text" class="input-segment" id="segment_18" value="18" disabled/></div>
    <div class="segment-19"><input type="text" class="input-segment" id="segment_19" value="19" disabled/></div>
    <div class="segment-20"><input type="text" class="input-segment" id="segment_20" value="20" disabled/></div>
    <div class="segment-21"><input type="text" class="input-segment" id="segment_21" value="21" disabled/></div>
    <div class="segment-22"><input type="text" class="input-segment" id="segment_22" value="22" disabled/></div>
    <div class="segment-23"><input type="text" class="input-segment" id="segment_23" value="23" disabled/></div>
    <div class="segment-24"><input type="text" class="input-segment" id="segment_24" value="24" disabled/></div>
    <div class="segment-25"><input type="text" class="input-segment" id="segment_25" value="25" disabled/></div>
    <div class="segment-26"><input type="text" class="input-segment" id="segment_26" value="26" disabled/></div>
    <div class="segment-27"><input type="text" class="input-segment" id="segment_27" value="27" disabled/></div>
    <div class="segment-28"><input type="text" class="input-segment" id="segment_28" value="28" disabled/></div>
    <div class="segment-29"><input type="text" class="input-segment" id="segment_29" value="29" disabled/></div>
    <div class="segment-30"><input type="text" class="input-segment" id="segment_30" value="30" disabled/></div>
    <div class="segment-31"><input type="text" class="input-segment" id="segment_31" value="31" disabled/></div>
    <div class="segment-32"><input type="text" class="input-segment" id="segment_32" value="32" disabled/></div>
    <div class="segment-33"><input type="text" class="input-segment" id="segment_33" value="33" disabled/></div>
    <div class="segment-34"><input type="text" class="input-segment" id="segment_34" value="34" disabled/></div>
    <div class="segment-35"><input type="text" class="input-segment" id="segment_35" value="35" disabled/></div>
    <div class="segment-36"><input type="text" class="input-segment" id="segment_36" value="36" disabled/></div>
    <div class="segment-37"><input type="text" class="input-segment" id="segment_37" value="37" disabled/></div>
    <div class="segment-38"><input type="text" class="input-segment" id="segment_38" value="38" disabled/></div>
    <div class="segment-39"><input type="text" class="input-segment" id="segment_39" value="39" disabled/></div>

    <div class="process-step-0"><input type="text" class="input-text" id="process_step_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PROCESS_STEP_0" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-1"><input type="text" class="input-text" id="process_step_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PROCESS_STEP_1" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-2"><input type="text" class="input-text" id="process_step_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PROCESS_STEP_2" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-3"><input type="text" class="input-text" id="process_step_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PROCESS_STEP_3" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-4"><input type="text" class="input-text" id="process_step_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PROCESS_STEP_4" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-5"><input type="text" class="input-text" id="process_step_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PROCESS_STEP_5" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-6"><input type="text" class="input-text" id="process_step_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PROCESS_STEP_6" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-7"><input type="text" class="input-text" id="process_step_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PROCESS_STEP_7" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-8"><input type="text" class="input-text" id="process_step_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PROCESS_STEP_8" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-9"><input type="text" class="input-text" id="process_step_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PROCESS_STEP_9" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-10"><input type="text" class="input-text" id="process_step_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PROCESS_STEP_10" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-11"><input type="text" class="input-text" id="process_step_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PROCESS_STEP_11" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-12"><input type="text" class="input-text" id="process_step_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PROCESS_STEP_12" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-13"><input type="text" class="input-text" id="process_step_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PROCESS_STEP_13" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-14"><input type="text" class="input-text" id="process_step_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PROCESS_STEP_14" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-15"><input type="text" class="input-text" id="process_step_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PROCESS_STEP_15" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-16"><input type="text" class="input-text" id="process_step_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PROCESS_STEP_16" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-17"><input type="text" class="input-text" id="process_step_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PROCESS_STEP_17" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-18"><input type="text" class="input-text" id="process_step_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PROCESS_STEP_18" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-19"><input type="text" class="input-text" id="process_step_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PROCESS_STEP_19" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-20"><input type="text" class="input-text" id="process_step_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PROCESS_STEP_20" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-21"><input type="text" class="input-text" id="process_step_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PROCESS_STEP_21" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-22"><input type="text" class="input-text" id="process_step_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PROCESS_STEP_22" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-23"><input type="text" class="input-text" id="process_step_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PROCESS_STEP_23" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-24"><input type="text" class="input-text" id="process_step_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PROCESS_STEP_24" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-25"><input type="text" class="input-text" id="process_step_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PROCESS_STEP_25" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-26"><input type="text" class="input-text" id="process_step_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PROCESS_STEP_26" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-27"><input type="text" class="input-text" id="process_step_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PROCESS_STEP_27" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-28"><input type="text" class="input-text" id="process_step_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PROCESS_STEP_28" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-29"><input type="text" class="input-text" id="process_step_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PROCESS_STEP_29" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-30"><input type="text" class="input-text" id="process_step_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PROCESS_STEP_30" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-31"><input type="text" class="input-text" id="process_step_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PROCESS_STEP_31" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-32"><input type="text" class="input-text" id="process_step_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PROCESS_STEP_32" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-33"><input type="text" class="input-text" id="process_step_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PROCESS_STEP_33" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-34"><input type="text" class="input-text" id="process_step_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PROCESS_STEP_34" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-35"><input type="text" class="input-text" id="process_step_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PROCESS_STEP_35" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-36"><input type="text" class="input-text" id="process_step_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PROCESS_STEP_36" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-37"><input type="text" class="input-text" id="process_step_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PROCESS_STEP_37" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-38"><input type="text" class="input-text" id="process_step_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PROCESS_STEP_38" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-39"><input type="text" class="input-text" id="process_step_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PROCESS_STEP_39" oninput="validateNumberInput(event)"/></div>

    <div class="time-0"><input type="text" class="input-text" id="time_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TIME_0" oninput="validateNumberInput(event)"/></div>
    <div class="time-1"><input type="text" class="input-text" id="time_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.TIME_1" oninput="validateNumberInput(event)"/></div>
    <div class="time-2"><input type="text" class="input-text" id="time_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.TIME_2" oninput="validateNumberInput(event)"/></div>
    <div class="time-3"><input type="text" class="input-text" id="time_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.TIME_3" oninput="validateNumberInput(event)"/></div>
    <div class="time-4"><input type="text" class="input-text" id="time_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.TIME_4" oninput="validateNumberInput(event)"/></div>
    <div class="time-5"><input type="text" class="input-text" id="time_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.TIME_5" oninput="validateNumberInput(event)"/></div>
    <div class="time-6"><input type="text" class="input-text" id="time_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.TIME_6" oninput="validateNumberInput(event)"/></div>
    <div class="time-7"><input type="text" class="input-text" id="time_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.TIME_7" oninput="validateNumberInput(event)"/></div>
    <div class="time-8"><input type="text" class="input-text" id="time_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.TIME_8" oninput="validateNumberInput(event)"/></div>
    <div class="time-9"><input type="text" class="input-text" id="time_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.TIME_9" oninput="validateNumberInput(event)"/></div>
    <div class="time-10"><input type="text" class="input-text" id="time_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.TIME_10" oninput="validateNumberInput(event)"/></div>
    <div class="time-11"><input type="text" class="input-text" id="time_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.TIME_11" oninput="validateNumberInput(event)"/></div>
    <div class="time-12"><input type="text" class="input-text" id="time_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.TIME_12" oninput="validateNumberInput(event)"/></div>
    <div class="time-13"><input type="text" class="input-text" id="time_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.TIME_13" oninput="validateNumberInput(event)"/></div>
    <div class="time-14"><input type="text" class="input-text" id="time_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.TIME_14" oninput="validateNumberInput(event)"/></div>
    <div class="time-15"><input type="text" class="input-text" id="time_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.TIME_15" oninput="validateNumberInput(event)"/></div>
    <div class="time-16"><input type="text" class="input-text" id="time_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.TIME_16" oninput="validateNumberInput(event)"/></div>
    <div class="time-17"><input type="text" class="input-text" id="time_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.TIME_17" oninput="validateNumberInput(event)"/></div>
    <div class="time-18"><input type="text" class="input-text" id="time_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.TIME_18" oninput="validateNumberInput(event)"/></div>
    <div class="time-19"><input type="text" class="input-text" id="time_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.TIME_19" oninput="validateNumberInput(event)"/></div>
    <div class="time-20"><input type="text" class="input-text" id="time_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.TIME_20" oninput="validateNumberInput(event)"/></div>
    <div class="time-21"><input type="text" class="input-text" id="time_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.TIME_21" oninput="validateNumberInput(event)"/></div>
    <div class="time-22"><input type="text" class="input-text" id="time_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.TIME_22" oninput="validateNumberInput(event)"/></div>
    <div class="time-23"><input type="text" class="input-text" id="time_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.TIME_23" oninput="validateNumberInput(event)"/></div>
    <div class="time-24"><input type="text" class="input-text" id="time_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.TIME_24" oninput="validateNumberInput(event)"/></div>
    <div class="time-25"><input type="text" class="input-text" id="time_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.TIME_25" oninput="validateNumberInput(event)"/></div>
    <div class="time-26"><input type="text" class="input-text" id="time_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.TIME_26" oninput="validateNumberInput(event)"/></div>
    <div class="time-27"><input type="text" class="input-text" id="time_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.TIME_27" oninput="validateNumberInput(event)"/></div>
    <div class="time-28"><input type="text" class="input-text" id="time_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.TIME_28" oninput="validateNumberInput(event)"/></div>
    <div class="time-29"><input type="text" class="input-text" id="time_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.TIME_29" oninput="validateNumberInput(event)"/></div>
    <div class="time-30"><input type="text" class="input-text" id="time_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.TIME_30" oninput="validateNumberInput(event)"/></div>
    <div class="time-31"><input type="text" class="input-text" id="time_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.TIME_31" oninput="validateNumberInput(event)"/></div>
    <div class="time-32"><input type="text" class="input-text" id="time_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.TIME_32" oninput="validateNumberInput(event)"/></div>
    <div class="time-33"><input type="text" class="input-text" id="time_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.TIME_33" oninput="validateNumberInput(event)"/></div>
    <div class="time-34"><input type="text" class="input-text" id="time_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.TIME_34" oninput="validateNumberInput(event)"/></div>
    <div class="time-35"><input type="text" class="input-text" id="time_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.TIME_35" oninput="validateNumberInput(event)"/></div>
    <div class="time-36"><input type="text" class="input-text" id="time_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.TIME_36" oninput="validateNumberInput(event)"/></div>
    <div class="time-37"><input type="text" class="input-text" id="time_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.TIME_37" oninput="validateNumberInput(event)"/></div>
    <div class="time-38"><input type="text" class="input-text" id="time_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.TIME_38" oninput="validateNumberInput(event)"/></div>
    <div class="time-39"><input type="text" class="input-text" id="time_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.TIME_39" oninput="validateNumberInput(event)"/></div>

    <div class="temperature-0"><input type="text" class="input-text" id="temperature_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TEMPERATURE_0" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-1"><input type="text" class="input-text" id="temperature_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.TEMPERATURE_1" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-2"><input type="text" class="input-text" id="temperature_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.TEMPERATURE_2" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-3"><input type="text" class="input-text" id="temperature_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.TEMPERATURE_3" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-4"><input type="text" class="input-text" id="temperature_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.TEMPERATURE_4" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-5"><input type="text" class="input-text" id="temperature_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.TEMPERATURE_5" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-6"><input type="text" class="input-text" id="temperature_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.TEMPERATURE_6" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-7"><input type="text" class="input-text" id="temperature_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.TEMPERATURE_7" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-8"><input type="text" class="input-text" id="temperature_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.TEMPERATURE_8" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-9"><input type="text" class="input-text" id="temperature_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.TEMPERATURE_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-10"><input type="text" class="input-text" id="temperature_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.TEMPERATURE_10" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-11"><input type="text" class="input-text" id="temperature_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.TEMPERATURE_11" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-12"><input type="text" class="input-text" id="temperature_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.TEMPERATURE_12" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-13"><input type="text" class="input-text" id="temperature_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.TEMPERATURE_13" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-14"><input type="text" class="input-text" id="temperature_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.TEMPERATURE_14" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-15"><input type="text" class="input-text" id="temperature_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.TEMPERATURE_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-16"><input type="text" class="input-text" id="temperature_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.TEMPERATURE_16" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-17"><input type="text" class="input-text" id="temperature_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.TEMPERATURE_17" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-18"><input type="text" class="input-text" id="temperature_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.TEMPERATURE_18" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-19"><input type="text" class="input-text" id="temperature_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.TEMPERATURE_19" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-20"><input type="text" class="input-text" id="temperature_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.TEMPERATURE_20" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-21"><input type="text" class="input-text" id="temperature_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.TEMPERATURE_21" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-22"><input type="text" class="input-text" id="temperature_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.TEMPERATURE_22" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-23"><input type="text" class="input-text" id="temperature_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.TEMPERATURE_23" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-24"><input type="text" class="input-text" id="temperature_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.TEMPERATURE_24" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-25"><input type="text" class="input-text" id="temperature_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.TEMPERATURE_25" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-26"><input type="text" class="input-text" id="temperature_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.TEMPERATURE_26" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-27"><input type="text" class="input-text" id="temperature_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.TEMPERATURE_27" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-28"><input type="text" class="input-text" id="temperature_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.TEMPERATURE_28" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-29"><input type="text" class="input-text" id="temperature_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.TEMPERATURE_29" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-30"><input type="text" class="input-text" id="temperature_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.TEMPERATURE_30" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-31"><input type="text" class="input-text" id="temperature_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.TEMPERATURE_31" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-32"><input type="text" class="input-text" id="temperature_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.TEMPERATURE_32" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-33"><input type="text" class="input-text" id="temperature_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.TEMPERATURE_33" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-34"><input type="text" class="input-text" id="temperature_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.TEMPERATURE_34" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-35"><input type="text" class="input-text" id="temperature_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.TEMPERATURE_35" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-36"><input type="text" class="input-text" id="temperature_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.TEMPERATURE_36" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-37"><input type="text" class="input-text" id="temperature_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.TEMPERATURE_37" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-38"><input type="text" class="input-text" id="temperature_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.TEMPERATURE_38" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-39"><input type="text" class="input-text" id="temperature_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.TEMPERATURE_39" oninput="validateNumberInput(event)"/></div>
    
    <div class="temperature-tc-0"><input type="text" class="input-text" id="temperature_tc_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TEMPERATURE_TC_0" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-1"><input type="text" class="input-text" id="temperature_tc_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.TEMPERATURE_TC_1" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-2"><input type="text" class="input-text" id="temperature_tc_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.TEMPERATURE_TC_2" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-3"><input type="text" class="input-text" id="temperature_tc_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.TEMPERATURE_TC_3" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-4"><input type="text" class="input-text" id="temperature_tc_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.TEMPERATURE_TC_4" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-5"><input type="text" class="input-text" id="temperature_tc_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.TEMPERATURE_TC_5" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-6"><input type="text" class="input-text" id="temperature_tc_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.TEMPERATURE_TC_6" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-7"><input type="text" class="input-text" id="temperature_tc_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.TEMPERATURE_TC_7" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-8"><input type="text" class="input-text" id="temperature_tc_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.TEMPERATURE_TC_8" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-9"><input type="text" class="input-text" id="temperature_tc_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.TEMPERATURE_TC_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-10"><input type="text" class="input-text" id="temperature_tc_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.TEMPERATURE_TC_10" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-11"><input type="text" class="input-text" id="temperature_tc_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.TEMPERATURE_TC_11" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-12"><input type="text" class="input-text" id="temperature_tc_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.TEMPERATURE_TC_12" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-13"><input type="text" class="input-text" id="temperature_tc_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.TEMPERATURE_TC_13" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-14"><input type="text" class="input-text" id="temperature_tc_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.TEMPERATURE_TC_14" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-15"><input type="text" class="input-text" id="temperature_tc_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.TEMPERATURE_TC_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-16"><input type="text" class="input-text" id="temperature_tc_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.TEMPERATURE_TC_16" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-17"><input type="text" class="input-text" id="temperature_tc_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.TEMPERATURE_TC_17" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-18"><input type="text" class="input-text" id="temperature_tc_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.TEMPERATURE_TC_18" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-19"><input type="text" class="input-text" id="temperature_tc_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.TEMPERATURE_TC_19" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-20"><input type="text" class="input-text" id="temperature_tc_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.TEMPERATURE_TC_20" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-21"><input type="text" class="input-text" id="temperature_tc_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.TEMPERATURE_TC_21" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-22"><input type="text" class="input-text" id="temperature_tc_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.TEMPERATURE_TC_22" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-23"><input type="text" class="input-text" id="temperature_tc_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.TEMPERATURE_TC_23" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-24"><input type="text" class="input-text" id="temperature_tc_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.TEMPERATURE_TC_24" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-25"><input type="text" class="input-text" id="temperature_tc_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.TEMPERATURE_TC_25" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-26"><input type="text" class="input-text" id="temperature_tc_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.TEMPERATURE_TC_26" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-27"><input type="text" class="input-text" id="temperature_tc_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.TEMPERATURE_TC_27" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-28"><input type="text" class="input-text" id="temperature_tc_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.TEMPERATURE_TC_28" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-29"><input type="text" class="input-text" id="temperature_tc_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.TEMPERATURE_TC_29" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-30"><input type="text" class="input-text" id="temperature_tc_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.TEMPERATURE_TC_30" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-31"><input type="text" class="input-text" id="temperature_tc_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.TEMPERATURE_TC_31" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-32"><input type="text" class="input-text" id="temperature_tc_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.TEMPERATURE_TC_32" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-33"><input type="text" class="input-text" id="temperature_tc_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.TEMPERATURE_TC_33" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-34"><input type="text" class="input-text" id="temperature_tc_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.TEMPERATURE_TC_34" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-35"><input type="text" class="input-text" id="temperature_tc_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.TEMPERATURE_TC_35" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-36"><input type="text" class="input-text" id="temperature_tc_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.TEMPERATURE_TC_36" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-37"><input type="text" class="input-text" id="temperature_tc_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.TEMPERATURE_TC_37" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-38"><input type="text" class="input-text" id="temperature_tc_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.TEMPERATURE_TC_38" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-39"><input type="text" class="input-text" id="temperature_tc_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.TEMPERATURE_TC_39" oninput="validateNumberInput(event)"/></div>

    <div class="temperature-th-0"><input type="text" class="input-text" id="temperature_th_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TEMPERATURE_TH_0" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-1"><input type="text" class="input-text" id="temperature_th_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.TEMPERATURE_TH_1" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-2"><input type="text" class="input-text" id="temperature_th_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.TEMPERATURE_TH_2" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-3"><input type="text" class="input-text" id="temperature_th_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.TEMPERATURE_TH_3" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-4"><input type="text" class="input-text" id="temperature_th_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.TEMPERATURE_TH_4" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-5"><input type="text" class="input-text" id="temperature_th_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.TEMPERATURE_TH_5" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-6"><input type="text" class="input-text" id="temperature_th_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.TEMPERATURE_TH_6" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-7"><input type="text" class="input-text" id="temperature_th_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.TEMPERATURE_TH_7" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-8"><input type="text" class="input-text" id="temperature_th_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.TEMPERATURE_TH_8" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-9"><input type="text" class="input-text" id="temperature_th_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.TEMPERATURE_TH_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-10"><input type="text" class="input-text" id="temperature_th_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.TEMPERATURE_TH_10" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-11"><input type="text" class="input-text" id="temperature_th_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.TEMPERATURE_TH_11" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-12"><input type="text" class="input-text" id="temperature_th_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.TEMPERATURE_TH_12" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-13"><input type="text" class="input-text" id="temperature_th_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.TEMPERATURE_TH_13" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-14"><input type="text" class="input-text" id="temperature_th_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.TEMPERATURE_TH_14" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-15"><input type="text" class="input-text" id="temperature_th_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.TEMPERATURE_TH_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-16"><input type="text" class="input-text" id="temperature_th_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.TEMPERATURE_TH_16" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-17"><input type="text" class="input-text" id="temperature_th_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.TEMPERATURE_TH_17" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-18"><input type="text" class="input-text" id="temperature_th_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.TEMPERATURE_TH_18" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-19"><input type="text" class="input-text" id="temperature_th_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.TEMPERATURE_TH_19" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-20"><input type="text" class="input-text" id="temperature_th_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.TEMPERATURE_TH_20" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-21"><input type="text" class="input-text" id="temperature_th_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.TEMPERATURE_TH_21" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-22"><input type="text" class="input-text" id="temperature_th_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.TEMPERATURE_TH_22" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-23"><input type="text" class="input-text" id="temperature_th_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.TEMPERATURE_TH_23" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-24"><input type="text" class="input-text" id="temperature_th_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.TEMPERATURE_TH_24" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-25"><input type="text" class="input-text" id="temperature_th_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.TEMPERATURE_TH_25" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-26"><input type="text" class="input-text" id="temperature_th_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.TEMPERATURE_TH_26" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-27"><input type="text" class="input-text" id="temperature_th_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.TEMPERATURE_TH_27" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-28"><input type="text" class="input-text" id="temperature_th_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.TEMPERATURE_TH_28" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-29"><input type="text" class="input-text" id="temperature_th_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.TEMPERATURE_TH_29" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-30"><input type="text" class="input-text" id="temperature_th_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.TEMPERATURE_TH_30" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-31"><input type="text" class="input-text" id="temperature_th_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.TEMPERATURE_TH_31" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-32"><input type="text" class="input-text" id="temperature_th_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.TEMPERATURE_TH_32" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-33"><input type="text" class="input-text" id="temperature_th_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.TEMPERATURE_TH_33" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-34"><input type="text" class="input-text" id="temperature_th_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.TEMPERATURE_TH_34" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-35"><input type="text" class="input-text" id="temperature_th_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.TEMPERATURE_TH_35" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-36"><input type="text" class="input-text" id="temperature_th_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.TEMPERATURE_TH_36" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-37"><input type="text" class="input-text" id="temperature_th_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.TEMPERATURE_TH_37" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-38"><input type="text" class="input-text" id="temperature_th_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.TEMPERATURE_TH_38" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-39"><input type="text" class="input-text" id="temperature_th_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.TEMPERATURE_TH_39" oninput="validateNumberInput(event)"/></div>

    <div class="hbth-0"><input type="text" class="input-text" id="hbth_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.HBTH_0" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-1"><input type="text" class="input-text" id="hbth_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.HBTH_1" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-2"><input type="text" class="input-text" id="hbth_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.HBTH_2" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-3"><input type="text" class="input-text" id="hbth_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.HBTH_3" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-4"><input type="text" class="input-text" id="hbth_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.HBTH_4" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-5"><input type="text" class="input-text" id="hbth_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.HBTH_5" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-6"><input type="text" class="input-text" id="hbth_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.HBTH_6" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-7"><input type="text" class="input-text" id="hbth_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.HBTH_7" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-8"><input type="text" class="input-text" id="hbth_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.HBTH_8" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-9"><input type="text" class="input-text" id="hbth_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.HBTH_9" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-10"><input type="text" class="input-text" id="hbth_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.HBTH_10" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-11"><input type="text" class="input-text" id="hbth_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.HBTH_11" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-12"><input type="text" class="input-text" id="hbth_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.HBTH_12" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-13"><input type="text" class="input-text" id="hbth_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.HBTH_13" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-14"><input type="text" class="input-text" id="hbth_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.HBTH_14" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-15"><input type="text" class="input-text" id="hbth_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.HBTH_15" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-16"><input type="text" class="input-text" id="hbth_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.HBTH_16" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-17"><input type="text" class="input-text" id="hbth_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.HBTH_17" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-18"><input type="text" class="input-text" id="hbth_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.HBTH_18" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-19"><input type="text" class="input-text" id="hbth_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.HBTH_19" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-20"><input type="text" class="input-text" id="hbth_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.HBTH_20" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-21"><input type="text" class="input-text" id="hbth_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.HBTH_21" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-22"><input type="text" class="input-text" id="hbth_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.HBTH_22" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-23"><input type="text" class="input-text" id="hbth_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.HBTH_23" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-24"><input type="text" class="input-text" id="hbth_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.HBTH_24" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-25"><input type="text" class="input-text" id="hbth_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.HBTH_25" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-26"><input type="text" class="input-text" id="hbth_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.HBTH_26" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-27"><input type="text" class="input-text" id="hbth_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.HBTH_27" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-28"><input type="text" class="input-text" id="hbth_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.HBTH_28" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-29"><input type="text" class="input-text" id="hbth_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.HBTH_29" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-30"><input type="text" class="input-text" id="hbth_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.HBTH_30" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-31"><input type="text" class="input-text" id="hbth_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.HBTH_31" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-32"><input type="text" class="input-text" id="hbth_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.HBTH_32" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-33"><input type="text" class="input-text" id="hbth_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.HBTH_33" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-34"><input type="text" class="input-text" id="hbth_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.HBTH_34" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-35"><input type="text" class="input-text" id="hbth_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.HBTH_35" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-36"><input type="text" class="input-text" id="hbth_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.HBTH_36" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-37"><input type="text" class="input-text" id="hbth_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.HBTH_37" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-38"><input type="text" class="input-text" id="hbth_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.HBTH_38" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-39"><input type="text" class="input-text" id="hbth_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.HBTH_39" oninput="validateNumberInput(event)"/></div>

    <div class="pressure-sv-0"><input type="text" class="input-text" id="pressure_sv_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESSURE_SV_0" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-1"><input type="text" class="input-text" id="pressure_sv_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESSURE_SV_1" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-2"><input type="text" class="input-text" id="pressure_sv_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESSURE_SV_2" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-3"><input type="text" class="input-text" id="pressure_sv_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESSURE_SV_3" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-4"><input type="text" class="input-text" id="pressure_sv_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESSURE_SV_4" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-5"><input type="text" class="input-text" id="pressure_sv_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESSURE_SV_5" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-6"><input type="text" class="input-text" id="pressure_sv_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESSURE_SV_6" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-7"><input type="text" class="input-text" id="pressure_sv_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESSURE_SV_7" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-8"><input type="text" class="input-text" id="pressure_sv_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESSURE_SV_8" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-9"><input type="text" class="input-text" id="pressure_sv_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESSURE_SV_9" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-10"><input type="text" class="input-text" id="pressure_sv_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESSURE_SV_10" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-11"><input type="text" class="input-text" id="pressure_sv_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESSURE_SV_11" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-12"><input type="text" class="input-text" id="pressure_sv_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESSURE_SV_12" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-13"><input type="text" class="input-text" id="pressure_sv_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESSURE_SV_13" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-14"><input type="text" class="input-text" id="pressure_sv_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESSURE_SV_14" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-15"><input type="text" class="input-text" id="pressure_sv_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESSURE_SV_15" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-16"><input type="text" class="input-text" id="pressure_sv_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESSURE_SV_16" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-17"><input type="text" class="input-text" id="pressure_sv_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESSURE_SV_17" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-18"><input type="text" class="input-text" id="pressure_sv_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESSURE_SV_18" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-19"><input type="text" class="input-text" id="pressure_sv_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESSURE_SV_19" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-20"><input type="text" class="input-text" id="pressure_sv_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESSURE_SV_20" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-21"><input type="text" class="input-text" id="pressure_sv_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESSURE_SV_21" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-22"><input type="text" class="input-text" id="pressure_sv_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESSURE_SV_22" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-23"><input type="text" class="input-text" id="pressure_sv_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESSURE_SV_23" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-24"><input type="text" class="input-text" id="pressure_sv_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESSURE_SV_24" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-25"><input type="text" class="input-text" id="pressure_sv_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESSURE_SV_25" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-26"><input type="text" class="input-text" id="pressure_sv_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESSURE_SV_26" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-27"><input type="text" class="input-text" id="pressure_sv_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESSURE_SV_27" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-28"><input type="text" class="input-text" id="pressure_sv_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESSURE_SV_28" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-29"><input type="text" class="input-text" id="pressure_sv_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESSURE_SV_29" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-30"><input type="text" class="input-text" id="pressure_sv_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESSURE_SV_30" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-31"><input type="text" class="input-text" id="pressure_sv_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESSURE_SV_31" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-32"><input type="text" class="input-text" id="pressure_sv_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESSURE_SV_32" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-33"><input type="text" class="input-text" id="pressure_sv_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESSURE_SV_33" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-34"><input type="text" class="input-text" id="pressure_sv_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESSURE_SV_34" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-35"><input type="text" class="input-text" id="pressure_sv_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESSURE_SV_35" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-36"><input type="text" class="input-text" id="pressure_sv_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESSURE_SV_36" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-37"><input type="text" class="input-text" id="pressure_sv_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESSURE_SV_37" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-38"><input type="text" class="input-text" id="pressure_sv_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESSURE_SV_38" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-39"><input type="text" class="input-text" id="pressure_sv_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESSURE_SV_39" oninput="validateNumberInput(event)"/></div>

    <div class="pressing-one-0"><input type="text" class="input-text" id="pressing_one_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESSING_ONE_0" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-1"><input type="text" class="input-text" id="pressing_one_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESSING_ONE_1" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-2"><input type="text" class="input-text" id="pressing_one_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESSING_ONE_2" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-3"><input type="text" class="input-text" id="pressing_one_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESSING_ONE_3" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-4"><input type="text" class="input-text" id="pressing_one_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESSING_ONE_4" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-5"><input type="text" class="input-text" id="pressing_one_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESSING_ONE_5" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-6"><input type="text" class="input-text" id="pressing_one_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESSING_ONE_6" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-7"><input type="text" class="input-text" id="pressing_one_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESSING_ONE_7" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-8"><input type="text" class="input-text" id="pressing_one_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESSING_ONE_8" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-9"><input type="text" class="input-text" id="pressing_one_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESSING_ONE_9" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-10"><input type="text" class="input-text" id="pressing_one_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESSING_ONE_10" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-11"><input type="text" class="input-text" id="pressing_one_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESSING_ONE_11" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-12"><input type="text" class="input-text" id="pressing_one_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESSING_ONE_12" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-13"><input type="text" class="input-text" id="pressing_one_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESSING_ONE_13" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-14"><input type="text" class="input-text" id="pressing_one_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESSING_ONE_14" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-15"><input type="text" class="input-text" id="pressing_one_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESSING_ONE_15" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-16"><input type="text" class="input-text" id="pressing_one_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESSING_ONE_16" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-17"><input type="text" class="input-text" id="pressing_one_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESSING_ONE_17" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-18"><input type="text" class="input-text" id="pressing_one_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESSING_ONE_18" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-19"><input type="text" class="input-text" id="pressing_one_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESSING_ONE_19" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-20"><input type="text" class="input-text" id="pressing_one_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESSING_ONE_20" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-21"><input type="text" class="input-text" id="pressing_one_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESSING_ONE_21" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-22"><input type="text" class="input-text" id="pressing_one_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESSING_ONE_22" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-23"><input type="text" class="input-text" id="pressing_one_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESSING_ONE_23" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-24"><input type="text" class="input-text" id="pressing_one_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESSING_ONE_24" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-25"><input type="text" class="input-text" id="pressing_one_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESSING_ONE_25" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-26"><input type="text" class="input-text" id="pressing_one_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESSING_ONE_26" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-27"><input type="text" class="input-text" id="pressing_one_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESSING_ONE_27" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-28"><input type="text" class="input-text" id="pressing_one_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESSING_ONE_28" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-29"><input type="text" class="input-text" id="pressing_one_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESSING_ONE_29" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-30"><input type="text" class="input-text" id="pressing_one_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESSING_ONE_30" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-31"><input type="text" class="input-text" id="pressing_one_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESSING_ONE_31" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-32"><input type="text" class="input-text" id="pressing_one_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESSING_ONE_32" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-33"><input type="text" class="input-text" id="pressing_one_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESSING_ONE_33" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-34"><input type="text" class="input-text" id="pressing_one_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESSING_ONE_34" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-35"><input type="text" class="input-text" id="pressing_one_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESSING_ONE_35" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-36"><input type="text" class="input-text" id="pressing_one_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESSING_ONE_36" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-37"><input type="text" class="input-text" id="pressing_one_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESSING_ONE_37" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-38"><input type="text" class="input-text" id="pressing_one_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESSING_ONE_38" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-39"><input type="text" class="input-text" id="pressing_one_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESSING_ONE_39" oninput="validateNumberInput(event)"/></div>

    <div class="pressing-two-0"><input type="text" class="input-text" id="pressing_two_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESSING_TWO_0" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-1"><input type="text" class="input-text" id="pressing_two_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESSING_TWO_1" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-2"><input type="text" class="input-text" id="pressing_two_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESSING_TWO_2" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-3"><input type="text" class="input-text" id="pressing_two_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESSING_TWO_3" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-4"><input type="text" class="input-text" id="pressing_two_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESSING_TWO_4" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-5"><input type="text" class="input-text" id="pressing_two_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESSING_TWO_5" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-6"><input type="text" class="input-text" id="pressing_two_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESSING_TWO_6" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-7"><input type="text" class="input-text" id="pressing_two_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESSING_TWO_7" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-8"><input type="text" class="input-text" id="pressing_two_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESSING_TWO_8" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-9"><input type="text" class="input-text" id="pressing_two_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESSING_TWO_9" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-10"><input type="text" class="input-text" id="pressing_two_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESSING_TWO_10" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-11"><input type="text" class="input-text" id="pressing_two_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESSING_TWO_11" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-12"><input type="text" class="input-text" id="pressing_two_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESSING_TWO_12" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-13"><input type="text" class="input-text" id="pressing_two_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESSING_TWO_13" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-14"><input type="text" class="input-text" id="pressing_two_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESSING_TWO_14" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-15"><input type="text" class="input-text" id="pressing_two_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESSING_TWO_15" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-16"><input type="text" class="input-text" id="pressing_two_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESSING_TWO_16" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-17"><input type="text" class="input-text" id="pressing_two_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESSING_TWO_17" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-18"><input type="text" class="input-text" id="pressing_two_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESSING_TWO_18" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-19"><input type="text" class="input-text" id="pressing_two_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESSING_TWO_19" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-20"><input type="text" class="input-text" id="pressing_two_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESSING_TWO_20" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-21"><input type="text" class="input-text" id="pressing_two_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESSING_TWO_21" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-22"><input type="text" class="input-text" id="pressing_two_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESSING_TWO_22" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-23"><input type="text" class="input-text" id="pressing_two_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESSING_TWO_23" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-24"><input type="text" class="input-text" id="pressing_two_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESSING_TWO_24" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-25"><input type="text" class="input-text" id="pressing_two_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESSING_TWO_25" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-26"><input type="text" class="input-text" id="pressing_two_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESSING_TWO_26" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-27"><input type="text" class="input-text" id="pressing_two_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESSING_TWO_27" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-28"><input type="text" class="input-text" id="pressing_two_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESSING_TWO_28" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-29"><input type="text" class="input-text" id="pressing_two_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESSING_TWO_29" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-30"><input type="text" class="input-text" id="pressing_two_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESSING_TWO_30" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-31"><input type="text" class="input-text" id="pressing_two_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESSING_TWO_31" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-32"><input type="text" class="input-text" id="pressing_two_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESSING_TWO_32" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-33"><input type="text" class="input-text" id="pressing_two_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESSING_TWO_33" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-34"><input type="text" class="input-text" id="pressing_two_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESSING_TWO_34" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-35"><input type="text" class="input-text" id="pressing_two_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESSING_TWO_35" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-36"><input type="text" class="input-text" id="pressing_two_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESSING_TWO_36" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-37"><input type="text" class="input-text" id="pressing_two_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESSING_TWO_37" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-38"><input type="text" class="input-text" id="pressing_two_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESSING_TWO_38" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-39"><input type="text" class="input-text" id="pressing_two_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESSING_TWO_39" oninput="validateNumberInput(event)"/></div>

    <div class="force-tol-0"><input type="text" class="input-text" id="force_tol_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.FORCE_TOL_0" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-1"><input type="text" class="input-text" id="force_tol_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.FORCE_TOL_1" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-2"><input type="text" class="input-text" id="force_tol_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.FORCE_TOL_2" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-3"><input type="text" class="input-text" id="force_tol_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.FORCE_TOL_3" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-4"><input type="text" class="input-text" id="force_tol_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.FORCE_TOL_4" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-5"><input type="text" class="input-text" id="force_tol_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.FORCE_TOL_5" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-6"><input type="text" class="input-text" id="force_tol_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.FORCE_TOL_6" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-7"><input type="text" class="input-text" id="force_tol_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.FORCE_TOL_7" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-8"><input type="text" class="input-text" id="force_tol_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.FORCE_TOL_8" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-9"><input type="text" class="input-text" id="force_tol_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.FORCE_TOL_9" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-10"><input type="text" class="input-text" id="force_tol_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.FORCE_TOL_10" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-11"><input type="text" class="input-text" id="force_tol_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.FORCE_TOL_11" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-12"><input type="text" class="input-text" id="force_tol_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.FORCE_TOL_12" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-13"><input type="text" class="input-text" id="force_tol_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.FORCE_TOL_13" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-14"><input type="text" class="input-text" id="force_tol_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.FORCE_TOL_14" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-15"><input type="text" class="input-text" id="force_tol_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.FORCE_TOL_15" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-16"><input type="text" class="input-text" id="force_tol_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.FORCE_TOL_16" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-17"><input type="text" class="input-text" id="force_tol_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.FORCE_TOL_17" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-18"><input type="text" class="input-text" id="force_tol_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.FORCE_TOL_18" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-19"><input type="text" class="input-text" id="force_tol_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.FORCE_TOL_19" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-20"><input type="text" class="input-text" id="force_tol_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.FORCE_TOL_20" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-21"><input type="text" class="input-text" id="force_tol_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.FORCE_TOL_21" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-22"><input type="text" class="input-text" id="force_tol_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.FORCE_TOL_22" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-23"><input type="text" class="input-text" id="force_tol_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.FORCE_TOL_23" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-24"><input type="text" class="input-text" id="force_tol_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.FORCE_TOL_24" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-25"><input type="text" class="input-text" id="force_tol_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.FORCE_TOL_25" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-26"><input type="text" class="input-text" id="force_tol_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.FORCE_TOL_26" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-27"><input type="text" class="input-text" id="force_tol_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.FORCE_TOL_27" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-28"><input type="text" class="input-text" id="force_tol_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.FORCE_TOL_28"oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-29"><input type="text" class="input-text" id="force_tol_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.FORCE_TOL_29" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-30"><input type="text" class="input-text" id="force_tol_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.FORCE_TOL_30" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-31"><input type="text" class="input-text" id="force_tol_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.FORCE_TOL_31" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-32"><input type="text" class="input-text" id="force_tol_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.FORCE_TOL_32" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-33"><input type="text" class="input-text" id="force_tol_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.FORCE_TOL_33" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-34"><input type="text" class="input-text" id="force_tol_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.FORCE_TOL_34" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-35"><input type="text" class="input-text" id="force_tol_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.FORCE_TOL_35" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-36"><input type="text" class="input-text" id="force_tol_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.FORCE_TOL_36" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-37"><input type="text" class="input-text" id="force_tol_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.FORCE_TOL_37" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-38"><input type="text" class="input-text" id="force_tol_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.FORCE_TOL_38" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-39"><input type="text" class="input-text" id="force_tol_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.FORCE_TOL_39" oninput="validateNumberInput(event)"/></div>

    <div class="position-ab-0"><input type="text" class="input-text" id="position_ab_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.POSITION_AB_0" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-1"><input type="text" class="input-text" id="position_ab_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.POSITION_AB_1" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-2"><input type="text" class="input-text" id="position_ab_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.POSITION_AB_2" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-3"><input type="text" class="input-text" id="position_ab_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.POSITION_AB_3" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-4"><input type="text" class="input-text" id="position_ab_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.POSITION_AB_4" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-5"><input type="text" class="input-text" id="position_ab_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.POSITION_AB_5" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-6"><input type="text" class="input-text" id="position_ab_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.POSITION_AB_6" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-7"><input type="text" class="input-text" id="position_ab_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.POSITION_AB_7" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-8"><input type="text" class="input-text" id="position_ab_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.POSITION_AB_8" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-9"><input type="text" class="input-text" id="position_ab_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.POSITION_AB_9" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-10"><input type="text" class="input-text" id="position_ab_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.POSITION_AB_10" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-11"><input type="text" class="input-text" id="position_ab_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.POSITION_AB_11" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-12"><input type="text" class="input-text" id="position_ab_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.POSITION_AB_12" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-13"><input type="text" class="input-text" id="position_ab_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.POSITION_AB_13" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-14"><input type="text" class="input-text" id="position_ab_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.POSITION_AB_14" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-15"><input type="text" class="input-text" id="position_ab_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.POSITION_AB_15" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-16"><input type="text" class="input-text" id="position_ab_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.POSITION_AB_16" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-17"><input type="text" class="input-text" id="position_ab_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.POSITION_AB_17" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-18"><input type="text" class="input-text" id="position_ab_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.POSITION_AB_18" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-19"><input type="text" class="input-text" id="position_ab_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.POSITION_AB_19" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-20"><input type="text" class="input-text" id="position_ab_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.POSITION_AB_20" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-21"><input type="text" class="input-text" id="position_ab_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.POSITION_AB_21" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-22"><input type="text" class="input-text" id="position_ab_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.POSITION_AB_22" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-23"><input type="text" class="input-text" id="position_ab_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.POSITION_AB_23" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-24"><input type="text" class="input-text" id="position_ab_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.POSITION_AB_24" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-25"><input type="text" class="input-text" id="position_ab_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.POSITION_AB_25" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-26"><input type="text" class="input-text" id="position_ab_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.POSITION_AB_26" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-27"><input type="text" class="input-text" id="position_ab_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.POSITION_AB_27" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-28"><input type="text" class="input-text" id="position_ab_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.POSITION_AB_28" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-29"><input type="text" class="input-text" id="position_ab_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.POSITION_AB_29" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-30"><input type="text" class="input-text" id="position_ab_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.POSITION_AB_30" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-31"><input type="text" class="input-text" id="position_ab_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.POSITION_AB_31" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-32"><input type="text" class="input-text" id="position_ab_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.POSITION_AB_32" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-33"><input type="text" class="input-text" id="position_ab_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.POSITION_AB_33" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-34"><input type="text" class="input-text" id="position_ab_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.POSITION_AB_34" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-35"><input type="text" class="input-text" id="position_ab_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.POSITION_AB_35" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-36"><input type="text" class="input-text" id="position_ab_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.POSITION_AB_36" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-37"><input type="text" class="input-text" id="position_ab_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.POSITION_AB_37" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-38"><input type="text" class="input-text" id="position_ab_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.POSITION_AB_38" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-39"><input type="text" class="input-text" id="position_ab_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.POSITION_AB_39" oninput="validateNumberInput(event)"/></div>

    <div class="position-rel-0"><input type="text" class="input-text" id="position_rel_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.POSITION_REL_0" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-1"><input type="text" class="input-text" id="position_rel_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.POSITION_REL_1" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-2"><input type="text" class="input-text" id="position_rel_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.POSITION_REL_2" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-3"><input type="text" class="input-text" id="position_rel_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.POSITION_REL_3" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-4"><input type="text" class="input-text" id="position_rel_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.POSITION_REL_4" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-5"><input type="text" class="input-text" id="position_rel_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.POSITION_REL_5" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-6"><input type="text" class="input-text" id="position_rel_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.POSITION_REL_6" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-7"><input type="text" class="input-text" id="position_rel_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.POSITION_REL_7" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-8"><input type="text" class="input-text" id="position_rel_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.POSITION_REL_8" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-9"><input type="text" class="input-text" id="position_rel_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.POSITION_REL_9" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-10"><input type="text" class="input-text" id="position_rel_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.POSITION_REL_10" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-11"><input type="text" class="input-text" id="position_rel_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.POSITION_REL_11" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-12"><input type="text" class="input-text" id="position_rel_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.POSITION_REL_12" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-13"><input type="text" class="input-text" id="position_rel_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.POSITION_REL_13" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-14"><input type="text" class="input-text" id="position_rel_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.POSITION_REL_14" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-15"><input type="text" class="input-text" id="position_rel_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.POSITION_REL_15" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-16"><input type="text" class="input-text" id="position_rel_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.POSITION_REL_16" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-17"><input type="text" class="input-text" id="position_rel_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.POSITION_REL_17" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-18"><input type="text" class="input-text" id="position_rel_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.POSITION_REL_18" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-19"><input type="text" class="input-text" id="position_rel_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.POSITION_REL_19" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-20"><input type="text" class="input-text" id="position_rel_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.POSITION_REL_20" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-21"><input type="text" class="input-text" id="position_rel_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.POSITION_REL_21" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-22"><input type="text" class="input-text" id="position_rel_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.POSITION_REL_22" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-23"><input type="text" class="input-text" id="position_rel_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.POSITION_REL_23" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-24"><input type="text" class="input-text" id="position_rel_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.POSITION_REL_24" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-25"><input type="text" class="input-text" id="position_rel_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.POSITION_REL_25" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-26"><input type="text" class="input-text" id="position_rel_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.POSITION_REL_26" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-27"><input type="text" class="input-text" id="position_rel_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.POSITION_REL_27" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-28"><input type="text" class="input-text" id="position_rel_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.POSITION_REL_28" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-29"><input type="text" class="input-text" id="position_rel_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.POSITION_REL_29" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-30"><input type="text" class="input-text" id="position_rel_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.POSITION_REL_30" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-31"><input type="text" class="input-text" id="position_rel_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.POSITION_REL_31" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-32"><input type="text" class="input-text" id="position_rel_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.POSITION_REL_32" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-33"><input type="text" class="input-text" id="position_rel_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.POSITION_REL_33" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-34"><input type="text" class="input-text" id="position_rel_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.POSITION_REL_34" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-35"><input type="text" class="input-text" id="position_rel_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.POSITION_REL_35" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-36"><input type="text" class="input-text" id="position_rel_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.POSITION_REL_36" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-37"><input type="text" class="input-text" id="position_rel_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.POSITION_REL_37" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-38"><input type="text" class="input-text" id="position_rel_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.POSITION_REL_38" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-39"><input type="text" class="input-text" id="position_rel_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.POSITION_REL_39" oninput="validateNumberInput(event)"/></div>

    <div class="distance-0"><input type="text" class="input-text" id="distance_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.DISTANCE_0" oninput="validateNumberInput(event)"/></div>
    <div class="distance-1"><input type="text" class="input-text" id="distance_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.DISTANCE_1" oninput="validateNumberInput(event)"/></div>
    <div class="distance-2"><input type="text" class="input-text" id="distance_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.DISTANCE_2" oninput="validateNumberInput(event)"/></div>
    <div class="distance-3"><input type="text" class="input-text" id="distance_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.DISTANCE_3" oninput="validateNumberInput(event)"/></div>
    <div class="distance-4"><input type="text" class="input-text" id="distance_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.DISTANCE_4" oninput="validateNumberInput(event)"/></div>
    <div class="distance-5"><input type="text" class="input-text" id="distance_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.DISTANCE_5" oninput="validateNumberInput(event)"/></div>
    <div class="distance-6"><input type="text" class="input-text" id="distance_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.DISTANCE_6" oninput="validateNumberInput(event)"/></div>
    <div class="distance-7"><input type="text" class="input-text" id="distance_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.DISTANCE_7" oninput="validateNumberInput(event)"/></div>
    <div class="distance-8"><input type="text" class="input-text" id="distance_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.DISTANCE_8" oninput="validateNumberInput(event)"/></div>
    <div class="distance-9"><input type="text" class="input-text" id="distance_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.DISTANCE_9" oninput="validateNumberInput(event)"/></div>
    <div class="distance-10"><input type="text" class="input-text" id="distance_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.DISTANCE_10" oninput="validateNumberInput(event)"/></div>
    <div class="distance-11"><input type="text" class="input-text" id="distance_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.DISTANCE_11" oninput="validateNumberInput(event)"/></div>
    <div class="distance-12"><input type="text" class="input-text" id="distance_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.DISTANCE_12" oninput="validateNumberInput(event)"/></div>
    <div class="distance-13"><input type="text" class="input-text" id="distance_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.DISTANCE_13" oninput="validateNumberInput(event)"/></div>
    <div class="distance-14"><input type="text" class="input-text" id="distance_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.DISTANCE_14" oninput="validateNumberInput(event)"/></div>
    <div class="distance-15"><input type="text" class="input-text" id="distance_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.DISTANCE_15" oninput="validateNumberInput(event)"/></div>
    <div class="distance-16"><input type="text" class="input-text" id="distance_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.DISTANCE_16" oninput="validateNumberInput(event)"/></div>
    <div class="distance-17"><input type="text" class="input-text" id="distance_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.DISTANCE_17" oninput="validateNumberInput(event)"/></div>
    <div class="distance-18"><input type="text" class="input-text" id="distance_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.DISTANCE_18" oninput="validateNumberInput(event)"/></div>
    <div class="distance-19"><input type="text" class="input-text" id="distance_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.DISTANCE_19" oninput="validateNumberInput(event)"/></div>
    <div class="distance-20"><input type="text" class="input-text" id="distance_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.DISTANCE_20" oninput="validateNumberInput(event)"/></div>
    <div class="distance-21"><input type="text" class="input-text" id="distance_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.DISTANCE_21" oninput="validateNumberInput(event)"/></div>
    <div class="distance-22"><input type="text" class="input-text" id="distance_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.DISTANCE_22" oninput="validateNumberInput(event)"/></div>
    <div class="distance-23"><input type="text" class="input-text" id="distance_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.DISTANCE_23" oninput="validateNumberInput(event)"/></div>
    <div class="distance-24"><input type="text" class="input-text" id="distance_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.DISTANCE_24" oninput="validateNumberInput(event)"/></div>
    <div class="distance-25"><input type="text" class="input-text" id="distance_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.DISTANCE_25" oninput="validateNumberInput(event)"/></div>
    <div class="distance-26"><input type="text" class="input-text" id="distance_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.DISTANCE_26" oninput="validateNumberInput(event)"/></div>
    <div class="distance-27"><input type="text" class="input-text" id="distance_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.DISTANCE_27" oninput="validateNumberInput(event)"/></div>
    <div class="distance-28"><input type="text" class="input-text" id="distance_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.DISTANCE_28" oninput="validateNumberInput(event)"/></div>
    <div class="distance-29"><input type="text" class="input-text" id="distance_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.DISTANCE_29" oninput="validateNumberInput(event)"/></div>
    <div class="distance-30"><input type="text" class="input-text" id="distance_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.DISTANCE_30" oninput="validateNumberInput(event)"/></div>
    <div class="distance-31"><input type="text" class="input-text" id="distance_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.DISTANCE_31" oninput="validateNumberInput(event)"/></div>
    <div class="distance-32"><input type="text" class="input-text" id="distance_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.DISTANCE_32" oninput="validateNumberInput(event)"/></div>
    <div class="distance-33"><input type="text" class="input-text" id="distance_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.DISTANCE_33" oninput="validateNumberInput(event)"/></div>
    <div class="distance-34"><input type="text" class="input-text" id="distance_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.DISTANCE_34" oninput="validateNumberInput(event)"/></div>
    <div class="distance-35"><input type="text" class="input-text" id="distance_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.DISTANCE_35" oninput="validateNumberInput(event)"/></div>
    <div class="distance-36"><input type="text" class="input-text" id="distance_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.DISTANCE_36" oninput="validateNumberInput(event)"/></div>
    <div class="distance-37"><input type="text" class="input-text" id="distance_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.DISTANCE_37" oninput="validateNumberInput(event)"/></div>
    <div class="distance-38"><input type="text" class="input-text" id="distance_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.DISTANCE_38" oninput="validateNumberInput(event)"/></div>
    <div class="distance-39"><input type="text" class="input-text" id="distance_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.DISTANCE_39" oninput="validateNumberInput(event)"/></div>

    <div class="holding-one-0"><input type="text" class="input-text" id="holding_one_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.HOLDING_ONE_0" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-1"><input type="text" class="input-text" id="holding_one_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.HOLDING_ONE_1" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-2"><input type="text" class="input-text" id="holding_one_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.HOLDING_ONE_2" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-3"><input type="text" class="input-text" id="holding_one_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.HOLDING_ONE_3" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-4"><input type="text" class="input-text" id="holding_one_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.HOLDING_ONE_4" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-5"><input type="text" class="input-text" id="holding_one_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.HOLDING_ONE_5" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-6"><input type="text" class="input-text" id="holding_one_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.HOLDING_ONE_6" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-7"><input type="text" class="input-text" id="holding_one_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.HOLDING_ONE_7" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-8"><input type="text" class="input-text" id="holding_one_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.HOLDING_ONE_8" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-9"><input type="text" class="input-text" id="holding_one_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.HOLDING_ONE_9" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-10"><input type="text" class="input-text" id="holding_one_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.HOLDING_ONE_10" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-11"><input type="text" class="input-text" id="holding_one_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.HOLDING_ONE_11" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-12"><input type="text" class="input-text" id="holding_one_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.HOLDING_ONE_12" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-13"><input type="text" class="input-text" id="holding_one_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.HOLDING_ONE_13" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-14"><input type="text" class="input-text" id="holding_one_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.HOLDING_ONE_14" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-15"><input type="text" class="input-text" id="holding_one_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.HOLDING_ONE_15" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-16"><input type="text" class="input-text" id="holding_one_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.HOLDING_ONE_16" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-17"><input type="text" class="input-text" id="holding_one_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.HOLDING_ONE_17" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-18"><input type="text" class="input-text" id="holding_one_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.HOLDING_ONE_18" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-19"><input type="text" class="input-text" id="holding_one_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.HOLDING_ONE_19" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-20"><input type="text" class="input-text" id="holding_one_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.HOLDING_ONE_20" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-21"><input type="text" class="input-text" id="holding_one_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.HOLDING_ONE_21" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-22"><input type="text" class="input-text" id="holding_one_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.HOLDING_ONE_22" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-23"><input type="text" class="input-text" id="holding_one_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.HOLDING_ONE_23" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-24"><input type="text" class="input-text" id="holding_one_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.HOLDING_ONE_24" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-25"><input type="text" class="input-text" id="holding_one_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.HOLDING_ONE_25" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-26"><input type="text" class="input-text" id="holding_one_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.HOLDING_ONE_26" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-27"><input type="text" class="input-text" id="holding_one_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.HOLDING_ONE_27" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-28"><input type="text" class="input-text" id="holding_one_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.HOLDING_ONE_28" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-29"><input type="text" class="input-text" id="holding_one_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.HOLDING_ONE_29" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-30"><input type="text" class="input-text" id="holding_one_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.HOLDING_ONE_30" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-31"><input type="text" class="input-text" id="holding_one_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.HOLDING_ONE_31" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-32"><input type="text" class="input-text" id="holding_one_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.HOLDING_ONE_32" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-33"><input type="text" class="input-text" id="holding_one_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.HOLDING_ONE_33" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-34"><input type="text" class="input-text" id="holding_one_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.HOLDING_ONE_34" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-35"><input type="text" class="input-text" id="holding_one_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.HOLDING_ONE_35" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-36"><input type="text" class="input-text" id="holding_one_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.HOLDING_ONE_36" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-37"><input type="text" class="input-text" id="holding_one_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.HOLDING_ONE_37" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-38"><input type="text" class="input-text" id="holding_one_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.HOLDING_ONE_38" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-39"><input type="text" class="input-text" id="holding_one_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.HOLDING_ONE_39" oninput="validateNumberInput(event)"/></div>


    <div class="holding-two-0"><input type="text" class="input-text" id="holding_two_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.HOLDING_TWO_0" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-1"><input type="text" class="input-text" id="holding_two_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.HOLDING_TWO_1" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-2"><input type="text" class="input-text" id="holding_two_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.HOLDING_TWO_2" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-3"><input type="text" class="input-text" id="holding_two_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.HOLDING_TWO_3" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-4"><input type="text" class="input-text" id="holding_two_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.HOLDING_TWO_4" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-5"><input type="text" class="input-text" id="holding_two_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.HOLDING_TWO_5" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-6"><input type="text" class="input-text" id="holding_two_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.HOLDING_TWO_6" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-7"><input type="text" class="input-text" id="holding_two_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.HOLDING_TWO_7" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-8"><input type="text" class="input-text" id="holding_two_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.HOLDING_TWO_8" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-9"><input type="text" class="input-text" id="holding_two_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.HOLDING_TWO_9" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-10"><input type="text" class="input-text" id="holding_two_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.HOLDING_TWO_10" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-11"><input type="text" class="input-text" id="holding_two_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.HOLDING_TWO_11" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-12"><input type="text" class="input-text" id="holding_two_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.HOLDING_TWO_12" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-13"><input type="text" class="input-text" id="holding_two_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.HOLDING_TWO_13" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-14"><input type="text" class="input-text" id="holding_two_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.HOLDING_TWO_14" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-15"><input type="text" class="input-text" id="holding_two_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.HOLDING_TWO_15" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-16"><input type="text" class="input-text" id="holding_two_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.HOLDING_TWO_16" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-17"><input type="text" class="input-text" id="holding_two_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.HOLDING_TWO_17" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-18"><input type="text" class="input-text" id="holding_two_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.HOLDING_TWO_18" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-19"><input type="text" class="input-text" id="holding_two_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.HOLDING_TWO_19" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-20"><input type="text" class="input-text" id="holding_two_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.HOLDING_TWO_20" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-21"><input type="text" class="input-text" id="holding_two_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.HOLDING_TWO_21" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-22"><input type="text" class="input-text" id="holding_two_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.HOLDING_TWO_22" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-23"><input type="text" class="input-text" id="holding_two_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.HOLDING_TWO_23" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-24"><input type="text" class="input-text" id="holding_two_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.HOLDING_TWO_24" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-25"><input type="text" class="input-text" id="holding_two_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.HOLDING_TWO_25" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-26"><input type="text" class="input-text" id="holding_two_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.HOLDING_TWO_26" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-27"><input type="text" class="input-text" id="holding_two_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.HOLDING_TWO_27" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-28"><input type="text" class="input-text" id="holding_two_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.HOLDING_TWO_28" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-29"><input type="text" class="input-text" id="holding_two_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.HOLDING_TWO_29" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-30"><input type="text" class="input-text" id="holding_two_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.HOLDING_TWO_30" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-31"><input type="text" class="input-text" id="holding_two_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.HOLDING_TWO_31" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-32"><input type="text" class="input-text" id="holding_two_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.HOLDING_TWO_32" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-33"><input type="text" class="input-text" id="holding_two_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.HOLDING_TWO_33" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-34"><input type="text" class="input-text" id="holding_two_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.HOLDING_TWO_34" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-35"><input type="text" class="input-text" id="holding_two_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.HOLDING_TWO_35" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-36"><input type="text" class="input-text" id="holding_two_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.HOLDING_TWO_36" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-37"><input type="text" class="input-text" id="holding_two_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.HOLDING_TWO_37" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-38"><input type="text" class="input-text" id="holding_two_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.HOLDING_TWO_38" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-39"><input type="text" class="input-text" id="holding_two_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.HOLDING_TWO_39" oninput="validateNumberInput(event)"/></div>

    <div class="number-loops-0"><input type="text" class="input-text" id="number_loops_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.NUMBER_LOOPS_0" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-1"><input type="text" class="input-text" id="number_loops_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.NUMBER_LOOPS_1" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-2"><input type="text" class="input-text" id="number_loops_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.NUMBER_LOOPS_2" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-3"><input type="text" class="input-text" id="number_loops_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.NUMBER_LOOPS_3" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-4"><input type="text" class="input-text" id="number_loops_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.NUMBER_LOOPS_4" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-5"><input type="text" class="input-text" id="number_loops_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.NUMBER_LOOPS_5" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-6"><input type="text" class="input-text" id="number_loops_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.NUMBER_LOOPS_6" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-7"><input type="text" class="input-text" id="number_loops_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.NUMBER_LOOPS_7" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-8"><input type="text" class="input-text" id="number_loops_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.NUMBER_LOOPS_8" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-9"><input type="text" class="input-text" id="number_loops_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.NUMBER_LOOPS_9" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-10"><input type="text" class="input-text" id="number_loops_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.NUMBER_LOOPS_10" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-11"><input type="text" class="input-text" id="number_loops_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.NUMBER_LOOPS_11" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-12"><input type="text" class="input-text" id="number_loops_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.NUMBER_LOOPS_12" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-13"><input type="text" class="input-text" id="number_loops_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.NUMBER_LOOPS_13" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-14"><input type="text" class="input-text" id="number_loops_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.NUMBER_LOOPS_14" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-15"><input type="text" class="input-text" id="number_loops_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.NUMBER_LOOPS_15" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-16"><input type="text" class="input-text" id="number_loops_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.NUMBER_LOOPS_16" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-17"><input type="text" class="input-text" id="number_loops_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.NUMBER_LOOPS_17" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-18"><input type="text" class="input-text" id="number_loops_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.NUMBER_LOOPS_18" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-19"><input type="text" class="input-text" id="number_loops_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.NUMBER_LOOPS_19" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-20"><input type="text" class="input-text" id="number_loops_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.NUMBER_LOOPS_20" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-21"><input type="text" class="input-text" id="number_loops_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.NUMBER_LOOPS_21" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-22"><input type="text" class="input-text" id="number_loops_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.NUMBER_LOOPS_22" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-23"><input type="text" class="input-text" id="number_loops_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.NUMBER_LOOPS_23" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-24"><input type="text" class="input-text" id="number_loops_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.NUMBER_LOOPS_24" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-25"><input type="text" class="input-text" id="number_loops_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.NUMBER_LOOPS_25" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-26"><input type="text" class="input-text" id="number_loops_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.NUMBER_LOOPS_26" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-27"><input type="text" class="input-text" id="number_loops_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.NUMBER_LOOPS_27" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-28"><input type="text" class="input-text" id="number_loops_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.NUMBER_LOOPS_28" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-29"><input type="text" class="input-text" id="number_loops_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.NUMBER_LOOPS_29" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-30"><input type="text" class="input-text" id="number_loops_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.NUMBER_LOOPS_30" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-31"><input type="text" class="input-text" id="number_loops_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.NUMBER_LOOPS_31" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-32"><input type="text" class="input-text" id="number_loops_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.NUMBER_LOOPS_32" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-33"><input type="text" class="input-text" id="number_loops_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.NUMBER_LOOPS_33" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-34"><input type="text" class="input-text" id="number_loops_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.NUMBER_LOOPS_34" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-35"><input type="text" class="input-text" id="number_loops_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.NUMBER_LOOPS_35" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-36"><input type="text" class="input-text" id="number_loops_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.NUMBER_LOOPS_36" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-37"><input type="text" class="input-text" id="number_loops_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.NUMBER_LOOPS_37" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-38"><input type="text" class="input-text" id="number_loops_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.NUMBER_LOOPS_38" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-39"><input type="text" class="input-text" id="number_loops_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.NUMBER_LOOPS_39" oninput="validateNumberInput(event)"/></div>

    <div class="speed-plunger-0"><input type="text" class="input-text" id="speed_plunger_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.SPEED_PLUNGER_0" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-1"><input type="text" class="input-text" id="speed_plunger_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.SPEED_PLUNGER_1" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-2"><input type="text" class="input-text" id="speed_plunger_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.SPEED_PLUNGER_2" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-3"><input type="text" class="input-text" id="speed_plunger_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.SPEED_PLUNGER_3" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-4"><input type="text" class="input-text" id="speed_plunger_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.SPEED_PLUNGER_4" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-5"><input type="text" class="input-text" id="speed_plunger_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.SPEED_PLUNGER_5" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-6"><input type="text" class="input-text" id="speed_plunger_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.SPEED_PLUNGER_6" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-7"><input type="text" class="input-text" id="speed_plunger_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.SPEED_PLUNGER_7" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-8"><input type="text" class="input-text" id="speed_plunger_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.SPEED_PLUNGER_8" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-9"><input type="text" class="input-text" id="speed_plunger_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.SPEED_PLUNGER_9" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-10"><input type="text" class="input-text" id="speed_plunger_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.SPEED_PLUNGER_10" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-11"><input type="text" class="input-text" id="speed_plunger_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.SPEED_PLUNGER_11" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-12"><input type="text" class="input-text" id="speed_plunger_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.SPEED_PLUNGER_12" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-13"><input type="text" class="input-text" id="speed_plunger_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.SPEED_PLUNGER_13" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-14"><input type="text" class="input-text" id="speed_plunger_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.SPEED_PLUNGER_14" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-15"><input type="text" class="input-text" id="speed_plunger_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.SPEED_PLUNGER_15" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-16"><input type="text" class="input-text" id="speed_plunger_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.SPEED_PLUNGER_16" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-17"><input type="text" class="input-text" id="speed_plunger_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.SPEED_PLUNGER_17" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-18"><input type="text" class="input-text" id="speed_plunger_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.SPEED_PLUNGER_18" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-19"><input type="text" class="input-text" id="speed_plunger_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.SPEED_PLUNGER_19" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-20"><input type="text" class="input-text" id="speed_plunger_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.SPEED_PLUNGER_20" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-21"><input type="text" class="input-text" id="speed_plunger_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.SPEED_PLUNGER_21" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-22"><input type="text" class="input-text" id="speed_plunger_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.SPEED_PLUNGER_22" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-23"><input type="text" class="input-text" id="speed_plunger_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.SPEED_PLUNGER_23" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-24"><input type="text" class="input-text" id="speed_plunger_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.SPEED_PLUNGER_24" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-25"><input type="text" class="input-text" id="speed_plunger_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.SPEED_PLUNGER_25" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-26"><input type="text" class="input-text" id="speed_plunger_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.SPEED_PLUNGER_26" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-27"><input type="text" class="input-text" id="speed_plunger_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.SPEED_PLUNGER_27" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-28"><input type="text" class="input-text" id="speed_plunger_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.SPEED_PLUNGER_28" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-29"><input type="text" class="input-text" id="speed_plunger_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.SPEED_PLUNGER_29" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-30"><input type="text" class="input-text" id="speed_plunger_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.SPEED_PLUNGER_30" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-31"><input type="text" class="input-text" id="speed_plunger_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.SPEED_PLUNGER_31" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-32"><input type="text" class="input-text" id="speed_plunger_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.SPEED_PLUNGER_32" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-33"><input type="text" class="input-text" id="speed_plunger_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.SPEED_PLUNGER_33" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-34"><input type="text" class="input-text" id="speed_plunger_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.SPEED_PLUNGER_34" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-35"><input type="text" class="input-text" id="speed_plunger_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.SPEED_PLUNGER_35" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-36"><input type="text" class="input-text" id="speed_plunger_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.SPEED_PLUNGER_36" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-37"><input type="text" class="input-text" id="speed_plunger_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.SPEED_PLUNGER_37" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-38"><input type="text" class="input-text" id="speed_plunger_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.SPEED_PLUNGER_38" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-39"><input type="text" class="input-text" id="speed_plunger_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.SPEED_PLUNGER_39" oninput="validateNumberInput(event)"/></div>

    <div class="gradient-force-0"><input type="text" class="input-text" id="gradient_force_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.GRADIENT_FORCE_0" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-1"><input type="text" class="input-text" id="gradient_force_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.GRADIENT_FORCE_1" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-2"><input type="text" class="input-text" id="gradient_force_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.GRADIENT_FORCE_2" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-3"><input type="text" class="input-text" id="gradient_force_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.GRADIENT_FORCE_3" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-4"><input type="text" class="input-text" id="gradient_force_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.GRADIENT_FORCE_4" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-5"><input type="text" class="input-text" id="gradient_force_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.GRADIENT_FORCE_5" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-6"><input type="text" class="input-text" id="gradient_force_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.GRADIENT_FORCE_6" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-7"><input type="text" class="input-text" id="gradient_force_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.GRADIENT_FORCE_7" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-8"><input type="text" class="input-text" id="gradient_force_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.GRADIENT_FORCE_8" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-9"><input type="text" class="input-text" id="gradient_force_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.GRADIENT_FORCE_9" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-10"><input type="text" class="input-text" id="gradient_force_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.GRADIENT_FORCE_10" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-11"><input type="text" class="input-text" id="gradient_force_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.GRADIENT_FORCE_11" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-12"><input type="text" class="input-text" id="gradient_force_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.GRADIENT_FORCE_12" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-13"><input type="text" class="input-text" id="gradient_force_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.GRADIENT_FORCE_13" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-14"><input type="text" class="input-text" id="gradient_force_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.GRADIENT_FORCE_14" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-15"><input type="text" class="input-text" id="gradient_force_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.GRADIENT_FORCE_15" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-16"><input type="text" class="input-text" id="gradient_force_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.GRADIENT_FORCE_16" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-17"><input type="text" class="input-text" id="gradient_force_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.GRADIENT_FORCE_17" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-18"><input type="text" class="input-text" id="gradient_force_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.GRADIENT_FORCE_18" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-19"><input type="text" class="input-text" id="gradient_force_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.GRADIENT_FORCE_19" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-20"><input type="text" class="input-text" id="gradient_force_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.GRADIENT_FORCE_20" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-21"><input type="text" class="input-text" id="gradient_force_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.GRADIENT_FORCE_21" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-22"><input type="text" class="input-text" id="gradient_force_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.GRADIENT_FORCE_22" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-23"><input type="text" class="input-text" id="gradient_force_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.GRADIENT_FORCE_23" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-24"><input type="text" class="input-text" id="gradient_force_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.GRADIENT_FORCE_24" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-25"><input type="text" class="input-text" id="gradient_force_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.GRADIENT_FORCE_25" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-26"><input type="text" class="input-text" id="gradient_force_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.GRADIENT_FORCE_26" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-27"><input type="text" class="input-text" id="gradient_force_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.GRADIENT_FORCE_27" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-28"><input type="text" class="input-text" id="gradient_force_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.GRADIENT_FORCE_28" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-29"><input type="text" class="input-text" id="gradient_force_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.GRADIENT_FORCE_29" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-30"><input type="text" class="input-text" id="gradient_force_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.GRADIENT_FORCE_30" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-31"><input type="text" class="input-text" id="gradient_force_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.GRADIENT_FORCE_31" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-32"><input type="text" class="input-text" id="gradient_force_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.GRADIENT_FORCE_32" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-33"><input type="text" class="input-text" id="gradient_force_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.GRADIENT_FORCE_33" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-34"><input type="text" class="input-text" id="gradient_force_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.GRADIENT_FORCE_34" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-35"><input type="text" class="input-text" id="gradient_force_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.GRADIENT_FORCE_35" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-36"><input type="text" class="input-text" id="gradient_force_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.GRADIENT_FORCE_36" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-37"><input type="text" class="input-text" id="gradient_force_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.GRADIENT_FORCE_37" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-38"><input type="text" class="input-text" id="gradient_force_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.GRADIENT_FORCE_38" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-39"><input type="text" class="input-text" id="gradient_force_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.GRADIENT_FORCE_39" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling">Fastcooling</div>
    <div class="gas-nTwo">Gas N2</div>
    <div class="gas-ar">Gas Ar</div>
    <div class="spare">Spare</div>
    <div class="hydraulic-unlt-off">Hydraulic Unlt OFF</div>
    <div class="press-capacity-control">Press capacity control</div>
    <div class="press-position-control-abs">Press position control (abs.)</div>
    <div class="press-distance-control-rel">Press distance control (rel.)</div>

    <!--------------------------------------------check box--------------------------------------------->

    <div class="fastcooling-0"><input type="checkbox" id="fastcooling_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.FASTCOOLING_0" class="input-checkbox"></div>
    <div class="fastcooling-1"><input type="checkbox" id="fastcooling_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.FASTCOOLING_1" class="input-checkbox"></div>
    <div class="fastcooling-2"><input type="checkbox" id="fastcooling_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.FASTCOOLING_2" class="input-checkbox"></div>
    <div class="fastcooling-3"><input type="checkbox" id="fastcooling_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.FASTCOOLING_3" class="input-checkbox"></div>
    <div class="fastcooling-4"><input type="checkbox" id="fastcooling_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.FASTCOOLING_4" class="input-checkbox"></div>
    <div class="fastcooling-5"><input type="checkbox" id="fastcooling_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.FASTCOOLING_5" class="input-checkbox"></div>
    <div class="fastcooling-6"><input type="checkbox" id="fastcooling_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.FASTCOOLING_6" class="input-checkbox"></div>
    <div class="fastcooling-7"><input type="checkbox" id="fastcooling_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.FASTCOOLING_7" class="input-checkbox"></div>
    <div class="fastcooling-8"><input type="checkbox" id="fastcooling_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.FASTCOOLING_8" class="input-checkbox"></div>
    <div class="fastcooling-9"><input type="checkbox" id="fastcooling_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.FASTCOOLING_9" class="input-checkbox"></div>
    <div class="fastcooling-10"><input type="checkbox" id="fastcooling_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.FASTCOOLING_10" class="input-checkbox"></div>
    <div class="fastcooling-11"><input type="checkbox" id="fastcooling_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.FASTCOOLING_11" class="input-checkbox"></div>
    <div class="fastcooling-12"><input type="checkbox" id="fastcooling_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.FASTCOOLING_12" class="input-checkbox"></div>
    <div class="fastcooling-13"><input type="checkbox" id="fastcooling_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.FASTCOOLING_13" class="input-checkbox"></div>
    <div class="fastcooling-14"><input type="checkbox" id="fastcooling_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.FASTCOOLING_14" class="input-checkbox"></div>
    <div class="fastcooling-15"><input type="checkbox" id="fastcooling_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.FASTCOOLING_15" class="input-checkbox"></div>
    <div class="fastcooling-16"><input type="checkbox" id="fastcooling_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.FASTCOOLING_16" class="input-checkbox"></div>
    <div class="fastcooling-17"><input type="checkbox" id="fastcooling_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.FASTCOOLING_17" class="input-checkbox"></div>
    <div class="fastcooling-18"><input type="checkbox" id="fastcooling_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.FASTCOOLING_18" class="input-checkbox"></div>
    <div class="fastcooling-19"><input type="checkbox" id="fastcooling_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.FASTCOOLING_19" class="input-checkbox"></div>
    <div class="fastcooling-20"><input type="checkbox" id="fastcooling_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.FASTCOOLING_20" class="input-checkbox"></div>
    <div class="fastcooling-21"><input type="checkbox" id="fastcooling_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.FASTCOOLING_21" class="input-checkbox"></div>
    <div class="fastcooling-22"><input type="checkbox" id="fastcooling_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.FASTCOOLING_22" class="input-checkbox"></div>
    <div class="fastcooling-23"><input type="checkbox" id="fastcooling_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.FASTCOOLING_23" class="input-checkbox"></div>
    <div class="fastcooling-24"><input type="checkbox" id="fastcooling_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.FASTCOOLING_24" class="input-checkbox"></div>
    <div class="fastcooling-25"><input type="checkbox" id="fastcooling_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.FASTCOOLING_25" class="input-checkbox"></div>
    <div class="fastcooling-26"><input type="checkbox" id="fastcooling_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.FASTCOOLING_26" class="input-checkbox"></div>
    <div class="fastcooling-27"><input type="checkbox" id="fastcooling_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.FASTCOOLING_27" class="input-checkbox"></div>
    <div class="fastcooling-28"><input type="checkbox" id="fastcooling_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.FASTCOOLING_28" class="input-checkbox"></div>
    <div class="fastcooling-29"><input type="checkbox" id="fastcooling_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.FASTCOOLING_29" class="input-checkbox"></div>
    <div class="fastcooling-30"><input type="checkbox" id="fastcooling_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.FASTCOOLING_30" class="input-checkbox"></div>
    <div class="fastcooling-31"><input type="checkbox" id="fastcooling_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.FASTCOOLING_31" class="input-checkbox"></div>
    <div class="fastcooling-32"><input type="checkbox" id="fastcooling_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.FASTCOOLING_32" class="input-checkbox"></div>
    <div class="fastcooling-33"><input type="checkbox" id="fastcooling_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.FASTCOOLING_33" class="input-checkbox"></div>
    <div class="fastcooling-34"><input type="checkbox" id="fastcooling_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.FASTCOOLING_34" class="input-checkbox"></div>
    <div class="fastcooling-35"><input type="checkbox" id="fastcooling_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.FASTCOOLING_35" class="input-checkbox"></div>
    <div class="fastcooling-36"><input type="checkbox" id="fastcooling_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.FASTCOOLING_36" class="input-checkbox"></div>
    <div class="fastcooling-37"><input type="checkbox" id="fastcooling_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.FASTCOOLING_37" class="input-checkbox"></div>
    <div class="fastcooling-38"><input type="checkbox" id="fastcooling_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.FASTCOOLING_38" class="input-checkbox"></div>
    <div class="fastcooling-39"><input type="checkbox" id="fastcooling_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.FASTCOOLING_39" class="input-checkbox"></div>

    <div class="gas-n-0"><input type="checkbox" id="gas_n_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.GAS_N_0" class="input-checkbox"></div>
    <div class="gas-n-1"><input type="checkbox" id="gas_n_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.GAS_N_1" class="input-checkbox"></div>
    <div class="gas-n-2"><input type="checkbox" id="gas_n_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.GAS_N_2" class="input-checkbox"></div>
    <div class="gas-n-3"><input type="checkbox" id="gas_n_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.GAS_N_3" class="input-checkbox"></div>
    <div class="gas-n-4"><input type="checkbox" id="gas_n_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.GAS_N_4" class="input-checkbox"></div>
    <div class="gas-n-5"><input type="checkbox" id="gas_n_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.GAS_N_5" class="input-checkbox"></div>
    <div class="gas-n-6"><input type="checkbox" id="gas_n_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.GAS_N_6" class="input-checkbox"></div>
    <div class="gas-n-7"><input type="checkbox" id="gas_n_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.GAS_N_7" class="input-checkbox"></div>
    <div class="gas-n-8"><input type="checkbox" id="gas_n_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.GAS_N_8" class="input-checkbox"></div>
    <div class="gas-n-9"><input type="checkbox" id="gas_n_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.GAS_N_9" class="input-checkbox"></div>
    <div class="gas-n-10"><input type="checkbox" id="gas_n_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.GAS_N_10" class="input-checkbox"></div>
    <div class="gas-n-11"><input type="checkbox" id="gas_n_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.GAS_N_11" class="input-checkbox"></div>
    <div class="gas-n-12"><input type="checkbox" id="gas_n_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.GAS_N_12" class="input-checkbox"></div>
    <div class="gas-n-13"><input type="checkbox" id="gas_n_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.GAS_N_13" class="input-checkbox"></div>
    <div class="gas-n-14"><input type="checkbox" id="gas_n_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.GAS_N_14" class="input-checkbox"></div>
    <div class="gas-n-15"><input type="checkbox" id="gas_n_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.GAS_N_15" class="input-checkbox"></div>
    <div class="gas-n-16"><input type="checkbox" id="gas_n_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.GAS_N_16" class="input-checkbox"></div>
    <div class="gas-n-17"><input type="checkbox" id="gas_n_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.GAS_N_17" class="input-checkbox"></div>
    <div class="gas-n-18"><input type="checkbox" id="gas_n_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.GAS_N_18" class="input-checkbox"></div>
    <div class="gas-n-19"><input type="checkbox" id="gas_n_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.GAS_N_19" class="input-checkbox"></div>
    <div class="gas-n-20"><input type="checkbox" id="gas_n_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.GAS_N_20" class="input-checkbox"></div>
    <div class="gas-n-21"><input type="checkbox" id="gas_n_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.GAS_N_21" class="input-checkbox"></div>
    <div class="gas-n-22"><input type="checkbox" id="gas_n_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.GAS_N_22" class="input-checkbox"></div>
    <div class="gas-n-23"><input type="checkbox" id="gas_n_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.GAS_N_23" class="input-checkbox"></div>
    <div class="gas-n-24"><input type="checkbox" id="gas_n_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.GAS_N_24" class="input-checkbox"></div>
    <div class="gas-n-25"><input type="checkbox" id="gas_n_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.GAS_N_25" class="input-checkbox"></div>
    <div class="gas-n-26"><input type="checkbox" id="gas_n_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.GAS_N_26" class="input-checkbox"></div>
    <div class="gas-n-27"><input type="checkbox" id="gas_n_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.GAS_N_27" class="input-checkbox"></div>
    <div class="gas-n-28"><input type="checkbox" id="gas_n_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.GAS_N_28" class="input-checkbox"></div>
    <div class="gas-n-29"><input type="checkbox" id="gas_n_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.GAS_N_29" class="input-checkbox"></div>
    <div class="gas-n-30"><input type="checkbox" id="gas_n_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.GAS_N_30" class="input-checkbox"></div>
    <div class="gas-n-31"><input type="checkbox" id="gas_n_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.GAS_N_31" class="input-checkbox"></div>
    <div class="gas-n-32"><input type="checkbox" id="gas_n_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.GAS_N_32" class="input-checkbox"></div>
    <div class="gas-n-33"><input type="checkbox" id="gas_n_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.GAS_N_33" class="input-checkbox"></div>
    <div class="gas-n-34"><input type="checkbox" id="gas_n_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.GAS_N_34" class="input-checkbox"></div>
    <div class="gas-n-35"><input type="checkbox" id="gas_n_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.GAS_N_35" class="input-checkbox"></div>
    <div class="gas-n-36"><input type="checkbox" id="gas_n_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.GAS_N_36" class="input-checkbox"></div>
    <div class="gas-n-37"><input type="checkbox" id="gas_n_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.GAS_N_37" class="input-checkbox"></div>
    <div class="gas-n-38"><input type="checkbox" id="gas_n_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.GAS_N_38" class="input-checkbox"></div>
    <div class="gas-n-39"><input type="checkbox" id="gas_n_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.GAS_N_39" class="input-checkbox"></div>

    <div class="gas-a-0"><input type="checkbox" id="gas_a_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.GAS_A_0" class="input-checkbox"></div>
    <div class="gas-a-1"><input type="checkbox" id="gas_a_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.GAS_A_1" class="input-checkbox"></div>
    <div class="gas-a-2"><input type="checkbox" id="gas_a_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.GAS_A_2" class="input-checkbox"></div>
    <div class="gas-a-3"><input type="checkbox" id="gas_a_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.GAS_A_3" class="input-checkbox"></div>
    <div class="gas-a-4"><input type="checkbox" id="gas_a_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.GAS_A_4" class="input-checkbox"></div>
    <div class="gas-a-5"><input type="checkbox" id="gas_a_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.GAS_A_5" class="input-checkbox"></div>
    <div class="gas-a-6"><input type="checkbox" id="gas_a_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.GAS_A_6" class="input-checkbox"></div>
    <div class="gas-a-7"><input type="checkbox" id="gas_a_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.GAS_A_7" class="input-checkbox"></div>
    <div class="gas-a-8"><input type="checkbox" id="gas_a_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.GAS_A_8" class="input-checkbox"></div>
    <div class="gas-a-9"><input type="checkbox" id="gas_a_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.GAS_A_9" class="input-checkbox"></div>
    <div class="gas-a-10"><input type="checkbox" id="gas_a_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.GAS_A_10" class="input-checkbox"></div>
    <div class="gas-a-11"><input type="checkbox" id="gas_a_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.GAS_A_11" class="input-checkbox"></div>
    <div class="gas-a-12"><input type="checkbox" id="gas_a_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.GAS_A_12" class="input-checkbox"></div>
    <div class="gas-a-13"><input type="checkbox" id="gas_a_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.GAS_A_13" class="input-checkbox"></div>
    <div class="gas-a-14"><input type="checkbox" id="gas_a_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.GAS_A_14" class="input-checkbox"></div>
    <div class="gas-a-15"><input type="checkbox" id="gas_a_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.GAS_A_15" class="input-checkbox"></div>
    <div class="gas-a-16"><input type="checkbox" id="gas_a_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.GAS_A_16" class="input-checkbox"></div>
    <div class="gas-a-17"><input type="checkbox" id="gas_a_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.GAS_A_17" class="input-checkbox"></div>
    <div class="gas-a-18"><input type="checkbox" id="gas_a_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.GAS_A_18" class="input-checkbox"></div>
    <div class="gas-a-19"><input type="checkbox" id="gas_a_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.GAS_A_19" class="input-checkbox"></div>
    <div class="gas-a-20"><input type="checkbox" id="gas_a_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.GAS_A_20" class="input-checkbox"></div>
    <div class="gas-a-21"><input type="checkbox" id="gas_a_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.GAS_A_21" class="input-checkbox"></div>
    <div class="gas-a-22"><input type="checkbox" id="gas_a_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.GAS_A_22" class="input-checkbox"></div>
    <div class="gas-a-23"><input type="checkbox" id="gas_a_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.GAS_A_23" class="input-checkbox"></div>
    <div class="gas-a-24"><input type="checkbox" id="gas_a_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.GAS_A_24" class="input-checkbox"></div>
    <div class="gas-a-25"><input type="checkbox" id="gas_a_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.GAS_A_25" class="input-checkbox"></div>
    <div class="gas-a-26"><input type="checkbox" id="gas_a_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.GAS_A_26" class="input-checkbox"></div>
    <div class="gas-a-27"><input type="checkbox" id="gas_a_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.GAS_A_27" class="input-checkbox"></div>
    <div class="gas-a-28"><input type="checkbox" id="gas_a_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.GAS_A_28" class="input-checkbox"></div>
    <div class="gas-a-29"><input type="checkbox" id="gas_a_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.GAS_A_29" class="input-checkbox"></div>
    <div class="gas-a-30"><input type="checkbox" id="gas_a_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.GAS_A_30" class="input-checkbox"></div>
    <div class="gas-a-31"><input type="checkbox" id="gas_a_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.GAS_A_31" class="input-checkbox"></div>
    <div class="gas-a-32"><input type="checkbox" id="gas_a_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.GAS_A_32" class="input-checkbox"></div>
    <div class="gas-a-33"><input type="checkbox" id="gas_a_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.GAS_A_33" class="input-checkbox"></div>
    <div class="gas-a-34"><input type="checkbox" id="gas_a_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.GAS_A_34" class="input-checkbox"></div>
    <div class="gas-a-35"><input type="checkbox" id="gas_a_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.GAS_A_35" class="input-checkbox"></div>
    <div class="gas-a-36"><input type="checkbox" id="gas_a_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.GAS_A_36" class="input-checkbox"></div>
    <div class="gas-a-37"><input type="checkbox" id="gas_a_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.GAS_A_37" class="input-checkbox"></div>
    <div class="gas-a-38"><input type="checkbox" id="gas_a_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.GAS_A_38" class="input-checkbox"></div>
    <div class="gas-a-39"><input type="checkbox" id="gas_a_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.GAS_A_39" class="input-checkbox"></div>

    <div class="spare-0"><input type="checkbox" id="spare_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.SPARE_0" class="input-checkbox"></div>
    <div class="spare-1"><input type="checkbox" id="spare_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.SPARE_1" class="input-checkbox"></div>
    <div class="spare-2"><input type="checkbox" id="spare_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.SPARE_2" class="input-checkbox"></div>
    <div class="spare-3"><input type="checkbox" id="spare_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.SPARE_3" class="input-checkbox"></div>
    <div class="spare-4"><input type="checkbox" id="spare_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.SPARE_4" class="input-checkbox"></div>
    <div class="spare-5"><input type="checkbox" id="spare_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.SPARE_5" class="input-checkbox"></div>
    <div class="spare-6"><input type="checkbox" id="spare_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.SPARE_6" class="input-checkbox"></div>
    <div class="spare-7"><input type="checkbox" id="spare_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.SPARE_7" class="input-checkbox"></div>
    <div class="spare-8"><input type="checkbox" id="spare_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.SPARE_8" class="input-checkbox"></div>
    <div class="spare-9"><input type="checkbox" id="spare_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.SPARE_9" class="input-checkbox"></div>
    <div class="spare-10"><input type="checkbox" id="spare_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.SPARE_10" class="input-checkbox"></div>
    <div class="spare-11"><input type="checkbox" id="spare_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.SPARE_11" class="input-checkbox"></div>
    <div class="spare-12"><input type="checkbox" id="spare_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.SPARE_12" class="input-checkbox"></div>
    <div class="spare-13"><input type="checkbox" id="spare_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.SPARE_13" class="input-checkbox"></div>
    <div class="spare-14"><input type="checkbox" id="spare_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.SPARE_14" class="input-checkbox"></div>
    <div class="spare-15"><input type="checkbox" id="spare_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.SPARE_15" class="input-checkbox"></div>
    <div class="spare-16"><input type="checkbox" id="spare_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.SPARE_16" class="input-checkbox"></div>
    <div class="spare-17"><input type="checkbox" id="spare_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.SPARE_17" class="input-checkbox"></div>
    <div class="spare-18"><input type="checkbox" id="spare_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.SPARE_18" class="input-checkbox"></div>
    <div class="spare-19"><input type="checkbox" id="spare_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.SPARE_19" class="input-checkbox"></div>
    <div class="spare-20"><input type="checkbox" id="spare_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.SPARE_20" class="input-checkbox"></div>
    <div class="spare-21"><input type="checkbox" id="spare_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.SPARE_21" class="input-checkbox"></div>
    <div class="spare-22"><input type="checkbox" id="spare_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.SPARE_22" class="input-checkbox"></div>
    <div class="spare-23"><input type="checkbox" id="spare_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.SPARE_23" class="input-checkbox"></div>
    <div class="spare-24"><input type="checkbox" id="spare_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.SPARE_24" class="input-checkbox"></div>
    <div class="spare-25"><input type="checkbox" id="spare_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.SPARE_25" class="input-checkbox"></div>
    <div class="spare-26"><input type="checkbox" id="spare_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.SPARE_26" class="input-checkbox"></div>
    <div class="spare-27"><input type="checkbox" id="spare_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.SPARE_27" class="input-checkbox"></div>
    <div class="spare-28"><input type="checkbox" id="spare_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.SPARE_28" class="input-checkbox"></div>
    <div class="spare-29"><input type="checkbox" id="spare_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.SPARE_29" class="input-checkbox"></div>
    <div class="spare-30"><input type="checkbox" id="spare_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.SPARE_30" class="input-checkbox"></div>
    <div class="spare-31"><input type="checkbox" id="spare_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.SPARE_31" class="input-checkbox"></div>
    <div class="spare-32"><input type="checkbox" id="spare_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.SPARE_32" class="input-checkbox"></div>
    <div class="spare-33"><input type="checkbox" id="spare_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.SPARE_33" class="input-checkbox"></div>
    <div class="spare-34"><input type="checkbox" id="spare_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.SPARE_34" class="input-checkbox"></div>
    <div class="spare-35"><input type="checkbox" id="spare_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.SPARE_35" class="input-checkbox"></div>
    <div class="spare-36"><input type="checkbox" id="spare_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.SPARE_36" class="input-checkbox"></div>
    <div class="spare-37"><input type="checkbox" id="spare_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.SPARE_37" class="input-checkbox"></div>
    <div class="spare-38"><input type="checkbox" id="spare_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.SPARE_38" class="input-checkbox"></div>
    <div class="spare-39"><input type="checkbox" id="spare_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.SPARE_39" class="input-checkbox"></div>

    <div class="hydrulic-off-0"><input type="checkbox" id="hydrulic_off_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.HYDRULIC_OFF_0" class="input-checkbox"></div>
    <div class="hydrulic-off-1"><input type="checkbox" id="hydrulic_off_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.HYDRULIC_OFF_1" class="input-checkbox"></div>
    <div class="hydrulic-off-2"><input type="checkbox" id="hydrulic_off_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.HYDRULIC_OFF_2" class="input-checkbox"></div>
    <div class="hydrulic-off-3"><input type="checkbox" id="hydrulic_off_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.HYDRULIC_OFF_3" class="input-checkbox"></div>
    <div class="hydrulic-off-4"><input type="checkbox" id="hydrulic_off_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.HYDRULIC_OFF_4" class="input-checkbox"></div>
    <div class="hydrulic-off-5"><input type="checkbox" id="hydrulic_off_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.HYDRULIC_OFF_5" class="input-checkbox"></div>
    <div class="hydrulic-off-6"><input type="checkbox" id="hydrulic_off_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.HYDRULIC_OFF_6" class="input-checkbox"></div>
    <div class="hydrulic-off-7"><input type="checkbox" id="hydrulic_off_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.HYDRULIC_OFF_7" class="input-checkbox"></div>
    <div class="hydrulic-off-8"><input type="checkbox" id="hydrulic_off_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.HYDRULIC_OFF_8" class="input-checkbox"></div>
    <div class="hydrulic-off-9"><input type="checkbox" id="hydrulic_off_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.HYDRULIC_OFF_9" class="input-checkbox"></div>
    <div class="hydrulic-off-10"><input type="checkbox" id="hydrulic_off_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.HYDRULIC_OFF_10" class="input-checkbox"></div>
    <div class="hydrulic-off-11"><input type="checkbox" id="hydrulic_off_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.HYDRULIC_OFF_11" class="input-checkbox"></div>
    <div class="hydrulic-off-12"><input type="checkbox" id="hydrulic_off_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.HYDRULIC_OFF_12" class="input-checkbox"></div>
    <div class="hydrulic-off-13"><input type="checkbox" id="hydrulic_off_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.HYDRULIC_OFF_13" class="input-checkbox"></div>
    <div class="hydrulic-off-14"><input type="checkbox" id="hydrulic_off_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.HYDRULIC_OFF_14" class="input-checkbox"></div>
    <div class="hydrulic-off-15"><input type="checkbox" id="hydrulic_off_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.HYDRULIC_OFF_15" class="input-checkbox"></div>
    <div class="hydrulic-off-16"><input type="checkbox" id="hydrulic_off_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.HYDRULIC_OFF_16" class="input-checkbox"></div>
    <div class="hydrulic-off-17"><input type="checkbox" id="hydrulic_off_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.HYDRULIC_OFF_17" class="input-checkbox"></div>
    <div class="hydrulic-off-18"><input type="checkbox" id="hydrulic_off_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.HYDRULIC_OFF_18" class="input-checkbox"></div>
    <div class="hydrulic-off-19"><input type="checkbox" id="hydrulic_off_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.HYDRULIC_OFF_19" class="input-checkbox"></div>
    <div class="hydrulic-off-20"><input type="checkbox" id="hydrulic_off_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.HYDRULIC_OFF_20" class="input-checkbox"></div>
    <div class="hydrulic-off-21"><input type="checkbox" id="hydrulic_off_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.HYDRULIC_OFF_21" class="input-checkbox"></div>
    <div class="hydrulic-off-22"><input type="checkbox" id="hydrulic_off_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.HYDRULIC_OFF_22" class="input-checkbox"></div>
    <div class="hydrulic-off-23"><input type="checkbox" id="hydrulic_off_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.HYDRULIC_OFF_23" class="input-checkbox"></div>
    <div class="hydrulic-off-24"><input type="checkbox" id="hydrulic_off_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.HYDRULIC_OFF_24" class="input-checkbox"></div>
    <div class="hydrulic-off-25"><input type="checkbox" id="hydrulic_off_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.HYDRULIC_OFF_25" class="input-checkbox"></div>
    <div class="hydrulic-off-26"><input type="checkbox" id="hydrulic_off_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.HYDRULIC_OFF_26" class="input-checkbox"></div>
    <div class="hydrulic-off-27"><input type="checkbox" id="hydrulic_off_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.HYDRULIC_OFF_27" class="input-checkbox"></div>
    <div class="hydrulic-off-28"><input type="checkbox" id="hydrulic_off_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.HYDRULIC_OFF_28" class="input-checkbox"></div>
    <div class="hydrulic-off-29"><input type="checkbox" id="hydrulic_off_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.HYDRULIC_OFF_29" class="input-checkbox"></div>
    <div class="hydrulic-off-30"><input type="checkbox" id="hydrulic_off_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.HYDRULIC_OFF_30" class="input-checkbox"></div>
    <div class="hydrulic-off-31"><input type="checkbox" id="hydrulic_off_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.HYDRULIC_OFF_31" class="input-checkbox"></div>
    <div class="hydrulic-off-32"><input type="checkbox" id="hydrulic_off_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.HYDRULIC_OFF_32" class="input-checkbox"></div>
    <div class="hydrulic-off-33"><input type="checkbox" id="hydrulic_off_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.HYDRULIC_OFF_33" class="input-checkbox"></div>
    <div class="hydrulic-off-34"><input type="checkbox" id="hydrulic_off_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.HYDRULIC_OFF_34" class="input-checkbox"></div>
    <div class="hydrulic-off-35"><input type="checkbox" id="hydrulic_off_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.HYDRULIC_OFF_35" class="input-checkbox"></div>
    <div class="hydrulic-off-36"><input type="checkbox" id="hydrulic_off_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.HYDRULIC_OFF_36" class="input-checkbox"></div>
    <div class="hydrulic-off-37"><input type="checkbox" id="hydrulic_off_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.HYDRULIC_OFF_37" class="input-checkbox"></div>
    <div class="hydrulic-off-38"><input type="checkbox" id="hydrulic_off_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.HYDRULIC_OFF_38" class="input-checkbox"></div>
    <div class="hydrulic-off-39"><input type="checkbox" id="hydrulic_off_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.HYDRULIC_OFF_39" class="input-checkbox"></div>

    <div class="press-capacity-0"><input type="checkbox" id="press_capacity_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESS_CAPACITY_0" class="input-checkbox"></div>
    <div class="press-capacity-1"><input type="checkbox" id="press_capacity_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESS_CAPACITY_1" class="input-checkbox"></div>
    <div class="press-capacity-2"><input type="checkbox" id="press_capacity_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESS_CAPACITY_2" class="input-checkbox"></div>
    <div class="press-capacity-3"><input type="checkbox" id="press_capacity_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESS_CAPACITY_3" class="input-checkbox"></div>
    <div class="press-capacity-4"><input type="checkbox" id="press_capacity_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESS_CAPACITY_4" class="input-checkbox"></div>
    <div class="press-capacity-5"><input type="checkbox" id="press_capacity_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESS_CAPACITY_5" class="input-checkbox"></div>
    <div class="press-capacity-6"><input type="checkbox" id="press_capacity_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESS_CAPACITY_6" class="input-checkbox"></div>
    <div class="press-capacity-7"><input type="checkbox" id="press_capacity_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESS_CAPACITY_7" class="input-checkbox"></div>
    <div class="press-capacity-8"><input type="checkbox" id="press_capacity_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESS_CAPACITY_8" class="input-checkbox"></div>
    <div class="press-capacity-9"><input type="checkbox" id="press_capacity_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESS_CAPACITY_9" class="input-checkbox"></div>
    <div class="press-capacity-10"><input type="checkbox" id="press_capacity_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESS_CAPACITY_10" class="input-checkbox"></div>
    <div class="press-capacity-11"><input type="checkbox" id="press_capacity_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESS_CAPACITY_11" class="input-checkbox"></div>
    <div class="press-capacity-12"><input type="checkbox" id="press_capacity_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESS_CAPACITY_12" class="input-checkbox"></div>
    <div class="press-capacity-13"><input type="checkbox" id="press_capacity_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESS_CAPACITY_13" class="input-checkbox"></div>
    <div class="press-capacity-14"><input type="checkbox" id="press_capacity_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESS_CAPACITY_14" class="input-checkbox"></div>
    <div class="press-capacity-15"><input type="checkbox" id="press_capacity_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESS_CAPACITY_15" class="input-checkbox"></div>
    <div class="press-capacity-16"><input type="checkbox" id="press_capacity_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESS_CAPACITY_16" class="input-checkbox"></div>
    <div class="press-capacity-17"><input type="checkbox" id="press_capacity_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESS_CAPACITY_17" class="input-checkbox"></div>
    <div class="press-capacity-18"><input type="checkbox" id="press_capacity_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESS_CAPACITY_18" class="input-checkbox"></div>
    <div class="press-capacity-19"><input type="checkbox" id="press_capacity_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESS_CAPACITY_19" class="input-checkbox"></div>
    <div class="press-capacity-20"><input type="checkbox" id="press_capacity_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESS_CAPACITY_20" class="input-checkbox"></div>
    <div class="press-capacity-21"><input type="checkbox" id="press_capacity_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESS_CAPACITY_21" class="input-checkbox"></div>
    <div class="press-capacity-22"><input type="checkbox" id="press_capacity_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESS_CAPACITY_22" class="input-checkbox"></div>
    <div class="press-capacity-23"><input type="checkbox" id="press_capacity_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESS_CAPACITY_23" class="input-checkbox"></div>
    <div class="press-capacity-24"><input type="checkbox" id="press_capacity_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESS_CAPACITY_24" class="input-checkbox"></div>
    <div class="press-capacity-25"><input type="checkbox" id="press_capacity_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESS_CAPACITY_25" class="input-checkbox"></div>
    <div class="press-capacity-26"><input type="checkbox" id="press_capacity_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESS_CAPACITY_26" class="input-checkbox"></div>
    <div class="press-capacity-27"><input type="checkbox" id="press_capacity_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESS_CAPACITY_27" class="input-checkbox"></div>
    <div class="press-capacity-28"><input type="checkbox" id="press_capacity_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESS_CAPACITY_28" class="input-checkbox"></div>
    <div class="press-capacity-29"><input type="checkbox" id="press_capacity_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESS_CAPACITY_29" class="input-checkbox"></div>
    <div class="press-capacity-30"><input type="checkbox" id="press_capacity_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESS_CAPACITY_30" class="input-checkbox"></div>
    <div class="press-capacity-31"><input type="checkbox" id="press_capacity_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESS_CAPACITY_31" class="input-checkbox"></div>
    <div class="press-capacity-32"><input type="checkbox" id="press_capacity_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESS_CAPACITY_32" class="input-checkbox"></div>
    <div class="press-capacity-33"><input type="checkbox" id="press_capacity_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESS_CAPACITY_33" class="input-checkbox"></div>
    <div class="press-capacity-34"><input type="checkbox" id="press_capacity_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESS_CAPACITY_34" class="input-checkbox"></div>
    <div class="press-capacity-35"><input type="checkbox" id="press_capacity_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESS_CAPACITY_35" class="input-checkbox"></div>
    <div class="press-capacity-36"><input type="checkbox" id="press_capacity_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESS_CAPACITY_36" class="input-checkbox"></div>
    <div class="press-capacity-37"><input type="checkbox" id="press_capacity_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESS_CAPACITY_37" class="input-checkbox"></div>
    <div class="press-capacity-38"><input type="checkbox" id="press_capacity_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESS_CAPACITY_38" class="input-checkbox"></div>
    <div class="press-capacity-39"><input type="checkbox" id="press_capacity_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESS_CAPACITY_39" class="input-checkbox"></div>

    <div class="press-position-0"><input type="checkbox" id="press_position_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESS_POSITION_0" class="input-checkbox"></div>
    <div class="press-position-1"><input type="checkbox" id="press_position_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESS_POSITION_1" class="input-checkbox"></div>
    <div class="press-position-2"><input type="checkbox" id="press_position_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESS_POSITION_2" class="input-checkbox"></div>
    <div class="press-position-3"><input type="checkbox" id="press_position_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESS_POSITION_3" class="input-checkbox"></div>
    <div class="press-position-4"><input type="checkbox" id="press_position_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESS_POSITION_4" class="input-checkbox"></div>
    <div class="press-position-5"><input type="checkbox" id="press_position_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESS_POSITION_5" class="input-checkbox"></div>
    <div class="press-position-6"><input type="checkbox" id="press_position_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESS_POSITION_6" class="input-checkbox"></div>
    <div class="press-position-7"><input type="checkbox" id="press_position_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESS_POSITION_7" class="input-checkbox"></div>
    <div class="press-position-8"><input type="checkbox" id="press_position_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESS_POSITION_8" class="input-checkbox"></div>
    <div class="press-position-9"><input type="checkbox" id="press_position_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESS_POSITION_9" class="input-checkbox"></div>
    <div class="press-position-10"><input type="checkbox" id="press_position_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESS_POSITION_10" class="input-checkbox"></div>
    <div class="press-position-11"><input type="checkbox" id="press_position_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESS_POSITION_11" class="input-checkbox"></div>
    <div class="press-position-12"><input type="checkbox" id="press_position_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESS_POSITION_12" class="input-checkbox"></div>
    <div class="press-position-13"><input type="checkbox" id="press_position_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESS_POSITION_13" class="input-checkbox"></div>
    <div class="press-position-14"><input type="checkbox" id="press_position_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESS_POSITION_14" class="input-checkbox"></div>
    <div class="press-position-15"><input type="checkbox" id="press_position_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESS_POSITION_15" class="input-checkbox"></div>
    <div class="press-position-16"><input type="checkbox" id="press_position_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESS_POSITION_16" class="input-checkbox"></div>
    <div class="press-position-17"><input type="checkbox" id="press_position_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESS_POSITION_17" class="input-checkbox"></div>
    <div class="press-position-18"><input type="checkbox" id="press_position_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESS_POSITION_18" class="input-checkbox"></div>
    <div class="press-position-19"><input type="checkbox" id="press_position_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESS_POSITION_19" class="input-checkbox"></div>
    <div class="press-position-20"><input type="checkbox" id="press_position_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESS_POSITION_20" class="input-checkbox"></div>
    <div class="press-position-21"><input type="checkbox" id="press_position_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESS_POSITION_21" class="input-checkbox"></div>
    <div class="press-position-22"><input type="checkbox" id="press_position_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESS_POSITION_22" class="input-checkbox"></div>
    <div class="press-position-23"><input type="checkbox" id="press_position_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESS_POSITION_23" class="input-checkbox"></div>
    <div class="press-position-24"><input type="checkbox" id="press_position_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESS_POSITION_24" class="input-checkbox"></div>
    <div class="press-position-25"><input type="checkbox" id="press_position_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESS_POSITION_25" class="input-checkbox"></div>
    <div class="press-position-26"><input type="checkbox" id="press_position_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESS_POSITION_26" class="input-checkbox"></div>
    <div class="press-position-27"><input type="checkbox" id="press_position_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESS_POSITION_27" class="input-checkbox"></div>
    <div class="press-position-28"><input type="checkbox" id="press_position_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESS_POSITION_28" class="input-checkbox"></div>
    <div class="press-position-29"><input type="checkbox" id="press_position_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESS_POSITION_29" class="input-checkbox"></div>
    <div class="press-position-30"><input type="checkbox" id="press_position_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESS_POSITION_30" class="input-checkbox"></div>
    <div class="press-position-31"><input type="checkbox" id="press_position_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESS_POSITION_31" class="input-checkbox"></div>
    <div class="press-position-32"><input type="checkbox" id="press_position_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESS_POSITION_32" class="input-checkbox"></div>
    <div class="press-position-33"><input type="checkbox" id="press_position_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESS_POSITION_33" class="input-checkbox"></div>
    <div class="press-position-34"><input type="checkbox" id="press_position_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESS_POSITION_34" class="input-checkbox"></div>
    <div class="press-position-35"><input type="checkbox" id="press_position_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESS_POSITION_35" class="input-checkbox"></div>
    <div class="press-position-36"><input type="checkbox" id="press_position_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESS_POSITION_36" class="input-checkbox"></div>
    <div class="press-position-37"><input type="checkbox" id="press_position_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESS_POSITION_37" class="input-checkbox"></div>
    <div class="press-position-38"><input type="checkbox" id="press_position_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESS_POSITION_38" class="input-checkbox"></div>
    <div class="press-position-39"><input type="checkbox" id="press_position_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESS_POSITION_39" class="input-checkbox"></div>

    <div class="press-distance-0"><input type="checkbox" id="press_distance_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PRESS_DISTANCE_0" class="input-checkbox"></div>
    <div class="press-distance-1"><input type="checkbox" id="press_distance_1" name="DONGHWA.PLC.RECIPE.SEGMENT_1.PRESS_DISTANCE_1" class="input-checkbox"></div>
    <div class="press-distance-2"><input type="checkbox" id="press_distance_2" name="DONGHWA.PLC.RECIPE.SEGMENT_2.PRESS_DISTANCE_2" class="input-checkbox"></div>
    <div class="press-distance-3"><input type="checkbox" id="press_distance_3" name="DONGHWA.PLC.RECIPE.SEGMENT_3.PRESS_DISTANCE_3" class="input-checkbox"></div>
    <div class="press-distance-4"><input type="checkbox" id="press_distance_4" name="DONGHWA.PLC.RECIPE.SEGMENT_4.PRESS_DISTANCE_4" class="input-checkbox"></div>
    <div class="press-distance-5"><input type="checkbox" id="press_distance_5" name="DONGHWA.PLC.RECIPE.SEGMENT_5.PRESS_DISTANCE_5" class="input-checkbox"></div>
    <div class="press-distance-6"><input type="checkbox" id="press_distance_6" name="DONGHWA.PLC.RECIPE.SEGMENT_6.PRESS_DISTANCE_6" class="input-checkbox"></div>
    <div class="press-distance-7"><input type="checkbox" id="press_distance_7" name="DONGHWA.PLC.RECIPE.SEGMENT_7.PRESS_DISTANCE_7" class="input-checkbox"></div>
    <div class="press-distance-8"><input type="checkbox" id="press_distance_8" name="DONGHWA.PLC.RECIPE.SEGMENT_8.PRESS_DISTANCE_8" class="input-checkbox"></div>
    <div class="press-distance-9"><input type="checkbox" id="press_distance_9" name="DONGHWA.PLC.RECIPE.SEGMENT_9.PRESS_DISTANCE_9" class="input-checkbox"></div>
    <div class="press-distance-10"><input type="checkbox" id="press_distance_10" name="DONGHWA.PLC.RECIPE.SEGMENT_10.PRESS_DISTANCE_10" class="input-checkbox"></div>
    <div class="press-distance-11"><input type="checkbox" id="press_distance_11" name="DONGHWA.PLC.RECIPE.SEGMENT_11.PRESS_DISTANCE_11" class="input-checkbox"></div>
    <div class="press-distance-12"><input type="checkbox" id="press_distance_12" name="DONGHWA.PLC.RECIPE.SEGMENT_12.PRESS_DISTANCE_12" class="input-checkbox"></div>
    <div class="press-distance-13"><input type="checkbox" id="press_distance_13" name="DONGHWA.PLC.RECIPE.SEGMENT_13.PRESS_DISTANCE_13" class="input-checkbox"></div>
    <div class="press-distance-14"><input type="checkbox" id="press_distance_14" name="DONGHWA.PLC.RECIPE.SEGMENT_14.PRESS_DISTANCE_14" class="input-checkbox"></div>
    <div class="press-distance-15"><input type="checkbox" id="press_distance_15" name="DONGHWA.PLC.RECIPE.SEGMENT_15.PRESS_DISTANCE_15" class="input-checkbox"></div>
    <div class="press-distance-16"><input type="checkbox" id="press_distance_16" name="DONGHWA.PLC.RECIPE.SEGMENT_16.PRESS_DISTANCE_16" class="input-checkbox"></div>
    <div class="press-distance-17"><input type="checkbox" id="press_distance_17" name="DONGHWA.PLC.RECIPE.SEGMENT_17.PRESS_DISTANCE_17" class="input-checkbox"></div>
    <div class="press-distance-18"><input type="checkbox" id="press_distance_18" name="DONGHWA.PLC.RECIPE.SEGMENT_18.PRESS_DISTANCE_18" class="input-checkbox"></div>
    <div class="press-distance-19"><input type="checkbox" id="press_distance_19" name="DONGHWA.PLC.RECIPE.SEGMENT_19.PRESS_DISTANCE_19" class="input-checkbox"></div>
    <div class="press-distance-20"><input type="checkbox" id="press_distance_20" name="DONGHWA.PLC.RECIPE.SEGMENT_20.PRESS_DISTANCE_20" class="input-checkbox"></div>
    <div class="press-distance-21"><input type="checkbox" id="press_distance_21" name="DONGHWA.PLC.RECIPE.SEGMENT_21.PRESS_DISTANCE_21" class="input-checkbox"></div>
    <div class="press-distance-22"><input type="checkbox" id="press_distance_22" name="DONGHWA.PLC.RECIPE.SEGMENT_22.PRESS_DISTANCE_22" class="input-checkbox"></div>
    <div class="press-distance-23"><input type="checkbox" id="press_distance_23" name="DONGHWA.PLC.RECIPE.SEGMENT_23.PRESS_DISTANCE_23" class="input-checkbox"></div>
    <div class="press-distance-24"><input type="checkbox" id="press_distance_24" name="DONGHWA.PLC.RECIPE.SEGMENT_24.PRESS_DISTANCE_24" class="input-checkbox"></div>
    <div class="press-distance-25"><input type="checkbox" id="press_distance_25" name="DONGHWA.PLC.RECIPE.SEGMENT_25.PRESS_DISTANCE_25" class="input-checkbox"></div>
    <div class="press-distance-26"><input type="checkbox" id="press_distance_26" name="DONGHWA.PLC.RECIPE.SEGMENT_26.PRESS_DISTANCE_26" class="input-checkbox"></div>
    <div class="press-distance-27"><input type="checkbox" id="press_distance_27" name="DONGHWA.PLC.RECIPE.SEGMENT_27.PRESS_DISTANCE_27" class="input-checkbox"></div>
    <div class="press-distance-28"><input type="checkbox" id="press_distance_28" name="DONGHWA.PLC.RECIPE.SEGMENT_28.PRESS_DISTANCE_28" class="input-checkbox"></div>
    <div class="press-distance-29"><input type="checkbox" id="press_distance_29" name="DONGHWA.PLC.RECIPE.SEGMENT_29.PRESS_DISTANCE_29" class="input-checkbox"></div>
    <div class="press-distance-30"><input type="checkbox" id="press_distance_30" name="DONGHWA.PLC.RECIPE.SEGMENT_30.PRESS_DISTANCE_30" class="input-checkbox"></div>
    <div class="press-distance-31"><input type="checkbox" id="press_distance_31" name="DONGHWA.PLC.RECIPE.SEGMENT_31.PRESS_DISTANCE_31" class="input-checkbox"></div>
    <div class="press-distance-32"><input type="checkbox" id="press_distance_32" name="DONGHWA.PLC.RECIPE.SEGMENT_32.PRESS_DISTANCE_32" class="input-checkbox"></div>
    <div class="press-distance-33"><input type="checkbox" id="press_distance_33" name="DONGHWA.PLC.RECIPE.SEGMENT_33.PRESS_DISTANCE_33" class="input-checkbox"></div>
    <div class="press-distance-34"><input type="checkbox" id="press_distance_34" name="DONGHWA.PLC.RECIPE.SEGMENT_34.PRESS_DISTANCE_34" class="input-checkbox"></div>
    <div class="press-distance-35"><input type="checkbox" id="press_distance_35" name="DONGHWA.PLC.RECIPE.SEGMENT_35.PRESS_DISTANCE_35" class="input-checkbox"></div>
    <div class="press-distance-36"><input type="checkbox" id="press_distance_36" name="DONGHWA.PLC.RECIPE.SEGMENT_36.PRESS_DISTANCE_36" class="input-checkbox"></div>
    <div class="press-distance-37"><input type="checkbox" id="press_distance_37" name="DONGHWA.PLC.RECIPE.SEGMENT_37.PRESS_DISTANCE_37" class="input-checkbox"></div>
    <div class="press-distance-38"><input type="checkbox" id="press_distance_38" name="DONGHWA.PLC.RECIPE.SEGMENT_38.PRESS_DISTANCE_38" class="input-checkbox"></div>
    <div class="press-distance-39"><input type="checkbox" id="press_distance_39" name="DONGHWA.PLC.RECIPE.SEGMENT_39.PRESS_DISTANCE_39" class="input-checkbox"></div>
    <div class="frame-304">
      <div class="display-actual-row"><input type="checkbox" class="check-display-actual-row"></div>
      <div class="display-actual-row2">display actual row</div>
      <div class="edit">Edit</div>
      <div class="global-parameters"></div>
      <div class="global-parameters2">Global Parameters</div>
      <div class="save">Save</div>
      <button class="save-to-db">Save to Database</button>
      <div class="protocol">Protocol</div>
      <div class="graphical-process"></div>
      <div class="insert-segment"></div>
      <div class="save-to-csv"></div>
      <div class="delete-segment"></div>
      <button class="save-to-plc">Save to PLC</button>
      <div class="print"></div>
      <div class="back-to-recipe-overview">&lt;&lt; Back to recipe-overview</div>
      <div class="save-to-csv-file">Save to csv-file</div>
      <div class="print2">print</div>
      <div class="graphical-process2">Graphical Process</div>
      <div class="insert-segment2">Insert Segment</div>
      <div class="delete-segment2">Delete Segment</div>
      
    </div>
    <div class="_0-program-end">0 - Program end</div>
    <div class="_3-cooling-vacuum">3 - Cooling vacuum</div>
    <div class="_1-heating-vacuum">1 - Heating vacuum</div>
    <div class="_2-heating-gas-stationary">2 - Heating gas stationary</div>
    <div class="_4-cooling-gas-stationary">4 - Cooling gas stationary</div>
    <div class="process-step2">Process step</div>
  </div>
  
</body>
</div>



<script>
  function validateNumberInput(event) {
      const input = event.target;
      input.value = input.value.replace(/[^0-9]/g, '');
  }
</script>

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


  $(document).ready(function() {
            // 버튼 클릭 이벤트 핸들러 설정
            $('.save-to-plc').click(function() {
                const data = [];

                // 모든 입력 필드를 순회하며 데이터 배열에 추가
                $('.input-text').each(function() {
                    const inputField = $(this);
                    const value = inputField.val(); // 입력된 값
                    const nodeId = inputField.attr('name'); // name 속성 값

                    data.push({
                        nodeId: nodeId,
                        value: value
                    });
                });

                // 모든 체크박스를 순회하며 데이터 배열에 추가
                $('.input-checkbox').each(function() {
                    const inputField = $(this);
                    const value = inputField.is(':checked') ? 1 : 0; // 체크 상태 확인
                    const nodeId = inputField.attr('name'); // name 속성 값

                    data.push({
                        nodeId: nodeId,
                        value: value
                    });
                });

                // AJAX 요청을 통해 데이터 전송
                sendAjax(data);
            });
        });

        function sendAjax(data) {
            $.ajax({
                url: "/donghwa/write",
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8", // JSON 데이터를 전송할 경우 필요
                data: JSON.stringify(data), // 데이터를 JSON 문자열로 변환하여 전송
                success: function(response) {
                    console.log('서버 응답:', response);
                },
                error: function(xhr, status, error) {
                    console.error('AJAX 에러:', status, error);
                }
            });
        }
</script>

</html>
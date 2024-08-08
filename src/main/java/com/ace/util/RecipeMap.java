package com.ace.util;

import java.util.HashMap;
import java.util.Map;

public class RecipeMap {
	
	Map<String, String> rMap = new HashMap<String, String>();
	
	public RecipeMap() {
		rMapSet();
	}
	
	public String rMapRtn(String key) {
		String value = "";
		value = rMap.get(key);		
		
		return value;
	}
	
	public void rMapSet() {
		rMap.put("recipe.getProcess_step_0()","DONGHWA.PLC.RECIPE.SEGMENT_0.PROCESS_STEP_0");
		rMap.put("recipe.getTime_0()","DONGHWA.PLC.RECIPE.SEGMENT_0.TIME_0");
		rMap.put("recipe.getTemperature_0()","DONGHWA.PLC.RECIPE.SEGMENT_0.TEMPERATURE_0");
		
		rMap.put("recipe.getProcess_step_1()","DONGHWA.PLC.RECIPE.SEGMENT_1.PROCESS_STEP_1");
		rMap.put("recipe.getTime_1()","DONGHWA.PLC.RECIPE.SEGMENT_1.TIME_1");
		rMap.put("recipe.getTemperature_1()","DONGHWA.PLC.RECIPE.SEGMENT_1.TEMPERATURE_1");
		
		rMap.put("recipe.getProcess_step_2()","DONGHWA.PLC.RECIPE.SEGMENT_2.PROCESS_STEP_2");
		rMap.put("recipe.getTime_2()","DONGHWA.PLC.RECIPE.SEGMENT_2.TIME_2");
		rMap.put("recipe.getTemperature_2()","DONGHWA.PLC.RECIPE.SEGMENT_2.TEMPERATURE_2");
		
	}
	
}

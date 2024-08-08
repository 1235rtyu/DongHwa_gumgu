package com.ace.async;

import org.springframework.scheduling.annotation.Scheduled;

public class CheckProcessor {
	
	private int b_cnt = 0;	
	private int b_val = 0;
	public static boolean b_alarm = true;
	
	int i = 0;
	
	@Scheduled(fixedRate = 5000)
	public void handle() {

		if(i > 60) {
			i = 0;
		}
		
		i++;
		
		if(i % 5 == 0) {
			if(MainProcessor.back_srv == b_val) {
				//백업서버가 중단된 상태
				b_cnt++;
			}else{
				//백업서버 정상
				b_cnt = 0;
			}
		}else {
			b_val = MainProcessor.back_srv;
		}
		
		if(b_cnt > 2) {
			b_alarm = true;
//			System.out.println("백업문제 : "+b_alarm);
		}else {
			b_alarm = false;
		}
//		System.out.println("true : 문제/ false : 정상 = "+b_alarm);
		
	}
}



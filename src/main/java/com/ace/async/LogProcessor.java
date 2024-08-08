package com.ace.async;

import java.util.concurrent.ExecutionException;

import org.eclipse.milo.opcua.stack.core.UaException;
import org.springframework.scheduling.annotation.Scheduled;

import com.ace.controller.HomeController;

public class LogProcessor {
	
	
	@Scheduled(fixedRate = 1000)
	public void handle() throws UaException, InterruptedException, ExecutionException {
		
//		System.out.println("통신");
		if(HomeController.client == null) {
			HomeController.opcStart();
//			System.out.println("통신성공");
		}

	}
}

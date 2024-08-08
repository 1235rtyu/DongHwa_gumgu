package com.ace.async;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

import org.springframework.scheduling.annotation.Scheduled;

public class MainProcessor {
	
//	public static int main_srv = 0;
	public static int back_srv = 0;
	
	final static int port = 5004;			//서버
	final static String message = "접속완료";	//접속 메시지
	
	ServerSocket serverSocket = null;
	Socket socket = null;
	
	@Scheduled(fixedRate = 5000)
	public void handle() {
//		System.out.println("시작");

		
		try {
			if(serverSocket == null) {
				//메인서버의 소켓
				serverSocket = new ServerSocket(port);
			}
		}catch(IOException e) {
//			System.out.println("메인서버소켓 생성 실패");
		}
			
		try {
//			System.out.println("서버 대기");
//			System.out.println("백업 값 : "+back_srv);
			
			
			//백업서버의 소켓
			socket = serverSocket.accept();
			if(back_srv == 0) {
				back_srv = 1;
			}else {
				back_srv = 0;
			}
			
		}catch(IOException e) {
//			System.out.println("백업서버소켓 연결 끊김");
		}
		
		try {
//			System.out.println("통신 성공 : "+socket.getInetAddress());			
				
				
			//서버에서 보낸 값을 받기 위한 통로
			InputStream is = socket.getInputStream();
			//서버에서 client로 보내기 위한 통로
			OutputStream os = socket.getOutputStream();
			
			byte[] data = new byte[16];
			int n = is.read(data);
			String messsageFromClient = new String(data,0,n);
			
//			System.out.println("메세지 : "+messsageFromClient);
			
			os.write(message.getBytes());
			os.flush();
			
			is.close();
			os.close();
			
//			System.out.println("통신 종료");				
			
/*
			if(main_srv == 0) {
				main_srv = 1;
			}else {
				main_srv = 0;
			}
*/			
			
//			serverSocket.close();
			socket.close();
			
			
			
		}catch(IOException ee) {
			//백업서버 다운시 여기서 작성
//			System.out.println("메인-백업서버 데이터 송수신 실패");
		}
	}
}



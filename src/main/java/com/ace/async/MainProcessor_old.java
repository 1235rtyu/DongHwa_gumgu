package com.ace.async;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

import org.springframework.scheduling.annotation.Scheduled;

public class MainProcessor_old {
	
	public static boolean back_state = false;
	
	final static int port = 5004;			//서버
	final static String message = "접속완료";	//접속 메시지
	
	ServerSocket serverSocket = null;
	Socket socket = null;
	
	@Scheduled(fixedRate = 3000)
	public void handle() {
		
		try {
			//메인서버의 소켓
			serverSocket = new ServerSocket(port);
			
			try {
				//백업서버의 소켓
				socket = serverSocket.accept();
				back_state = true;

				System.out.println("백업서버소켓 연결됨"+back_state);
			}catch(IOException e) {
				//백업서버 다운시 여기서 작성
				back_state = false;
				System.out.println("백업서버소켓 연결 끊김"+back_state);
			}
			
			try {
				System.out.println("통신 성공 : "+socket.getInetAddress());			
					
				//서버에서 보낸 값을 받기 위한 통로
				InputStream is = socket.getInputStream();
				//서버에서 client로 보내기 위한 통로
				OutputStream os = socket.getOutputStream();
				
				byte[] data = new byte[16];
				int n = is.read(data);
				String messsageFromClient = new String(data,0,n);
				
				System.out.println("메세지 : "+messsageFromClient);
				
				os.write(message.getBytes());
				os.flush();
				
				is.close();
				os.close();
				
				System.out.println("통신정상종료");				

				
				serverSocket.close();
				socket.close();
				
			}catch(IOException ee) {

//				ee.printStackTrace();
				System.out.println("메인-백업서버 데이터 송수신 실패");
			}
			
		}catch(IOException e) {
			System.out.println("메인-백업 불량");
//			e.printStackTrace();
		}
	}
}



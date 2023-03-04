package kr.or.ddit.commons;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class MailSendService {
	@Autowired
	private JavaMailSenderImpl mailSender;
	private int authNumber;

	//난수 발생
	public void makeRandomNumber() {
		// 난수의 범위 111111 ~ 999999 (6자리 난수)
		Random r = new Random();
		int checkNum = r.nextInt(888888) + 111111;
		System.out.println("인증번호 : " + checkNum);
		authNumber = checkNum;
	}


	//인증번호 이메일 보낼 양식!
	public String joinEmail(String email) throws UnsupportedEncodingException {
		makeRandomNumber();
		String setFrom = "hjpark9833@gmail.com"; // email-config에 설정한 자신의 이메일 주소를 입력
		String toMail = email;
		String title = "[INU] 이메일 인증번호가 도착하였습니다."; // 이메일 제목
		String content =
				"이메일 인증을 완료하려면<br>아래의 인증번호를 입력해주세요." + 	//html 형식으로 작성 !
                "<br><br>" +
			    "인증 번호는 <strong>" + authNumber + "</strong> 입니다.";
		mailSend(setFrom, toMail, title, content);
		return Integer.toString(authNumber);
	}
	
	//승인 시 보낼 이메일
	public String acceptEmail(String email) throws UnsupportedEncodingException{
		String setFrom = "hjpark9833@gmail.com";
		String toMail = email;
		String title = "[INU] 신청이 승인되었습니다.";
		String content =
			    "안녕하세요 INU입니다. 고객님의 신청이 승인되었습니다. " + 
			    "저희 INU를 사용해 주셔서 감사합니다.";
				
		mailSend(setFrom, toMail, title, content);
		return "/";
	}
	//반려 시 보낼 이메일
	public String returnEmail(String email) throws UnsupportedEncodingException{
		String setFrom = "hjpark9833@gmail.com";
		String toMail = email;
		String title = "[INU] 신청이 승인되지 않았습니다.";
		String content =
				"안녕하세요 INU입니다. 고객님의 신청이 요구사항에 부적합하여 승인이 되지 않았습니다. " + 
						"다시 확인하여 신청해 주세요.";
		
		mailSend(setFrom, toMail, title, content);
		return "/";
	}
	

	//이메일 전송 메소드
	public void mailSend(String setFrom, String toMail, String title, String content) throws UnsupportedEncodingException {
		MimeMessage message = mailSender.createMimeMessage();
		// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자  인코딩 설정도 가능하다.
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom(new InternetAddress(setFrom,"INU"));
			helper.setTo(toMail);
			helper.setSubject(title);
			// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
			helper.setText(content,true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}

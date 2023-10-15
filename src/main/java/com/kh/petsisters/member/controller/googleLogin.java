package com.kh.petsisters.member.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.kh.petsisters.member.model.vo.GoogleRequest;
import com.kh.petsisters.member.model.vo.GoogleResponse;

/**
 * 2023-07-07
 * 조승호 구글연동 로그인 컨트롤러
 * @author dkarl
 *
 */
@RestController
@CrossOrigin("*")
public class googleLogin {

	@Value("678132708734-vap1qk9p3ivf91odc7pgpn5f3oho6uj9.apps.googleusercontent.com")
	private String googleClientId;
	@Value("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")
	private String googleClientPwd;
	
	
	
	/**
	 * 기본 요청용 컨트롤러
	 * @return
	 */
	/*
	@RequestMapping(value="/api/v1/oauth2/google", method=RequestMethod.POST)
	public String loginUrlGoogle() {
		
		String reqUrl = "https://accounts.google.com/o/oauth2/v2/auth?client_id=" + googleClientId
						+ "&redirect_uri=http://localhost:8282/api/v1/oauth2/google&response_type=code&scope=email%20profile%20openid&access_type=offline";
		
		return reqUrl;
	}
	
	
	
	@RequestMapping(value="/api/v1/oauth2/google", method=RequestMethod.POST)
	public String loginGoogle(@RequestParam(value="code") String authCode) {
		
		RestTemplate restTemplate = new RestTemplate();
		
		GoogleRequest googleOauthRequestParam = GoogleRequest
				.builder()
				.clientId(googleClientId)
				.clientSecret(googleClientPwd)
				.code(authCode)
				.redirectUrl("http://localhost:8282/api/v1/oauth2/google")
				.grantType("authorization_code").build();
		
		ResponseEntity<GoogleResponse> resultEntity = 
				restTemplate.postForEntity("https://oauth2.googleapis.com/token",
						googleOAuthRequestParam, GoogleResponse.class);
		
		
		
	}
	*/
	
	
	
}

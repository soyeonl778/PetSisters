package com.kh.petsisters.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 2023-07-07
 * 조승호 
 * @author dkarl
 *
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class GoogleRequest {

	private String clientId;				// 애플리케이션의 클리이언트 ID
	private String redirectUrl;				// Google 로그인 후 redirect 주소
	private String clientSecret;			// 클라이언트 보안 파일
	private String responstType;			// Google OAuth2.0 엔드포인트 인증 코드 반환여부
	private String scope;					// OAuth 동의 범위
	private String code;					// url 코드
	private String accessType;				// 브라우저에 사용자가 없을 경우 엑세스 토큰 새로고침 가능 여부
	private String grantType;				// 권한 
	private String state;					// 상태
	private String includeGrantedScope;		// 애플리케이션이 컨텍스트에서 추가 범위에 대한 엑세스를 요청하기 위해 추가 권한 부여 사용
	private String loginHint;				// 애플리케이션이 인증하려는 사용자를 알고 있는 경우 이 매개변수를 사용하여 Google 인증 서버에 힌트 제공
	private String prompt;					// default : 처음으로 엑세스를 요청할 때만 사용자에게 메세지가 표시
	
	
}

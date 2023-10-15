package com.kh.petsisters.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 2023-07-07
 * 조승호
 * @author dkarl
 *
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GoogleInfResponse {

	private String iss;
	private String azp;
	private String aud;
	private String sub;
	private String email;
	private String email_verified;
	private String at_hash;
	private String name;
	private String pic;
	private String given_name;
	private String family_name;
	private String locale;
	private String iat;
	private String exp;
	private String alg;
	private String kid;
	private String typ;
	
}

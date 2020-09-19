package com.kh.zootopia.service;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;



public class PayService {
	
	
	// 페이 요청 기능
//	@Service
//	public class KakaoServiceImpl implements KakaoPayService{
//		public static final String CID = "TC0ONETIME";
//		@Override
//		public KakaoPayResultVO prepare(KakaoPayStartVO startVO) throws URISyntaxException {
//
//			RestTemplate template = new RestTemplate();
//			
//			// 2. Header 생성
//			
//			HttpHeaders headers = new HttpHeaders();// {APP_ADMIN_KEY}
//			headers.add("Authorization", "KakaoAK 3fc02fd9e68f04a9f245fda816d4d21d");
//			headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//			
//			// 3. body 생성
//			
//			MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
//			body.add("cid", CID);
//			body.add("partner_order_id", startVO.getPartner_order_id()); //String
//			body.add("partner_user_id", startVO.getPartner_user_id()); //String
//			body.add("item_name",  startVO.getItem_name()); //String
//			body.add("quantity",String.valueOf(startVO.getQuantity())); // int
//			body.add("total_amount", String.valueOf(startVO.getTotal_amount())); // int
//			body.add("tax_free_amount", "0"); 
//			// 주의: 주소는 반드시 API 에서 승인된 URL을 사용해야 한다 
//			body.add("approval_url", "http://localhost:8080/spring26/pay/success");
//			body.add("cancel_url", "http://localhost:8080/spring26/pay/cancel");
//			body.add("fail_url", "http://localhost:8080/spring26/pay/fail");
//
//			
//			//4. Header 와 Body를 합성
//			HttpEntity<MultiValueMap<String, String>> entity = 
//					new HttpEntity<>(body,headers);
//			
//			// 5. 주소 정의
//			
//			URI uri = new URI("https://kapi.kakao.com/v1/payment/ready");
//			
//			// 6. 모든 준비가 완료 되었으므로 template을 이용하여 요청을 전송
////			template.postForLocation(uri, entity);
//			KakaoPayResultVO resultVO = 
//					template.postForObject(uri, entity, KakaoPayResultVO.class);
//			
//			return resultVO;
//		}
//		
		

}

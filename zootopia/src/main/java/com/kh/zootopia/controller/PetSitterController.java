package com.kh.zootopia.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.session.SqlSession;
import org.aspectj.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetFileDto;
import com.kh.zootopia.entity.PetSitterDto;

import com.kh.zootopia.repository.PetSitterDao;
import com.kh.zootopia.service.SitterPhotoService;

@Controller
@RequestMapping("/petsitter")
public class PetSitterController {

	@Autowired
	private PetSitterDao petSitterDao;
	@Autowired
	private SitterPhotoService sitterPhotoService;
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping("/petsitter_join")
	public String petsitter_join(
//		@RequestParam String member_id,
			HttpSession session,
			Model model
			){
		
//		MemberDto userinfo= (MemberDto)session.getAttribute("userinfo");
//		model.addAttribute("userinfo", userinfo);
//		String member_id =userinfo.getMember_id();
		
		// 해당 아이디가 펫시터 등록을 했으면 안넘어가기 
		// 등록을 안했으면 등록할 수 있게
		 
		return "petsitter/petsitter_join";
	}
	
	@PostMapping("/petsitter_join")
	public String petsitter_join(
			HttpSession session,
			@ModelAttribute PetSitterDto petSitterDto,
			@ModelAttribute PetFileDto petFileDto,
			@RequestParam MultipartFile photo
			
			) throws Exception {
		
		int result = petSitterDao.getNick(petSitterDto.getPetsitter_nick());
		
		MemberDto userinfo= (MemberDto)session.getAttribute("userinfo");
		
		// 멤버 아이디가 중복 일 때 
		
		// 펫시터 지원 불가 
		int countId = sqlSession.selectOne("petsitter.getId", userinfo.getMember_id());
		
		if(result==0&&countId==0) { // 닉네임이 중복이 아닐때
			
			if(photo.getSize()!=0) {// 아이디가 중복아니고 사진이 들어있을 때
				
			petSitterDto.setMember_id(userinfo.getMember_id());	
			 petSitterDao.photo(petFileDto, photo, petSitterDto);
			
			 
//			 // 멤버 
//			 int no =sqlSession.selectOne("petsitter.getNo" , userinfo.getMember_id()); // 펫시터 번호
//			 PetSitterDto list = petSitterDao.getSitterList(no);
			 
//			session.setAttribute("sitterinfo", list);
			}
		
			return  "redirect:petsitter_result";
		
		}else { //중복일때
			
			return "redirect:petsitter_join?error";
		}

		
	}
	
	@GetMapping("/petsitter_result")
	public String petsitter_result() {
		
		return "petsitter/petsitter_result";
	}
	
	
	@PostMapping("/getnick")
	@ResponseBody
	public int getNick(String  petsitter_nick) throws Exception {
		int result = petSitterDao.getNick(petsitter_nick);
		return result ;
	}
	
	// 이미지 다운로드
	@GetMapping("/img/{petsitter_no}")
	public ResponseEntity<ByteArrayResource> img(
			@PathVariable int petsitter_no
			) throws IOException{
		
		PetFileDto petFileDto = petSitterDao.getimg(petsitter_no);
		
//		if(petFileDto == null) {
//			return ResponseEntity.notFound().build();
//		}else {
//			File target = new File("D:/upload",petFileDto.getPet_file_name());
//			byte[] data = FileUtils.readFileToByteArray(target);
//			ByteArrayResource res = new ByteArrayResource(data);
//			
//			return ResponseEntity .ok().contentType(MediaType.APPLICATION_OCTET_STREAM)
//					.contentLength(petFileDto.getPet_file_size())
//					.header(HttpHeaders.CONTENT_DISPOSITION	,"attachment; filename=\""+URLEncoder.encode(petFileDto.getPet_file_name(), "UTF-8")+"\"" )
//					.header(HttpHeaders.CONTENT_ENCODING, "UTF-8")
//					.body(res);
//		}
		return sitterPhotoService.getImg(petFileDto);
		
	}
	
	
//	@GetMapping("/sitter_detail")
//	public String sitter_detail() {
//		
//		
//		return "/member/reservation/sitter_detail";
//	}
	
	
	@GetMapping("/sitter_detail/{petsitter_no}")
	
	public String sitter_detail(
			@RequestParam String day,
			@RequestParam String start,
			@RequestParam String finish,
			@PathVariable int petsitter_no,
			@ModelAttribute PetSitterDto petSitterDto,
			HttpSession session,
			Model model1
			) {
		
		MemberDto member_id =(MemberDto)session.getAttribute("userinfo");
		Map<String, Object> map = new HashMap<>();
		map.put("res_day", day);
		map.put("res_start", start);
		map.put("res_finish", finish);
		map.put("petsitter_no", petsitter_no);
		map.put("member_id", member_id.getMember_id());
		
		sqlSession.insert("petsitter.get_pre", map);
		
		//day=${map.reservation_day}&start=${map.available_start_time}&finish=${map.available_finish_time}
		
		PetSitterDto info =petSitterDao.getSitterList(petsitter_no);
		model1.addAttribute("sitterDetail", info);
		return "/member/reservation/sitter_detail";
	}
	
	@GetMapping("/list")
	public String list(
			HttpSession session,
			Model model ) {

		// 1. 세션에서 아이디를 꺼낸다 
		MemberDto member_id =(MemberDto)session.getAttribute("userinfo");
//		System.out.println(member_id);
		//2. 꺼낸 아이디로 펫시터 정보 조회 
		PetSitterDto info = sqlSession.selectOne("petsitter.getOneList", member_id.getMember_id());
		if(info !=null) {
			model.addAttribute("list", info);
			return "petsitter/apply_list"; 
		}else {
			return"home";
		}

//		System.out.println(info);
		// 2번에서 나온걸 모델로 보낸다 
		
		

	}
	
	
//	@PostMapping("/list")
//	public String list( 
//			HttpSession session,
//			Model model) {
//	
//		
//		
//		
//		return "petsitter/apply_list"; 
//	}
//	

	// 펫시터 지원 취소 
	@GetMapping("/cancel_sitter")
	public String cancelPetsitter(
			
			HttpSession session
			){
		// 멤버 아이디로 펫시터 번호 뽑고 
		// 펫시터 번호로 지원 내용 삭제
		
		MemberDto userinfo= (MemberDto)session.getAttribute("userinfo");
		PetSitterDto info = sqlSession.selectOne("petsitter.getOneList", userinfo.getMember_id());
		if(info ==null) {// 펫시터 정보가 없으면 
		
			return "home";
		}else {
			petSitterDao.CancelSitter(userinfo.getMember_id());
			return "petsitter/cancel";
		}

	}
	
	




}

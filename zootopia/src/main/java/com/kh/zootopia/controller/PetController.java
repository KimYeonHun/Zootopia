package com.kh.zootopia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PETFDTO;
import com.kh.zootopia.entity.PetDto;
import com.kh.zootopia.entity.PetFileDto;
import com.kh.zootopia.repository.PetDao;

@Controller
@RequestMapping("/pet")
public class PetController {

	@Autowired 
	private PetDao petDao;


	@Autowired 
	private SqlSession sqlSession;

	@GetMapping("/petinfo")
	public String petinfo(Model model , HttpSession session) {
		return "pet/petinfo";
	}

	@PostMapping("/petinfo")
	public String petinfo(@RequestParam String member_id,@ModelAttribute PetDto petDto, HttpSession session) {
		MemberDto member = (MemberDto) session.getAttribute("userinfo"); // 로그인한 정보 userinfo를 MemberDto에 담는다.
		petDto.setMember_id(member.getMember_id());
		petDao.insert(petDto );
		System.out.println("111111111111111111111111");
		System.out.println(member_id);
		return "redirect:list";
	}

   //////////////////////////////////////////////////////////
////@PostMapping("/petinfo")
//public String petinfo(@ModelAttribute PetDto petDto,@RequestParam MultipartFile FILEPET) {
//   petDao.insert(petDto);
////   petDao.insert(pfDto);
//   PETFDTO pfDto = new PETFDTO();
//   pfDto.setPetf_name(FILEPET.getOriginalFilename()); 
//   pfDto.setPetf_size(FILEPET.getSize());
//   pfDto.setPetf_type(FILEPET.getContentType());
//   return "redirect:list";
//}
/////////////////////////////////////////////////////////////
@GetMapping("/list")
public String list( Model model,HttpSession session
		 
	){
	MemberDto member = (MemberDto) session.getAttribute("userinfo"); // 로그인한 정보 userinfo를 MemberDto에 담는다.
	
	System.out.println("----------------------------");
	System.out.println(member.toString());
	
	String member_id = member.getMember_id();
	List<PetDto> list = sqlSession.selectList("pet.getList",member_id);
	model.addAttribute("list", list);
	
	
return "pet/listeesewrdedwwer";

	
	}

	@GetMapping("/detail/{pet_no}")
	public String detail(@PathVariable int pet_no, Model model) {
		PetDto petDto = petDao.get(pet_no);
		model.addAttribute("petDto", petDto);
		return "pet/detail";

	}

	
	
	@GetMapping("/edit")
	public String edit(Model model,@RequestParam int pet_no) {
		PetDto petDto = petDao.get(pet_no);
		model.addAttribute("petDto",petDto);
		return "pet/edit";
	}

	@PostMapping("/edit")
	public String edit(@ModelAttribute PetDto petDto) {
		
		petDao.edit(petDto);
		
		return "redirect:list";
	}
	

   @GetMapping("/delete/{pet_no}")
public String delete(@PathVariable int pet_no){
	   petDao.delete(pet_no);
	   return "redirect:/pet/list";
   }

}
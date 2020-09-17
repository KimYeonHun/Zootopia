package com.kh.zootopia.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.zootopia.entity.PetDto;
import com.kh.zootopia.service.PetService;

@Controller
@RequestMapping("/member")
public class PetController {

	@Autowired
	private PetService service;
	
	@RequestMapping("/pet")
	public String petList(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
		 return "member/pet";
    }
	 @RequestMapping(value = "/petBoardList")
	    @ResponseBody
	    public List<PetDto> petList(HttpServletRequest request, HttpServletResponse response, BoardForm boardForm) throws Exception {
	 
	        List<PetDto> petDtoList = petService.getPetList(petForm);
	 
	        return petDtoList;
	    }
	    
	    /** 게시판 - 상세 페이지 이동 */
	    @RequestMapping( value = "/petDetail")
	    public String petDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
	        
	        return "member/petDetail";
	    }    
	    
	    /** 게시판 - 상세 조회  */
	    @RequestMapping(value = "/getPetDetail")
	    @ResponseBody
	    public PetDto getBoardDetail(HttpServletRequest request, HttpServletResponse response, PetForm boardForm) throws Exception {
	 
	    	PetDto petDto = petService.getBoardDetail(boardForm);
	 
	        return petDto;
	    }
	    
	    /** 게시판 - 작성 페이지 이동 */
	    @RequestMapping( value = "/petWrite")
	    public String petWrite(HttpServletRequest request, HttpServletResponse response) throws Exception{
	        
	        return "member/petWrite";
	    }
	    
	    /** 게시판 - 등록 */
	    @RequestMapping( value = "/insertPet")
	    @ResponseBody
	    public PetDto insertBoard(HttpServletRequest request, HttpServletResponse response, PetForm petForm) throws Exception{
	        
	        PetDto petDto = petService.insertPet(petForm);
	        
	        return petDto;
	    }
	    
	    /** 게시판 - 삭제 */
	    @RequestMapping( value = "/deleteBoard")
	    @ResponseBody
	    public PetDto deleteBoard(HttpServletRequest request, HttpServletResponse response, PetForm petForm) throws Exception{
	        
	    	PetDto petDto = petService.deleteBoard(petForm);
	        
	        return petDto;
	    }
	    
	    /** 게시판 - 수정 페이지 이동 */
	    @RequestMapping( value = "/petUpdate")
	    public String petUpdate(HttpServletRequest request, HttpServletResponse response) throws Exception{
	        
	        return "member/petUpdate";
	    }
	    
	    /** 게시판 - 수정 */
	    @RequestMapping( value = "/updatePet")
	    @ResponseBody
	    public PetDto updatePet(HttpServletRequest request, HttpServletResponse response, PetForm boardForm) throws Exception{
	        
	    	PetDto petDto = petService.updatePet(petForm);
	        
	        return petDto;
	    }
	}



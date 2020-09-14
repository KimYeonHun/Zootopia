package com.kh.zootopia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetDto;
import com.kh.zootopia.repository.PetServiceImpl;
import com.kh.zootopia.repository.petService;

@Controller
@RequestMapping("/member")
public class petController {
	
	@Autowired
	private petService petServiceImpl;

	 /**
     * pet 등록
     
     */
    @PostMapping("pet")
    public String write(@ModelAttribute("PetDto") PetDto PetDto, Model model) throws Exception{
    
        
        petServiceImpl.insertPet(PetDto);
        
        return "redirect:/member/pet";
    }

    /**
     * pet 수정
     */
    @PostMapping("pet")
    public String updatePet(@ModelAttribute("PetDto") PetDto PetDto, Model model) throws Exception{
        
        try{
            
           petServiceImpl.updatePet(PetDto);
            
        } catch (Exception e){
            e.printStackTrace();
        }        
        
        return "redirect:/member/pet";
        
    }
}

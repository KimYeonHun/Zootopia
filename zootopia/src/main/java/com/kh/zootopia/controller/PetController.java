package com.kh.zootopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.zootopia.entity.PetDto;
import com.kh.zootopia.repository.PetDao;

@Controller
@RequestMapping("/pet")
public class PetController {

   
   @Autowired 
   private PetDao petDao;


   @GetMapping("/petinfo")
   public String petinfo() {
      return "pet/petinfo";
   }
@PostMapping("/petinfo")
public String petinfo(@ModelAttribute PetDto petDto) {
   petDao.insert(petDto);
   return "redirect:list";
}
@GetMapping("/list")
public String list(Model model,
	@RequestParam(required = false , defaultValue = "pet_no") String col,
	@RequestParam(required = false , defaultValue = "asc") String order
	){
List<PetDto>list = petDao.getList(col,order);
	model.addAttribute("list",list);
return "pet/list";
	
}
//   @GetMapping("/detail")
//   @GetMapping("/edit")
//   @PostMapping("/edit")
//   @GetMapping("/delete")
}
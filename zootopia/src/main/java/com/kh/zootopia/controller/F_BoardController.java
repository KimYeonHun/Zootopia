package com.kh.zootopia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.zootopia.entity.F_BoardDto;
import com.kh.zootopia.entity.F_ReplyDto;
import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.F_BoardDao;
import com.kh.zootopia.repository.F_ReplyDao;

@Controller
@RequestMapping("/f_board")
public class F_BoardController {
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private F_BoardDao f_boardDao;
	@Autowired
	private F_ReplyDao f_replyDao;
	
	
	@GetMapping("/f_write")
	public String write() {
		return "f_board/f_write";
	}
	
	@PostMapping("/f_write")
	public String write(
			HttpSession session,
			@ModelAttribute F_BoardDto f_boardDto,
			RedirectAttributes attr) {
		 MemberDto userinfo = (MemberDto) session.getAttribute("userinfo");
		f_boardDto.setMember_id(userinfo.getMember_id());
		int no = f_boardDao.write(f_boardDto);
		attr.addAttribute("f_board_no",no);
		return "redirect:f_content";
	}
	
	@GetMapping("/f_content")
	public String content(
			@RequestParam int f_board_no,
			Model model) {
		F_BoardDto f_boardDto = f_boardDao.read(f_board_no);
		model.addAttribute("f_boardDto", f_boardDto);
		
		List<F_ReplyDto> list = sqlSession.selectList("f_reply.getList", f_board_no);
		System.out.println(list.toString());
		model.addAttribute("list", list);
		
		return "f_board/f_content";
	}
	
	@GetMapping("/f_list")
	public String list(Model model) {
		List<F_BoardDto> list = sqlSession.selectList("f_board.getList");
		model.addAttribute("list", list);
		return "f_board/f_list";
	}
	
	@GetMapping("/f_list_data")
	@ResponseBody
	public List<F_BoardDto> listData(Model model) {
		List<F_BoardDto> list = sqlSession.selectList("f_board.getList");
		return list;
	}
	
	@PostMapping("/reply")
	@ResponseBody
	public String reply(
			HttpSession session,
			@RequestParam String fr_content,
			@RequestParam int f_board_no,
			@ModelAttribute F_ReplyDto f_replyDto
			) {
		
		MemberDto userinfo = (MemberDto) session.getAttribute("userinfo");
		int no = sqlSession.selectOne("f_reply.getSeq");
		
		f_replyDto.setF_board_no(f_board_no);
		System.out.println("--------------------------------------------");
		System.out.println(f_board_no);
		f_replyDto.setFr_no(no);
		System.out.println("no : " + no);
		f_replyDto.setFr_content(fr_content);
		System.out.println(fr_content);
		f_replyDto.setFr_writer(userinfo.getMember_id());
		System.out.println(userinfo.getMember_id());
		
		try {
			sqlSession.insert("f_reply.write", f_replyDto);
			return "success";
		} catch(Exception e) {
			return "fail";
		}
	
	}
	
	@GetMapping("/f_edit")
	public String edit(
			@RequestParam int f_board_no,
			Model model) {
		F_BoardDto f_boardDto = f_boardDao.get(f_board_no);
		model.addAttribute("f_boardDto", f_boardDto);
		
		return "f_board/f_edit";
	}
	
	@PostMapping("/f_edit")
	public String edit(
			@ModelAttribute F_BoardDto f_boardDto
			) {
		
		sqlSession.update("f_board.f_update", f_boardDto);
		
		return "redirect:f_content?f_board_no="+f_boardDto.getF_board_no();
	}
	
	 @GetMapping("delete")
	  public String delete(@RequestParam("f_board_no")int f_board_no) {
	  	f_boardDao.f_delete(f_board_no);
	  	return "redirect:/f_board/f_list";
	  }
	
}

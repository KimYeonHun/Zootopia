package com.kh.zootopia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.Q_BoardDto;
import com.kh.zootopia.entity.Q_ReplyDto;
import com.kh.zootopia.repository.Q_BoardDao;
import com.kh.zootopia.repository.Q_ReplyDao;


@Controller
@RequestMapping("/q_board")
public class Q_BoardController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private Q_BoardDao q_boardDao;
	@Autowired
	private Q_ReplyDao q_replyDao;
	
	@GetMapping("/write")
	public String write() {
		return "q_board/write";
	}
	
	@PostMapping("/write")
	public String write(
			HttpSession session,
			@ModelAttribute Q_BoardDto q_boardDto,
			RedirectAttributes attr) {
		MemberDto userinfo = (MemberDto) session.getAttribute("userinfo");
		q_boardDto.setMember_id(userinfo.getMember_id());
		int no = q_boardDao.write(q_boardDto);
		attr.addAttribute("q_board_no",no);
		return "redirect:content";
	}
	
	@GetMapping("/content")
	public String content(
			@RequestParam int q_board_no,
			Model model) {
		Q_BoardDto q_boardDto = q_boardDao.read(q_board_no);
		model.addAttribute("q_boardDto", q_boardDto);
		
		return "q_board/q_content";
	}
	
	
	
	@GetMapping("/list")
	public String list(Model model) {
		List<Q_BoardDto> list = sqlSession.selectList("q_board.getList");
		model.addAttribute("list", list);
		
//		return "/WEB-INF/views/board/list.jsp";
		return "q_board/list";
	}
	
	@PostMapping("/search")
	public String search(
				@RequestParam String type,
				@RequestParam String keyword,
				Model model
			) {
		
		Map<String, String> param = new HashMap<>();
		param.put("type", type);
		param.put("keyword", keyword);
		List<Q_BoardDto> list = sqlSession.selectList("q_board.search", param);
		model.addAttribute("list", list);
		
		return "q_board/list";
	}
	
	@RequestMapping("/union")
	public String union(
				@RequestParam(required = false) String type,
				@RequestParam(required = false) String keyword,
				Model model
			) {
		
		Map<String, Object> map = new HashMap<>();
		map.put("type", type);
		map.put("keyword", keyword);
		
		List<Q_BoardDto> list = sqlSession.selectList("q_board.unionList", map);
		model.addAttribute("list", list);
		
		return "q_board/list";
	}
	
	@PostMapping("/reply")
	@ResponseBody
	public String reply(
			HttpSession session,
			@RequestParam String qr_content,
			@RequestParam int q_board_no,
			@ModelAttribute Q_ReplyDto q_replyDto
			) {
		
		System.out.println("----------------------------------------------------------------");
		System.out.println(qr_content);
		System.out.println(q_board_no);
		MemberDto userinfo = (MemberDto) session.getAttribute("userinfo");
		System.out.println("작성자"+userinfo.getMember_id());
		int no = sqlSession.selectOne("q_resply.getSeq");
		System.out.println("리플 번호" + no);
		
		q_replyDto.setQ_board_no(q_board_no);
		q_replyDto.setQr_no(no);
		q_replyDto.setQr_content(qr_content);
		q_replyDto.setQr_writer(userinfo.getMember_id());
		
		sqlSession.insert("q_resply.write", q_replyDto);
		
		return "success";

	}
	
	
	
	
	
	
	
	
	
	
	
}
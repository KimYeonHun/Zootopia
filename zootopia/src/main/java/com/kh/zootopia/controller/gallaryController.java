package com.kh.zootopia.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.zootopia.entity.GallaryDto;
import com.kh.zootopia.repository.GallaryDao;
import com.kh.zootopia.service.GallaryService;
@Controller
@RequestMapping("/gallary")
public class gallaryController {
	
	@Autowired
	private GallaryService gallaryService;
	
	@Autowired
	private GallaryDao gallaryDao;
	
	@GetMapping("/add")
	public String add() {

		return "gallary/add";
	}
	
	//업로드를 위한 컨트롤러
	@PostMapping("/add")
	public String add(
				@ModelAttribute GallaryDto gallaryDto,
				@RequestParam MultipartFile file
			) throws IllegalStateException, IOException {
		gallaryService.add(gallaryDto, file);
		return "redirect:add";
	}
	
	//다운로드를 위한 컨트롤러 구현
	// - 다운로드는 사용자가 JSP 페이지를 받지 않는다
	// - 사용자가 올려둔 파일을 응답으로 제공해야 한다
	// - Spring에서는 기존 방식과 Spring 방식 모두를 지원
	
	
//	방식1 : 기존처럼 response 정보를 이용하여 파일을 전송
//	@GetMapping("/down/{no}")
//	@ResponseBody//응답에 있어서 자동으로 처리되는 도구들을 제거
//	public void download(
//			@PathVariable int no,
//			HttpServletResponse response) throws IOException {
//		GallaryDto gallaryDto = gallaryDao.get(no);
//		
//		//파일 정보가 없으면 사용자에게 404 notfound를 알린다
//		if(gallaryDto == null) {
//			response.sendError(404);
//			return;
//		}
//		
//		//파일 정보가 있으면 사용자에게 파일정보와 내용을 전달한다
//		response.setHeader("Content-Type", "application/octet-stream; charset=UTF-8");
//		response.setHeader("Content-Disposition", "attachment; filename=\""+URLEncoder.encode(gallaryDto.getFname(), "UTF-8")+"\"");
//		response.setHeader("Content-Length", String.valueOf(gallaryDto.getFsize()));
//		
//		File target = new File("D:/upload", String.valueOf(no));
//		byte[] data = FileUtils.readFileToByteArray(target);
//		response.getOutputStream().write(data);
//	}
	
//	방식2 : Spring에서 권장하는 방식(DispatcherServlet 이용)
//	- ResponseEntity : 응답 정보가 모여있는 개체
	@GetMapping("/down/{no}")
	public ResponseEntity<ByteArrayResource> down(
				@PathVariable int no) throws IOException{
		GallaryDto gallaryDto = gallaryDao.get(no);
		if(gallaryDto == null) {//정보가 없을 때
			return ResponseEntity.notFound().build();
		}
		else {//정보가 있을 때
			File target = new File("D:/upload", String.valueOf(no));
			byte[] data = FileUtils.readFileToByteArray(target);
			ByteArrayResource res = new ByteArrayResource(data);
			
			return ResponseEntity
							.ok()
							.contentType(MediaType.APPLICATION_OCTET_STREAM)
							.contentLength(gallaryDto.getPet_file_size())
							.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\""+URLEncoder.encode(gallaryDto.getPet_file_name(), "UTF-8")+"\"")
							.header(HttpHeaders.CONTENT_ENCODING, "UTF-8")
						.body(res);
		}
	}
}
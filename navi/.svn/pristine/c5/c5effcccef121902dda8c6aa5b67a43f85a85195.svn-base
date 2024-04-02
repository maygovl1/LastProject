package kr.or.navi.mypage.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.navi.mypage.service.MypageService;
import kr.or.navi.quick.book.service.BookService;
import kr.or.navi.security.RealUser;
import kr.or.navi.vo.EmpVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mypage/me")
public class MypageController {
	@Inject
	MypageService service;

	@Inject
	BookService bookService;
	
	@GetMapping
	public String mypage(Model model, @RealUser EmpVO vo) {
		String bookName = bookService.getBookNameByBkId(vo.getEmpBkId());
		vo = service.selectOne(vo.getEmpId());
		
		model.addAttribute("bkNm", bookName);
		model.addAttribute("vo", vo);
		return "mypage/mypage";
	}
}
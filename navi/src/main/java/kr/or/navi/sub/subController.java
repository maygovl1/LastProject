package kr.or.navi.sub;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/sub")
@Slf4j
public class subController {
	
	@GetMapping("/sub01.do")
	public String sub() {
		return "chat/sub404";
	}
	
	@GetMapping("/sub02.do")
	public String sub02() {
		return "chat/sub500";
	}
	
	@GetMapping("/sub03.do")
	public String sub03() {
		return "chat/sub405";
	}
}

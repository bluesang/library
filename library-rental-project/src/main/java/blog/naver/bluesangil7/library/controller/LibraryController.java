package blog.naver.bluesangil7.library.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import blog.naver.bluesangil7.library.service.Library;
import blog.naver.bluesangil7.library.service.LibraryService;

@Controller
public class LibraryController {
	@Autowired
	private LibraryService libraryService;
	
	@Autowired
	HttpServletRequest request;
	
	//도서관 관리자 등록
	@RequestMapping(value="/library/libraryAdd" , method=RequestMethod.GET)
	public String addLibrary(Model model){
		System.out.println("localList"+libraryService.selectLocal());
		model.addAttribute("localList", libraryService.selectLocal());
		return "/library/libraryAdd";
	}
	
	@RequestMapping(value="/library/libraryAdd" , method=RequestMethod.POST)
	public String addLibrary(Library library){
		System.out.println("library에 뭐가 들어있나~? "+library);
		libraryService.addLibrary(library);
		return "redirect:/library/login";
	}
	
	//관리자 로그인
	@RequestMapping(value="/library/login" ,method=RequestMethod.GET)
	public String login(){
		return "/library/login";
	}
	
	@RequestMapping(value="/library/login" ,method=RequestMethod.POST)
	public String login(Library library){
		HttpSession session = request.getSession(true);
		System.out.println("세션 잘있냐?"+session);
		session.setAttribute("library" , library);
		session.setAttribute("SID", library.getLibraryId());
		System.out.println("로그인 잘했남~?" +library);
		return "redirect:/library/main";
	}
	
	@RequestMapping(value="/library/logout")
	public String logout(HttpSession session){
		session.invalidate();
		System.out.println("로그아웃 잘됏남?" + session);
		return "redirect:/library/login";
	}
	@RequestMapping(value="/library/main")
	public String main(Library library){
		
		return "/main";
	}
}

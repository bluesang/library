package blog.naver.bluesangil7.library.controller;

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
	
	@RequestMapping(value="/library/login" ,method=RequestMethod.GET)
	public String login(){
		return "/library/login";
	}
	
	@RequestMapping(value="/library/login" ,method=RequestMethod.POST)
	public String login(Library library){
		System.out.println("로그인 잘했남~?" +library);
		return "redirect:/library/main";
	}
	
	@RequestMapping(value="/library/main")
	public String main(Library library){
		
		return "/main";
	}
}

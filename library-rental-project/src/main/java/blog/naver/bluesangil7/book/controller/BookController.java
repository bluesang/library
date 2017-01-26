package blog.naver.bluesangil7.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import blog.naver.bluesangil7.book.service.Book;
import blog.naver.bluesangil7.book.service.BookService;

@Controller
public class BookController {
	@Autowired
	private BookService bookService;
	
	@RequestMapping(value="/book/bookAdd", method=RequestMethod.GET)
	public String bookAdd(Model model){
		model.addAttribute("stateList", bookService.selectState());
		model.addAttribute("genreList", bookService.selectGenre());
		return "/book/bookAdd";
	}
	
	@RequestMapping(value="/book/bookAdd", method=RequestMethod.POST)
	public String bookAdd(Book book){
		bookService.bookAdd(book);
		System.out.println("책 등록이 잘됐남~?" + book);
		return "redirect:/library/main";
	}
	
}

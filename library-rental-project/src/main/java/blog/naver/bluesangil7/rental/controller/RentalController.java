package blog.naver.bluesangil7.rental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import blog.naver.bluesangil7.rental.service.Rental;
import blog.naver.bluesangil7.rental.service.RentalService;

@Controller
public class RentalController {

	@Autowired
	private RentalService rentalService;
	
	//도서 대여
	@RequestMapping(value="/rental/bookRental", method=RequestMethod.GET)
	public String bookRental(Model model){
		model.addAttribute("rentalstateList",rentalService.selectRentalState());
		return "/rental/bookRental";
	}
	
	@RequestMapping(value="/rental/bookRental", method=RequestMethod.POST)
	public String bookRental(Rental rental){
		System.out.println("대여잘했남~?"+rental);
		rentalService.bookRental(rental);
		return "redirect:/library/main";
	}
	
	//도서조회
	@RequestMapping(value="/rental/bookSearch", method=RequestMethod.GET)
	public String bookSearch(){
		return "/rental/bookSearch";
	}
	
	@RequestMapping(value="/rental/bookSearch", method=RequestMethod.POST)
	public String bookSearch(int bookCode){
		return "redirect:/rental/bookReturn?bookCode=bookCode";
	}
	
	//도서반납
	@RequestMapping(value="/rental/bookReturn", method=RequestMethod.GET)
	public String bookReturn(@RequestParam(
			value="bookCode") int bookCode,
			Model model){
		model.addAttribute("bookReturn",rentalService.bookSearch(bookCode));
		return "/rental/bookReturn";
	}
}

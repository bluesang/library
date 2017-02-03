package blog.naver.bluesangil7.rental.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import blog.naver.bluesangil7.member.service.Member;
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
	public String bookRental(Rental rental,
			@RequestParam(value="memberId") String memberId,
			@RequestParam(value="rentalPrepayment") int rentalPrepayment){
		Map<String, Object> returnMap = rentalService.selectRentalInfo(memberId); //대여 처리를 위한 데이터를 가져옴
		int rentalPayment = (Integer) returnMap.get("rentalPayment"); //Member에서 가져온 등급에 따른 대여료
		rental.setRentalPayment(rentalPayment-rentalPrepayment); //대여료-선불금 = 잔여액
		rentalService.bookRental(rental);
		
		return "redirect:/rental/bookRentalList";
	}
	
	//도서조회
	@RequestMapping(value="/rental/bookReturnSearch", method=RequestMethod.GET)
	public String bookReturnSearch(){
		return "/rental/bookReturnSearch";
	}
	
	@RequestMapping(value="/rental/bookReturnSearch", method=RequestMethod.POST)
	public String bookReturnSearch(RedirectAttributes redirectAttributes, int bookCode){
		redirectAttributes.addAttribute("bookCode", bookCode);
		return "redirect:/rental/bookReturn";
	}
	
	//도서반납
	@RequestMapping(value="/rental/bookReturn", method=RequestMethod.GET)
	public String bookReturn(@RequestParam(
			"bookCode") int bookCode,
			Model model){
		Map<String, Object> returnMap = rentalService.bookReturnSearch(bookCode);
		model.addAttribute("rental", returnMap.get("rental"));
		model.addAttribute("totalPrice",returnMap.get("totalPrice"));
		model.addAttribute("paying",returnMap.get("paying"));
		return "/rental/bookReturn";
	}
	
	@RequestMapping(value="/rental/bookReturn", method=RequestMethod.POST)
	public String bookReturn(Rental rental){
		System.out.println("rental엔 뭐가들었남~? "+rental);
		rentalService.bookReturn(rental);
		return "redirect:/library/main";
	}
	
	//도서대여 목록조회
	@RequestMapping(value="/rental/bookRentalList")
	public String bookRentalList(Model model){
		model.addAttribute("rentalList", rentalService.bookRentalList());
		return "/rental/bookRentalList";
	}
}

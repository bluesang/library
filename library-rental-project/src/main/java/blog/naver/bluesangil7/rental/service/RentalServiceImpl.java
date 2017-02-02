package blog.naver.bluesangil7.rental.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RentalServiceImpl implements RentalService {
	@Autowired
	private RentalDao rentalDao;
	
	//대여상태 데이터가져오기
	@Override
	public List<Rentalstate> selectRentalState() {	
		return rentalDao.selectRentalstate();
	}
	
	//대여 처리를 위해 데이터 가져오기
	@Override
	public Map<String, Object> selectRentalInfo() {
		Map<String, Object> returnMap = new HashMap();
		Rental rental = rentalDao.selectRentalInfo();
		
		//대여료 가져오기
		int totalPrice = 0;
		if(rental.getMemberlevelName().equals("일반회원")){ //일반회원 대여료
			totalPrice = rental.getPaymentPrice();
		} else if(rental.getMemberlevelName().equals("유료회원")){ //유료회원 대여료
			totalPrice = rental.getPaymentPrice();;
		}
		System.out.println("대여료 : "+ totalPrice);
		
		//잔여액 구하기(대여료 - 선불액)
		int rentalPayment = totalPrice - rental.getRentalPayment();
		System.out.println("잔여액 : "+ rentalPayment);
		rental.setRentalPayment(rentalPayment);
		returnMap.put("rental", rental);
		return returnMap;
	}
	
	//도서대여 처리
	@Override
	public int bookRental(Rental rental) {		
		int bookCode = rental.getBookCode();
		System.out.println("bookCode : "+bookCode);
		rental = rentalDao.bookSearch(bookCode);
		System.out.println("Service에서 rental : "+rental);
		//대여료 가져오기
		int totalPrice = 0;
		if(rental.getMemberlevelName().equals("일반회원")){ //일반회원 대여료
			totalPrice = 1000;
		} else if(rental.getMemberlevelName().equals("유료회원")){ //유료회원 대여료
			totalPrice = 500;
		}
		
		//대여료 - 선불금액 = 받을 금액
		int rentalPayment = totalPrice - rental.getRentalPayment();
		rental.setRentalPayment(rentalPayment);
		return rentalDao.bookRental(rental);
	}

	//도서반납 정보조회
	@Override
	public Map<String, Object> bookSearch(int bookCode) {
		Map<String, Object> returnMap = new HashMap();
		Rental rental = rentalDao.bookSearch(bookCode);
		
		//총요금
		int totalPrice = 0;
		if(rental.getMemberlevelName().equals("일반회원")){
			totalPrice = 1000;
		} else if(rental.getMemberlevelName().equals("유료회원")){
			totalPrice = 500;
		}
		System.out.println("totalPrice는 얼마~? : "+totalPrice);
		
		//받은금액
		int rentalPayment = rental.getRentalPayment();
		System.out.println("rentalPayment는 얼마~? : "+rentalPayment);
		
		//받을금액
		int paying = totalPrice - rentalPayment;
		
		returnMap.put("rental", rental);
		returnMap.put("totalPrice", totalPrice);
		returnMap.put("paying", paying);
		return returnMap;
	}

	//도서반납 처리
	@Override
	public int bookReturn(Rental rental) {		
		return rentalDao.bookReturn(rental);
	}

	//도서대여목록 조회
	@Override
	public List<Rental> bookRentalList() {		
		return rentalDao.bookRentalList();
	}

	

}

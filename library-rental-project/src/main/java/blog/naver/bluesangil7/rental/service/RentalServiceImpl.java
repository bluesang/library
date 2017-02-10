package blog.naver.bluesangil7.rental.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.naver.bluesangil7.member.service.Member;

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
	public Map<String, Object> selectRentalInfo(String memberId) {
		Member member = rentalDao.selectRentalInfo(memberId);
		System.out.println("member에 뭐가들었니?" + member);
		int rentalPayment = member.getMemberlevelPayment(); //member에서 가져온 등급에 따른 대여료
		Map<String, Object> returnMap = new HashMap();
		returnMap.put("rentalPayment", rentalPayment);
		
		return returnMap;
	}
	
	//도서대여 처리
	@Override
	public int bookRental(Rental rental) {		
		return rentalDao.bookRental(rental);
	}

	//도서코드로 도서반납 정보조회
	@Override
	public Rental bookReturnSearch(int bookCode) {
		
		Rental rental = rentalDao.bookReturnSearch(bookCode);
		
		//총요금
		int totalPrice = 0;
		if(rental.getMemberlevelName().equals("일반회원")){
			totalPrice = 1000;
		} else if(rental.getMemberlevelName().equals("유료회원")){
			totalPrice = 500;
		}
		System.out.println("totalPrice는 얼마~? : "+totalPrice);
		rental.setTotalPrice(totalPrice);
		//받은금액
		int rentalPayment = rental.getRentalPayment();
		System.out.println("rentalPayment는 얼마~? : "+rentalPayment);
		
		//받을금액
		int paying = totalPrice - rentalPayment;
		rental.setPaying(paying);
		
		return rental;
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

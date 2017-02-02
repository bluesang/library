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
	
	@Override
	public List<Rentalstate> selectRentalState() {
		
		return rentalDao.selectRentalstate();
	}

	@Override
	public int bookRental(Rental rental) {
		
		return rentalDao.bookRental(rental);
	}

	@Override
	public Map<String, Object> bookSearch(int bookCode) {
		Map<String, Object> returnMap = new HashMap();
		Rental rental = rentalDao.bookSearch(bookCode);
		
		//총요금
		int totalPrice = 0;
		if(rental.getMemberlevelName().equals("일반회원")){
			totalPrice = 1000;
		}else if(rental.getMemberlevelName().equals("유료회원")){
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

	@Override
	public int bookReturn(Rental rental) {
		
		return rentalDao.bookReturn(rental);
	}

}

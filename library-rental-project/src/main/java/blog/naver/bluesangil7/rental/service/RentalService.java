package blog.naver.bluesangil7.rental.service;

import java.util.List;
import java.util.Map;

import blog.naver.bluesangil7.member.service.Member;

public interface RentalService {
	List<Rentalstate> selectRentalState();
	Map<String, Object> selectRentalInfo(String memberId);
	int bookRental(Rental rental);
	Map<String, Object> bookReturnSearch(int bookCode);
	int bookReturn(Rental rental);
	List<Rental> bookRentalList();
}

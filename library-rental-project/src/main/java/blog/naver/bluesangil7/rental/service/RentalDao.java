package blog.naver.bluesangil7.rental.service;

import java.util.List;

import blog.naver.bluesangil7.member.service.Member;

public interface RentalDao {
	List<Rentalstate> selectRentalstate();
	Member selectRentalInfo(String memberId);
	int bookRental(Rental rental);
	Rental bookReturnSearch(int bookCode);
	int bookReturn(Rental rental);
	List<Rental> bookRentalList();	
}

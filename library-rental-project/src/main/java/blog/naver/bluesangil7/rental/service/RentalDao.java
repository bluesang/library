package blog.naver.bluesangil7.rental.service;

import java.util.List;

public interface RentalDao {
	List<Rentalstate> selectRentalstate();
	Rental selectRentalInfo();
	int bookRental(Rental rental);
	Rental bookSearch(int bookCode);
	int bookReturn(Rental rental);
	List<Rental> bookRentalList();	
}

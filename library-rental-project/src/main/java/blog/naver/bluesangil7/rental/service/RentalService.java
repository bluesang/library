package blog.naver.bluesangil7.rental.service;

import java.util.List;

public interface RentalService {
	List<Rentalstate> selectRentalState();
	int bookRental(Rental rental);
	Rental bookSearch(int bookCode);
}

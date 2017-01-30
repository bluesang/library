package blog.naver.bluesangil7.rental.service;

import java.util.List;

public interface RentalDao {
	List<Rentalstate> selectRentalstate();
	int bookRental(Rental rental);
	Rental bookSearch(int bookCode);
}

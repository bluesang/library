package blog.naver.bluesangil7.rental.service;

import java.util.List;
import java.util.Map;

public interface RentalService {
	List<Rentalstate> selectRentalState();
	Map<String, Object> selectRentalInfo();
	int bookRental(Rental rental);
	Map<String, Object> bookSearch(int bookCode);
	int bookReturn(Rental rental);
	List<Rental> bookRentalList();
}

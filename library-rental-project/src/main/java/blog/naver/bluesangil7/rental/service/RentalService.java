package blog.naver.bluesangil7.rental.service;

import java.util.List;
import java.util.Map;

public interface RentalService {
	List<Rentalstate> selectRentalState();
	int bookRental(Rental rental);
	Map<String, Object> bookSearch(int bookCode);
	int bookReturn(Rental rental);
}

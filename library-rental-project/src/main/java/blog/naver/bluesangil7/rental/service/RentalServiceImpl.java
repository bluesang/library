package blog.naver.bluesangil7.rental.service;

import java.util.List;

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
	public Rental bookSearch(int bookCode) {
		return rentalDao.bookSearch(bookCode);
	}

}

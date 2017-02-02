package blog.naver.bluesangil7.rental.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RentalDaoImpl implements RentalDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String RENTALSTATE_NS = "blog.naver.bluesangil7.rental.service.RentalMapper.";
	
	@Override
	public List<Rentalstate> selectRentalstate() {
		
		return sqlSession.selectList(RENTALSTATE_NS+"selectRentalstate");
	}
	
	@Override
	public int bookRental(Rental rental) {
		
		return sqlSession.insert(RENTALSTATE_NS+"bookRental", rental);
	}

	@Override
	public Rental bookSearch(int bookCode) {
		
		return sqlSession.selectOne(RENTALSTATE_NS+"bookSearch", bookCode);
	}

	@Override
	public int bookReturn(Rental rental) {
		
		return sqlSession.update(RENTALSTATE_NS+"bookReturn", rental);
	}

}

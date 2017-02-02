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
	
	//대여상태 데이터 가져오기
	@Override
	public List<Rentalstate> selectRentalstate() {		
		return sqlSession.selectList(RENTALSTATE_NS+"selectRentalstate");
	}
	
	//대여 처리를 위해 데이터 가져오기
	@Override
	public Rental selectRentalInfo() {
		return sqlSession.selectOne(RENTALSTATE_NS+"selectRentalInfo");
	}
	
	//도서 대여
	@Override
	public int bookRental(Rental rental) {		
		return sqlSession.insert(RENTALSTATE_NS+"bookRental", rental);
	}
	
	//도서반납 정보조회
	@Override
	public Rental bookSearch(int bookCode) {		
		return sqlSession.selectOne(RENTALSTATE_NS+"bookSearch", bookCode);
	}
	
	//도서반납 처리
	@Override
	public int bookReturn(Rental rental) {		
		return sqlSession.update(RENTALSTATE_NS+"bookReturn", rental);
	}
	
	//도서 대여목록 조회
	@Override
	public List<Rental> bookRentalList() {		
		return sqlSession.selectList(RENTALSTATE_NS+"bookRentalList");
	}

	

}

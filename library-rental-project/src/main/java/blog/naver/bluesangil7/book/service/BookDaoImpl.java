package blog.naver.bluesangil7.book.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDaoImpl implements BookDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String BOOK_NS = "blog.naver.bluesangil7.book.service.BookMapper."; 
	
	//도서등록
	@Override
	public int bookInsert(Book book) {
		return sqlSession.insert(BOOK_NS+"bookAdd", book);
	}
	
	//도서상태 데이터 가져오기
	@Override
	public List<State> selectState() {
		return sqlSession.selectList(BOOK_NS+"selectState");
	}

	//도서장르 데이터 가져오기
	@Override
	public List<Genre> selectGenre() {		
		return sqlSession.selectList(BOOK_NS+"selectGenre");
	}
	
	//도서폐기 등록
	@Override
	public int bookDisposal(int bookCode) {
		return sqlSession.insert(BOOK_NS+"bookDisposal",bookCode);
	}

}

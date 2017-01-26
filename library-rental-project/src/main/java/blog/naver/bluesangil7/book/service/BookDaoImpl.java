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
			
	@Override
	public int bookInsert(Book book) {
		return sqlSession.insert(BOOK_NS+"bookAdd", book);
	}

	@Override
	public List<State> selectState() {
		return sqlSession.selectList(BOOK_NS+"selectState");
	}

	@Override
	public List<Genre> selectGenre() {		
		return sqlSession.selectList(BOOK_NS+"selectGenre");
	}

}

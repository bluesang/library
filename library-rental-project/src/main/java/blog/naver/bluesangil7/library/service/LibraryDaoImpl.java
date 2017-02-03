package blog.naver.bluesangil7.library.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LibraryDaoImpl implements LibraryDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String LIBRARY_NS = "blog.naver.bluesangil7.library.service.LibraryMapper.";
	
	//관리자 등록
	@Override
	public int insertLibrary(Library library) {		
		return sqlSession.insert(LIBRARY_NS+"libraryAdd",library);
	}
	
	//지역명 데이터 가져오기
	@Override
	public List<Local> selectLocal() {		
		return sqlSession.selectList(LIBRARY_NS+"selectLocal");
	}

	//로그인
	@Override
	public Library login() {		
		return sqlSession.selectOne(LIBRARY_NS+"login");
	}

}

package blog.naver.bluesangil7.library.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LibraryServiceImpl implements LibraryService {
	@Autowired
	private LibraryDao libraryDao;
	
	//관리자 등록
	@Override
	public int addLibrary(Library library) {
		return libraryDao.insertLibrary(library);
	}

	//지역명 데이터 가져오기
	@Override
	public List<Local> selectLocal() {
		return libraryDao.selectLocal();
	}

	//로그인
	@Override
	public Library login() {
		return libraryDao.login();
	}

}

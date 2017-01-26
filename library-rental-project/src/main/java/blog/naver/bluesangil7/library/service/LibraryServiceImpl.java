package blog.naver.bluesangil7.library.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LibraryServiceImpl implements LibraryService {
	@Autowired
	private LibraryDao libraryDao;
	
	@Override
	public int addLibrary(Library library) {
		return libraryDao.insertLibrary(library);
	}

	@Override
	public List<Local> selectLocal() {
		return libraryDao.selectLocal();
	}

	@Override
	public Local login() {
		return libraryDao.login();
	}

}

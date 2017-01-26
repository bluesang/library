package blog.naver.bluesangil7.library.service;

import java.util.List;

public interface LibraryDao {
	int insertLibrary(Library library);
	List<Local> selectLocal();
	Local login();
}

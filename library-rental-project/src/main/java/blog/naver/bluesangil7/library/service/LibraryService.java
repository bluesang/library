package blog.naver.bluesangil7.library.service;

import java.util.List;

public interface LibraryService {
	int addLibrary(Library library);
	List<Local> selectLocal();
}

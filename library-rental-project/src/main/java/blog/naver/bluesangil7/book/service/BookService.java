package blog.naver.bluesangil7.book.service;

import java.util.List;

public interface BookService {
	int bookAdd(Book book);
	List<State> selectState();
	List<Genre> selectGenre();
	
}

package blog.naver.bluesangil7.book.service;

import java.util.List;

public interface BookDao {
	int bookInsert(Book book);
	List<State> selectState();
	List<Genre> selectGenre();
	int bookDisposal(int bookCode);
}

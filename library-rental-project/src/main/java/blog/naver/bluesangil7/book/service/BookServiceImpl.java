package blog.naver.bluesangil7.book.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDao bookDao;
	
	@Autowired
	private HttpServletRequest request;
	
	@Override
	public int bookAdd(Book book) {
		HttpSession session = request.getSession();
		String SID = (String) session.getAttribute("SID");
		
		book.setLibraryId(SID);
		return bookDao.bookInsert(book);
	}

	@Override
	public List<State> selectState() {
		return bookDao.selectState();
	}

	@Override
	public List<Genre> selectGenre() {		
		return bookDao.selectGenre();
	}

	@Override
	public int bookDisposal(int bookCode) {
		return bookDao.bookDisposal(bookCode);
	}

}

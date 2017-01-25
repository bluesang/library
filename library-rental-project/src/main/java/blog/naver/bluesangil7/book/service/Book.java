package blog.naver.bluesangil7.book.service;

public class Book {
	private String bookCode;
	private String bookName;
	private String bookAuthor;
	private String bookPublisher;
	private int bookFirstDay;
	private int bookTotalDay;
	private int bookTotalCount;
	public String getBookCode() {
		return bookCode;
	}
	
	public void setBookCode(String bookCode) {
		this.bookCode = bookCode;
	}
	
	public String getBookName() {
		return bookName;
	}
	
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
	public String getBookAuthor() {
		return bookAuthor;
	}
	
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	
	public String getBookPublisher() {
		return bookPublisher;
	}
	
	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}
	
	public int getBookFirstDay() {
		return bookFirstDay;
	}
	
	public void setBookFirstDay(int bookFirstDay) {
		this.bookFirstDay = bookFirstDay;
	}
	
	public int getBookTotalDay() {
		return bookTotalDay;
	}
	
	public void setBookTotalDay(int bookTotalDay) {
		this.bookTotalDay = bookTotalDay;
	}
	
	public int getBookTotalCount() {
		return bookTotalCount;
	}
	
	public void setBookTotalCount(int bookTotalCount) {
		this.bookTotalCount = bookTotalCount;
	}

	@Override
	public String toString() {
		return "Book [bookCode=" + bookCode + ", bookName=" + bookName + ", bookAuthor=" + bookAuthor
				+ ", bookPublisher=" + bookPublisher + ", bookFirstDay=" + bookFirstDay + ", bookTotalDay="
				+ bookTotalDay + ", bookTotalCount=" + bookTotalCount + "]";
	}
	
	
}

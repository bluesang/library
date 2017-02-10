package blog.naver.bluesangil7.rental.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Rental {
	private int rentalCode;
	private int bookCode;
	private String memberId;
	private int rentalstateNo;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rentalStart;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rentalEnd;
	private int rentalPayment;
	private String bookName;
	private String memberName;
	private String memberlevelName;
	private int paying;
	private int totalPrice;

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getPaying() {
		return paying;
	}

	public void setPaying(int paying) {
		this.paying = paying;
	}

	public String getMemberlevelName() {
		return memberlevelName;
	}

	public void setMemberlevelName(String memberlevelName) {
		this.memberlevelName = memberlevelName;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	public int getRentalCode() {
		return rentalCode;
	}

	public void setRentalCode(int rentalCode) {
		this.rentalCode = rentalCode;
	}

	public int getBookCode() {
		return bookCode;
	}
	
	public void setBookCode(int bookCode) {
		this.bookCode = bookCode;
	}
	
	public String getMemberId() {
		return memberId;
	}
	
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	public int getRentalstateNo() {
		return rentalstateNo;
	}
	
	public void setRentalstateNo(int rentalstateNo) {
		this.rentalstateNo = rentalstateNo;
	}
	
	public Date getRentalStart() {
		return rentalStart;
	}

	public void setRentalStart(Date rentalStart) {
		this.rentalStart = rentalStart;
	}

	public Date getRentalEnd() {
		return rentalEnd;
	}

	public void setRentalEnd(Date rentalEnd) {
		this.rentalEnd = rentalEnd;
	}

	public int getRentalPayment() {
		return rentalPayment;
	}
	
	public void setRentalPayment(int rentalPayment) {
		this.rentalPayment = rentalPayment;
	}
	
	
	
	
}

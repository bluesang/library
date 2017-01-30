package blog.naver.bluesangil7.rental.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Rental {
	private int rentalNo;
	private int bookCode;
	private String memberId;
	private int rentalstateNo;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rentalStart;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date rentalEnd;
	private int rentalPayment;
	
	public int getRentalNo() {
		return rentalNo;
	}
	
	public void setRentalNo(int rentalNo) {
		this.rentalNo = rentalNo;
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
	
	@Override
	public String toString() {
		return "Rental [rentalNo=" + rentalNo + ", bookCode=" + bookCode + ", memberId=" + memberId + ", rentalstateNo="
				+ rentalstateNo + ", rentalStart=" + rentalStart + ", rentalEnd=" + rentalEnd + ", rentalPayment="
				+ rentalPayment + "]";
	}
	
	
}

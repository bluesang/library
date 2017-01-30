package blog.naver.bluesangil7.rental.service;

public class Rentalstate {
	private int rentalstateNo;
	private String rentalstateName;
	
	public int getRentalstateNo() {
		return rentalstateNo;
	}
	
	public void setRentalstateNo(int rentalstateNo) {
		this.rentalstateNo = rentalstateNo;
	}
	
	public String getRentalstateName() {
		return rentalstateName;
	}
	
	public void setRentalstateName(String rentalstateName) {
		this.rentalstateName = rentalstateName;
	}

	@Override
	public String toString() {
		return "Rentalstate [rentalstateNo=" + rentalstateNo + ", rentalstateName=" + rentalstateName + "]";
	}
	
	
}

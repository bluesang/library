package blog.naver.bluesangil7.member.service;

public class Member {
	private String memberId;
	private String memberName;
	private String memberPhone;
	private String memberlevelNo;
	private int memberlevelPayment;
	
	public int getMemberlevelPayment() {
		return memberlevelPayment;
	}

	public void setMemberlevelPayment(int memberlevelPayment) {
		this.memberlevelPayment = memberlevelPayment;
	}

	public String getMemberId() {
		return memberId;
	}
	
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	public String getMemberName() {
		return memberName;
	}
	
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	public String getMemberPhone() {
		return memberPhone;
	}
	
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	
	public String getMemberlevelNo() {
		return memberlevelNo;
	}
	
	public void setMemberlevelNo(String memberlevelNo) {
		this.memberlevelNo = memberlevelNo;
	}
	
	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberName=" + memberName + ", memberPhone=" + memberPhone
				+ ", memberlevelNo=" + memberlevelNo + "]";
	}
	
	
}

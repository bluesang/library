package blog.naver.bluesangil7.member.service;

public class Memberlevel {
	private int memberlevelNo;
	private String memberlevelName;
	
	public int getMemberlevelNo() {
		return memberlevelNo;
	}
	
	public void setMemberlevelNo(int memberlevelNo) {
		this.memberlevelNo = memberlevelNo;
	}
	
	public String getMemberlevelName() {
		return memberlevelName;
	}
	
	public void setMemberlevelName(String memberlevelName) {
		this.memberlevelName = memberlevelName;
	}

	@Override
	public String toString() {
		return "Memberlevel [memberlevelNo=" + memberlevelNo + ", memberlevelName=" + memberlevelName + "]";
	}
	
	
	

}

package blog.naver.bluesangil7.book.service;

public class State {
	private int stateNo;
	private String stateName;
	
	public int getStateNo() {
		return stateNo;
	}
	public void setStateNo(int stateNo) {
		this.stateNo = stateNo;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	@Override
	public String toString() {
		return "State [stateNo=" + stateNo + ", stateName=" + stateName + "]";
	}
	
	
}

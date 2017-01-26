package blog.naver.bluesangil7.member.service;

import java.util.List;

public interface MemberDao {
	int memberAdd(Member member);
	List<Memberlevel> selectMemberlevel();
}

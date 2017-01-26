package blog.naver.bluesangil7.member.service;

import java.util.List;

public interface MemberService {
	int memberAdd(Member member);
	List<Memberlevel> selectMemberlevel();
}

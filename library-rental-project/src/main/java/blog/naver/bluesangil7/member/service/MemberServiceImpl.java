package blog.naver.bluesangil7.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao memberDao;

	@Override
	public int memberAdd(Member member) {		
		return memberDao.memberAdd(member);
	}

	@Override
	public List<Memberlevel> selectMemberlevel() {		
		return memberDao.selectMemberlevel();
	}
	
	
}

package blog.naver.bluesangil7.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao memberDao;

	//회원등록
	@Override
	public int memberAdd(Member member) {		
		return memberDao.memberAdd(member);
	}

	//회원등급 데이터 가져오기
	@Override
	public List<Memberlevel> selectMemberlevel() {		
		return memberDao.selectMemberlevel();
	}
	
	
}

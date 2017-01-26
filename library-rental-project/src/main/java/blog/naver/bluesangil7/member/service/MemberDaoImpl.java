package blog.naver.bluesangil7.member.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao {
	private final String MEMBER_NS ="blog.naver.bluesangil7.member.service.MemberMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int memberAdd(Member member) {		
		return sqlSession.insert(MEMBER_NS+"memberAdd",member);
	}

	@Override
	public List<Memberlevel> selectMemberlevel() {		
		return sqlSession.selectList(MEMBER_NS+"selectMemberlevel");
	}

}

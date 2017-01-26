package blog.naver.bluesangil7.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import blog.naver.bluesangil7.member.service.Member;
import blog.naver.bluesangil7.member.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/member/memberAdd",method=RequestMethod.GET)
	public String memberAdd(Model model){
		model.addAttribute("memberlevelList", memberService.selectMemberlevel());
		System.out.println(memberService.selectMemberlevel());
		return "/member/memberAdd";
	}
	
	@RequestMapping(value="/member/memberAdd",method=RequestMethod.POST)
	public String memberAdd(Member member){
		System.out.println("회원정보 제대로 들고왔냐?" + member);
		memberService.memberAdd(member);
		return "redirect:/library/main";
	}
}

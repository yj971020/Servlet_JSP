package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.MySqlMemberDAO;
import spms.vo.Member;

@Component("/member/update.do")
public class MemberUpdateController implements Controller, DataBinding {
	MySqlMemberDAO memberDAO = null;
	
	public MemberUpdateController setMemberDAO(MySqlMemberDAO memberDAO) {
		this.memberDAO = memberDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		//key ���� �̸����� �����Ͽ� �ڵ����� �����ؾ� �Ǵ� Ŭ���� Ÿ�� ����
		return new Object[] {
				"id", String.class,
				"member", spms.vo.Member.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Member member = (Member)model.get("member");
		
		if(member.getEmail() == null) {
			String id = (String)model.get("id");
			Member detailInfo = memberDAO.selectOne(id);
			model.put("member", detailInfo);
			return "../write2.jsp"; //ȸ������ ����
		} else {
			System.out.println(member.getEmail());
			memberDAO.update(member);
			HttpSession session = (HttpSession)model.get("session");
			session.setAttribute("Member", member);
			return "redirect:/write7.jsp";
		}
	}

}

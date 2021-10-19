package spms.controller;

import java.util.Map;

import spms.bind.DataBinding;
import spms.dao.MySqlMemberDAO;
import spms.vo.Member;

public class MemberUpdateController implements Controller , DataBinding{
	MySqlMemberDAO memberDAO = null;
	
	public MemberUpdateController setMemberDAO(MySqlMemberDAO memberDAO) {
		this.memberDAO = memberDAO;
		return this;
	}
	public Object[] getDataVBinders() {
		return new Object[] {
				"no", Integer.class,
			"member", spms.vo.Member.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Member member =(Member)model.get("member");

		if(member.getEmail() == null) {
			Integer no = (Integer)model.get("no");
			Member detailInfo = memberDAO.selectOne(no);
			model.put("member", detailInfo);
			return "/member/MemberUpdateForm.jsp";
		} else {
			memberDAO.update(member);
			return "redirect:list.do";
		}
	}
	@Override
	public Object[] getDataBinders() {
		// TODO Auto-generated method stub
		return null;
	}

}

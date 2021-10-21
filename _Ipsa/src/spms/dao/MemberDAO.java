package spms.dao;

import java.util.List;

import spms.vo.Member;

/*
 * �������̽� ���� ����
 * 
 * Oracle, MySql, MSSql �� DBMS ����� 
 * �� �������̽��� ��ӹ޴� DAO Ŭ������ �����ϵ�
 * �� DBMS Ư���� �°� �����Ͽ� DBMS ��ü�� ���� ��
 * �޼����� ���Ұ� ���� ���� �����ϰ� ó��
 * 
 * */
public interface MemberDAO {
	public List<Member> selectlist() throws Exception;
	public int insert(Member member) throws Exception;
	public int delete(String id) throws Exception;
	public Member selectOne(String id) throws Exception;
	public int update(Member member) throws Exception;
	public Member exist(String id, String password) throws Exception;
}

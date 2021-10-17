package spms.listener;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import spms.dao.MemberDAO;

public class ContextLoaderListener implements ServletContextListener {
	Connection conn;
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//�� ���ø����̼��� ����Ǹ� �ڵ����� DBĿ�ؼ� ���� �� MemeberDAO��ü ����
		try {
			System.out.println("contextInitialized");
			ServletContext sc = sce.getServletContext();
			Class.forName(sc.getInitParameter("driver"));
			conn = DriverManager.getConnection(sc.getInitParameter("url"), 
											   sc.getInitParameter("username"),
											   sc.getInitParameter("password"));
			MemberDAO memberDAO = new MemberDAO();
			memberDAO.setConnection(conn);
			
			//������ MemberDAO��ü�� ServletContext ������ �����Ҹ� ���� �������� ����
			sc.setAttribute("memberDAO", memberDAO);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		try {
			//�� ���ø����̼��� ����� �� DBĿ�ؼ��� ��������� ������
			if(conn != null) {
				conn.close();
			}
			System.out.println("contextDestroyed");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}

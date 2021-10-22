package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.Member;

@Component("memberDAO")
public class MySqlMemberDAO implements MemberDAO {
	/*
	 * Connection connection;
	 * 
	 * //DAO��ü�� servlet�� �ƴϱ� ������ servletcontext�� �ִ� Ŀ�ؼ� ���� ���� �Ұ���
	 * //memberlistServlet���� Ŀ�ؼ��� ��ü�� DAO�� �������� �� public void
	 * setConnection(Connection connection) { this.connection = connection; }
	 */
	
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	@Override
	public List<Member> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT * FROM MEMBER";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Member> members = new ArrayList<Member>();
			
			while(rs.next()) {
				members.add(new Member().setId(rs.getString("ID")).setName(rs.getString("NAME"))
						.setEmail(rs.getString("EMAIL")).setPhone(rs.getString("PHONE")).setCompany(rs.getString("COMPANY")));
			}
			return members;
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	//MemberAddServlet���� �Է� ������ �Է¹��� �����͸� member��ü�� ��Ƽ� 
	//DAO�� ������ ����
	@Override
	public int insert(Member member) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		final String sqlInsert = "INSERT INTO MEMBER(ID, PWD, NAME, EMAIL, PHONE, COMPANY)"
				+ "VALUES(?, ?, ?, ?, ?, ?)";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, member.getId());
			stmt.setString(2, member.getPassword());
			stmt.setString(3, member.getName());
			stmt.setString(4, member.getEmail());
			stmt.setString(5, member.getPhone());
			stmt.setString(6, member.getCompany());
			//insert �����ϸ� 1 int �� ����
			result = stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public int delete(String id) throws Exception {
		int result = 0;
		Connection connection = null;
		Statement stmt = null;
		final String sqlDelete = "DELETE FROM MEMBER WHERE ID=" + id;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			result = stmt.executeUpdate(sqlDelete);
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//�ش� ��� ������ ��ȸ
	@Override
	public Member selectOne(String id) throws Exception {
		Member member = null;
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		final String sqlSelectOne = "SELECT * FROM MEMBER WHERE ID=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlSelectOne);
			System.out.println(id);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()) {
						member = new Member().setId(rs.getString("ID")).setName(rs.getString("NAME"))
						.setEmail(rs.getString("EMAIL")).setPhone(rs.getString("PHONE")).setCompany(rs.getString("COMPANY"));
			} else {
				throw new Exception("�ش� ID�� ȸ���� ã�� �� �����ϴ�.");
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return member;
	}
	
	//�ش� ��� ������ ����
	@Override
	public int update(Member member) throws Exception {
		int result = 0;
		Connection connection = null;
		PreparedStatement stmt = null;
		
		final String sqlUpdate = "UPDATE MEMBER SET PWD=?, NAME=?, EMAIL=?, PHONE=?, COMPANY=? WHERE ID=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setString(1, member.getPassword());
			stmt.setString(2, member.getName());
			stmt.setString(3, member.getEmail());
			stmt.setString(4, member.getPhone());
			stmt.setString(5, member.getCompany());
			stmt.setString(6, member.getId());
			result = stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public Member exist(String id, String password) throws Exception {
		System.out.println(id);
		System.out.println(password);
		Member member = null;
		Connection connection = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		final String sqlExist = "SELECT * FROM MEMBER WHERE ID=? AND PWD=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlExist);
			stmt.setString(1, id);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			if(rs.next()) {
				member = new Member()
									 .setName(rs.getString("NAME"))
									 .setEmail(rs.getString("EMAIL"))
									 .setId(rs.getString("ID"));
			} else {
				return null;
			}
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			try {
				if(connection != null) {
					connection.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return member;
	}
}

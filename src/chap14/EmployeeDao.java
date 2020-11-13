package chap14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
	public static List<String> getNameList(String name, boolean asc) {
		List<String> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		String sql = "SELECT ename "
				+ "FROM employee "
				+ "WHERE "
				+ "ename LIKE '%" + name + "%' "
				+ "ORDER BY ename " ;
		if(asc) {
			sql += "ASC"; // 오름차순
		} else {
			sql += "DESC"; // 내림차순
		}
		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2. 커넥션 생성
			conn = DriverManager.getConnection(url, user, password);
			
			// 3. statement 생성
			stmt = conn.createStatement();
			
			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);
			
			// 5. 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				if (stmt != null) {
					// 6. statement 닫고
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			// 7. connection 닫고
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}								
		return list;
		
//		try with source 를 사용한 예제 위와 하는 역할은 같음
//		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
//		String user = "c##mydbms";
//		String password = "admin";
//		// 1. 드라이버 로딩
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		// 2. 연결
//		// 3. statment
//		try (
//				Connection conn = DriverManager.getConnection(url, user, password);
//				Statement stmt = conn.createStatement();
//				) {
//			// 4. 쿼리
//			ResultSet rs = stmt.executeQuery(sql);
//			// 5. 처리
//			while (rs.next()) {
//				list.add(rs.getString("ename"));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}
	
	public static List<String> getNameLike(String name) {
		List<String> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		name = name.toUpperCase();
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		
		String password = "admin";
		
		String sql = "SELECT ename "
				+ "FROM employee "
				+ "WHERE "
				+ "ename LIKE '%" + name + "%'";
		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2. 커넥션 생성
			conn = DriverManager.getConnection(url, user, password);
			
			// 3. statement 생성
			stmt = conn.createStatement();
			
			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);
			
			// 5. 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				if (stmt != null) {
					// 6. statement 닫고
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			// 7. connection 닫고
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}								
		return list;
	}
	
	
	
	public static List<String> listEmployeeName() {
		List <String> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		
		String sql ="SELECT ename FROM employee";
		
		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2. 커넥션 생성
			conn = DriverManager.getConnection(url, user, password);
			
			// 3. statement 생성
			stmt = conn.createStatement();
			
			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);
			
			// 5. 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				if (stmt != null) {
					// 6. statement 닫고
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (conn != null) {
					// 7. connection 닫고
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}				
		return list;
	}
}

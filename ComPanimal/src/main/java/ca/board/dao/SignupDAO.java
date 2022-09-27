package ca.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SignupDAO {
				//jdbc 연결 
				private Connection conn;
				private PreparedStatement ps;
				private ResultSet rs;
		
				
				public Connection getConnect() {
					String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
					String user ="campus_b_0825_4";
					String password="smhrd4";
							
					try {
						Class.forName("oracle.jdbc.driver.OracleDriver");
						conn =DriverManager.getConnection(url, user, password);
					}catch(Exception e) {
						e.printStackTrace();;
					}
					return conn;
				}	
		
				
				// 아이디 중복 체크
				public int checkId(String user_id) {
					getConnect();
					String sql = "select * from tbl_user where user_id=?";
					int idCheck = 0;
					try {
						ps= conn.prepareStatement(sql);
						ps.setString(1,user_id);
						rs = ps.executeQuery();
						System.out.println(user_id);
						if(rs.next()) {
							idCheck = 0;
						}else {
							idCheck = 1;
						}
					
				}catch(SQLException e) {
					e.printStackTrace();;
				}
					return idCheck; 
				}
}


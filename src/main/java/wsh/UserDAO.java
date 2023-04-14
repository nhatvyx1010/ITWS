package wsh;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	public int insert(User t) {
		int result = 0;
		try {
			// Bước 1: tạo kết nối đến CSDL
			Connection con = JDBCUtil.getConnection();
			
			// Bước 2: tạo ra đối tượng statement
			String sql="INSERT INTO user(thongtin) VALUES ('{name: "+t.getHoTen()+", date: "+t.getNamSinh()+", phone: "+t.getPhoneNumber()+", email: "+t.getEmail()+", username: "+t.getUsername()+", password: "+t.getPassword()+"}');";
			//String sql="INSERT INTO user(thongtin) VALUES ('{"+"name: ?"  + ", date:": 25/9/2003, \"phone\": \"0786666666\", \"email\": \"hoaibao@gmail.com\", \"username\": \"hoaibao\", \"password\": \r\n"
				//	+ "\"123\"}');";
			PreparedStatement st = con.prepareStatement(sql);
//			st.setString(1, t.getHoTen());
//			st.setString(2, t.getNamSinh());
//			st.setString(3, t.getPhoneNumber());
//			st.setString(4, t.getEmail());
//			st.setString(5, t.getUsername());
//			st.setString(6, t.getPassword());
			
			
			// Bước 3: thực thi câu lệnh SQL
			result = st.executeUpdate();
			
			// Bước 4:
			System.out.println("Bạn đã thực thi: "+ sql);
			System.out.println("Có "+ result+" dòng bị thay đổi!");
			
			// Bước 5:
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	public boolean checkUsername(String username) {
		boolean result = false;
		try {
			Connection con = JDBCUtil.getConnection();
			
			String sql = "SELECT * FROM user WHERE username=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, username);
			
			//Thực thi câu lệnh SQL 
			System.out.println(sql);
			ResultSet rs = st.executeQuery();
			
			//Lấy thông tin 
			while(rs.next()) {
				return true;
			}
			
			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}

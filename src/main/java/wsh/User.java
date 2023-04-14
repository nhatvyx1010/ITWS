package wsh;

import java.util.Objects;

public class User {
	private String UserID;
	private String hoTen;
	private String namSinh;
	private String phoneNumber;
	private String email;
	private String username;
	private String password;
	public User() {
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	public String getNamSinh() {
		return namSinh;
	}
	public void setNamSinh(String namSinh) {
		this.namSinh = namSinh;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User(String userID, String hoTen, String namSinh, String phoneNumber, String email, String username,
			String password) {
		super();
		UserID = userID;
		this.hoTen = hoTen;
		this.namSinh = namSinh;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.username = username;
		this.password = password;
	}
	@Override
	public int hashCode() {
		return Objects.hash(UserID, email, hoTen, namSinh, password, phoneNumber, username);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(UserID, other.UserID);
	}
	@Override
	public String toString() {
		return "User [UserID=" + UserID + ", hoTen=" + hoTen + ", namSinh=" + namSinh + ", phoneNumber=" + phoneNumber
				+ ", email=" + email + ", username=" + username + ", password=" + password + "]";
	}
	
	
	
}

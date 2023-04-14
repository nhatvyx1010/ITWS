package wsh;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/registerController")
public class registerController extends HttpServlet{
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public registerController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = "";
		String hoTen = request.getParameter("hoVaTen");
		String namSinh = request.getParameter("date");
		String phoneNumber = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		request.setAttribute("hoVaTen", hoTen);
		request.setAttribute("date", namSinh);
		request.setAttribute("phone", phoneNumber);
		request.setAttribute("email", email);
		request.setAttribute("username", username);
		request.setAttribute("password", password);
		
		
		String url = "";
		String error = "";
		
		UserDAO userDAO = new UserDAO();
//		if (userDAO.checkUsername(username)) {
//			error += "Username đã tồn tại!";
//		}
//		
		request.setAttribute("error",error);
		if(error.length() > 0) {
			url = "/login.jsp";
		}
		else {
		//	String id = "U" + System.currentTimeMillis();
			User user = new User(id, hoTen, namSinh, phoneNumber, email, username, password);
			System.out.println("id: "+id+hoTen+namSinh+phoneNumber+email+username+password);
			userDAO.insert(user);
			url = "/login.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}

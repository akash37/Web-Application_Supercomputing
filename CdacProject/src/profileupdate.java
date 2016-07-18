

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.*;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;;


/**
 * Servlet implementation class profileupdate
 */
@WebServlet("/profileupdate")
public class profileupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public profileupdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con;
		Statement st;
		HttpSession session=request.getSession(); 
		String s0=(String)session.getAttribute("userid");
		String s1=request.getParameter("first_name");
		String s2=request.getParameter("last_name");
		String s3=request.getParameter("email");
		String s5=request.getParameter("pass");
		String s6=request.getParameter("city");
		String s7=request.getParameter("phone");
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			 con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "akash");
		     st = (Statement) con.createStatement();
		     st.executeUpdate("update members set first_name='"+s1+"',last_name='"+s2+"',email='"+s3+"',pass=md5('"+s5+"') where uname='"+s0+"' ");
		     st.executeUpdate("update info set city='"+s6+"',phone='"+s7+"' where uname='"+s0+"'");
		     response.sendRedirect("profile.jsp");
		}
		catch(ClassNotFoundException e){
			
		}
		catch(Exception ex){
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

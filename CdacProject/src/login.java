

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userid = request.getParameter("uname");    
	    String pwd = request.getParameter("pass");
	    try{
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "akash");
	    Statement st = (Statement) con.createStatement();
	    ResultSet rs;
	    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass=md5('"+pwd+"')");
	    if (rs.next()) {
	    	HttpSession session=request.getSession();  
	    	if(userid.equals("admin"))
	    	{
	    		session.setAttribute("userid", "admin");
	    		response.sendRedirect("adminhome.jsp");
	    		return;
	    	}
	    	else{
	    		session.setAttribute("userid", userid);
	            response.sendRedirect("topics.jsp");
	            return;
	    	}
	    } else {
	    	response.sendRedirect("invalidlogin.jsp");
	    	return;
	    }
	    }
	    catch(ClassNotFoundException e)
	    {
	    	e.printStackTrace(); 
	    }
	    catch(Exception ex){
	    	ex.printStackTrace();
	    }
	    
	}
		
}




import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
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
		doGet(request, response);
		boolean c=false;
		String user = request.getParameter("uname");    
	    String pwd = request.getParameter("pass");
	    String fname = request.getParameter("fname");
	    String lname = request.getParameter("lname");
	    String email = request.getParameter("email");
	    String city = request.getParameter("city");
	    String phone = request.getParameter("phone");
	    try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "akash");
		    Statement st = (Statement) con.createStatement();
		    ResultSet rs;
		    rs=st.executeQuery("select email,uname from members");
		    while(rs.next()){
		    	if(email.equals(rs.getString("email")) || user.equals(rs.getString("uname")))
		    	{
		    		c=false;
		    		response.sendRedirect("emailnot.jsp");
		    	}
		    	else{
		    		c=true;
		    	}
		    }
		    while(c)
	   {
		    int i = st.executeUpdate("insert into members(first_name, last_name, email, uname, pass, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "',md5('"+pwd+"'), CURDATE())");
		    if (i > 0) {
		        //session.setAttribute("userid", user);
		        st.executeUpdate("insert into info(uname,city,phone) values ( '" + user + "', '" + city + "','" + phone +"')" );
		        response.sendRedirect("index.jsp");
		       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
		    }
		}
		 }
	    catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    catch(Exception ex){
			ex.printStackTrace();
		}		
	}
	}

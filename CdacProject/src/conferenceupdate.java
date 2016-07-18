

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class conferenceupdate
 */
@WebServlet("/conferenceupdate")
public class conferenceupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public conferenceupdate() {
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
		String name=request.getParameter("eventname");
		String sdate=request.getParameter("startdate");
		String edate=request.getParameter("enddate");
		String location=request.getParameter("location");
		String type=request.getParameter("eventtype");
		String desc=request.getParameter("desc");
		String link=request.getParameter("link");
		 try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "akash");
			    Statement st = (Statement) con.createStatement();
			    st.executeUpdate("insert into conferences(name,startdate,enddate,location,eventtype,description,link)values('" + name + "','" + sdate + "','" + edate + "','" + location + "','" + type + "','" + desc + "', '" + link + "')");
			    response.sendRedirect("adminsuccess.jsp");
			} 
		 catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		 catch(Exception ex){
				ex.printStackTrace();
			}		
	}
}

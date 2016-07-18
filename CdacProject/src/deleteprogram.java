

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
 * Servlet implementation class deleteprogram
 */
@WebServlet("/deleteprogram")
public class deleteprogram extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteprogram() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String ch=request.getParameter("pr");
		Connection con;
		Statement st;
		if(ch.equals("openmp"))
		{
			String s1=request.getParameter("na");
			try
			{
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "akash");
			st = (Statement) con.createStatement();
			String sql="DELETE FROM `openmp` WHERE `progname`='" + s1 +"'";
			st.executeUpdate(sql);
			response.sendRedirect("deleteprogram.jsp");
			}
			catch(ClassNotFoundException e)
			{
				e.printStackTrace();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			
		}
		else if(ch.equals("mpi"))
		{		String s=request.getParameter("na");
				try
				{
				Class.forName("com.mysql.jdbc.Driver");
				con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "akash");
				st = (Statement) con.createStatement();
				st.executeUpdate("DELETE FROM `mpi` WHERE `mprogname`='" +s+"'");
				response.sendRedirect("deleteprogram.jsp");
				}
				catch(ClassNotFoundException e)
				{
					e.printStackTrace();
				}
				catch(Exception ex)
				{
					ex.printStackTrace();
				}
			
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

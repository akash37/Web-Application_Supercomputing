

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminchoice
 */
@WebServlet("/adminchoice")
public class adminchoice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminchoice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String ch=request.getParameter("select");
		if(ch.equals("programs")){
			response.sendRedirect("updateprograms.jsp");
		}
		else if(ch.equals("conference")){
			response.sendRedirect("updateconference.jsp");
		}
		else if(ch.equals("view")){
			response.sendRedirect("topics.jsp");
		}
		else if(ch.equals("deleteprogram")){
			response.sendRedirect("deleteprogram.jsp");
		}
		else if(ch.equals("deleteuser")){
			response.sendRedirect("deleteuser.jsp");
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

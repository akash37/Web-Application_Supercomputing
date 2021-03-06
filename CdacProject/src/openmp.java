

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
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
 * Servlet implementation class openmp
 */
@WebServlet("/openmp")
public class openmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public openmp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Reader input = null;
		String  ls = System.getProperty("line.separator");
		ResultSet rs=null;
		StringBuilder sb = new StringBuilder();
		String ch=request.getParameter("openmp");
		int n=Integer.parseInt(ch);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root", "akash");
			Statement st = (Statement) con.createStatement();
			String sql = "select program from openmp where id='"+n+"'";;
			rs = st.executeQuery(sql);
			if (rs.next()) {
				input = rs.getCharacterStream("program");
				BufferedReader br = new BufferedReader(input);
				String line;
		        while(null != (line = br.readLine())) {
		            sb.append(line);
		            sb.append(ls);
		        }
		        br.close();
		        response.getWriter().write(sb.toString());
			}
		}catch(Exception e){
			e.printStackTrace();
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

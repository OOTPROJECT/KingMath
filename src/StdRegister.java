

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;

/**
 * Servlet implementation class StdRegister
 */
@WebServlet("/addStudent")
public class StdRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public StdRegister() {
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
		//doGet(request, response);

			
			JSONObject jsonResponse = new JSONObject();
			String stdCode = request.getParameter("stdCode");
			String regDate = request.getParameter("regDate");
			//String stdUsername = request.getParameter("stdUsername");
			//String stdPassword = request.getParameter("stdPassword");
			
			jsonResponse.put("studentCode", stdCode);
			jsonResponse.put("registerDate", regDate);
			jsonResponse.put("status", 200);
			jsonResponse.put("msg", "OK");
			
			// Set content type of the response so that jQuery knows what it can expect.
			response.setContentType("text/plain");  
		    response.setCharacterEncoding("UTF-8");
		    // Write response body.
		    response.getWriter().write(jsonResponse.toString());
			
			// Response data type json
			/*response.setContentType("application/json");
			response.setHeader("cache-control", "no-cache");
			PrintWriter out = response.getWriter();
			out.print(jsonResponse);
			out.flush();*/
	}

}

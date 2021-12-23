package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {
	private final List<Double> rValues = Arrays.asList(1.0, 2.0, 3.0, 4.0, 5.0);
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Utils.getDoubleParameter(request, "x");
			Utils.getDoubleParameter(request, "y");
			double r = Utils.getDoubleParameter(request, "r");
			
			if (! rValues.contains(r))
				throw new Exception("Wrong R");
			
			getServletContext().getRequestDispatcher("/area_check").forward(request, response);
		} catch (Exception ignored) {
			response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		}
	}
}

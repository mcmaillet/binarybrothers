package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import hardware.Proximity;

@WebServlet(asyncSupported = true, urlPatterns = { "/SnowServlet" })
public class SnowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String json = new Gson().toJson(Proximity.getHistoricalSnow());
		response.setContentType("application/json");
		response.getWriter().write(json);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String json = new Gson().toJson(Proximity.getHistoricalSnow(5));
		response.setContentType("application/json");
		response.getWriter().write(json);
	}

}

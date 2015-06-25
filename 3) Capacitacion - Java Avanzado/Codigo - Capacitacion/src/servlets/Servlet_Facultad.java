package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.AlumnoBean;
import beans.FacultadBean;
import dao.interfaces.AlumnoDAO;
import dao.interfaces.FacultadDAO;
import daofactory.DAOFactory;

/**
 * Servlet implementation class Servlet_Facultad
 */
@WebServlet("/Servlet_Facultad")
public class Servlet_Facultad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_Facultad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion= request.getParameter("accion");
		System.out.println(accion);
		 if(accion.equals("listar")){
			try {
				DAOFactory dao=DAOFactory.getDaoFactory(DAOFactory.MYSQL);
				FacultadDAO facu=dao.getFacultadDAO();
				List<FacultadBean> facultad=facu.listarFacultad();
				
				request.setAttribute("facultad", facultad);
				request.getRequestDispatcher("/alumno/ListarFacultad.jsp").forward(request, response);
				
			} catch (Exception e) {
				// TODO: handle exception
				System.out.print(e.getMessage());
			}
		
		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

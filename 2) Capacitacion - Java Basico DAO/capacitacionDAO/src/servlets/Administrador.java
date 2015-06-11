package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.AdministradorBean;

import dao.interfaces.AdministradorDao;
import daofactory.DaoFactory;

/**
 * Servlet implementation class Administrador
 */
@WebServlet("/Administrador")
public class Administrador extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Administrador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesiones = request.getSession();
		sesiones.removeAttribute("admin");
		
		request.setAttribute("mensaje", "Sesión cerrada");
		request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String usuario = request.getParameter("txt_usuario");
			String clave = request.getParameter("txt_clave");
			
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			AdministradorDao admindao = dao.getAdministradorDao();
			AdministradorBean adminbean = admindao.validar(usuario, clave);
			
			if(adminbean == null){
				
				//response.sendRedirect("admin/login.jsp");
				
				request.setAttribute("mensaje", "Datos incorrectos");
				request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
			}else{
				HttpSession sesiones = request.getSession();
				//sesiones.setAttribute("nombre", adminbean.getNombre());
				//sesiones.setAttribute("id", adminbean.getId());
				
				sesiones.setAttribute("admin", adminbean);
				
				request.getRequestDispatcher("/admin/bienvenido.jsp").forward(request, response);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
	}

}

package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.MD5;

import beans.AdminBean;
import beans.AlumnoBean;
import beans.FacultadBean;
import dao.interfaces.AlumnoDAO;
import dao.interfaces.FacultadDAO;
import daofactory.DAOFactory;

/**
 * Servlet implementation class Servlet_Alumno
 */
@WebServlet("/Servlet_Alumno")
public class Servlet_Alumno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_Alumno() {
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
		if(accion.equals("registrar")){

			try {
		
				 //facultad
				DAOFactory dao=DAOFactory.getDaoFactory(DAOFactory.MYSQL);
				FacultadDAO facu=dao.getFacultadDAO();
				List<FacultadBean> facultad=facu.listarFacultad();
				
				request.setAttribute("facultad", facultad);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.print(e.getMessage());
			}
			
			request.getRequestDispatcher("/alumno/RegistrarAlumno.jsp").forward(request, response);
			
		}else if(accion.equals("listar")){
			try {
				DAOFactory dao=DAOFactory.getDaoFactory(DAOFactory.MYSQL);
				AlumnoDAO alu=dao.getAlumnoDAO();
				List<AlumnoBean> alumnos=alu.listarAlumnos();
				
				request.setAttribute("alumnos", alumnos);
				request.getRequestDispatcher("/alumno/ListarAlumno.jsp").forward(request, response);
				
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
		
		DAOFactory dao=DAOFactory.getDaoFactory(DAOFactory.MYSQL);
		String usuario=request.getParameter("usuariologin");
		String claveusuario=request.getParameter("clavelogin");
		if(usuario!=null && claveusuario!=null){
		
		System.out.println(claveusuario);
		
		AlumnoDAO aluDAO=dao.getAlumnoDAO();
		AlumnoBean alum=aluDAO.confirmarLogin(usuario, claveusuario);
		
		if(alum==null){
			System.out.println("estoy aqui 1");
			request.setAttribute("mensaje", "Error");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}else {
			System.out.println("estoy aqui 2");
			HttpSession sesion=request.getSession();
			sesion.setAttribute("obj", alum);
			request.getRequestDispatcher("/alumno/Bienvenidos.jsp").forward(request, response);	
		}
		
		}else{
			
		try {
			//dao
		
			AlumnoDAO alu=dao.getAlumnoDAO();
			
			//facultad
			FacultadDAO facu=dao.getFacultadDAO();
			List<FacultadBean> facultad=facu.listarFacultad();
			
			
			//buscar
			String accion = request.getParameter("accion");
			if(accion.equals("buscar")){
				
				try {
					String buscarAlumno=request.getParameter("buscarAlumno");
					System.out.println(buscarAlumno);
					AlumnoBean alumnos=alu.buscarAlumno(buscarAlumno);
					
					request.setAttribute("facultad", facultad);
					request.setAttribute("alumnos", alumnos);
					request.setAttribute("id", buscarAlumno);
						
					request.getRequestDispatcher("/alumno/BuscarAlumno.jsp").forward(request, response);
					
			
				} catch (Exception e) {
					// TODO: handle exception
					System.out.print(e.getMessage());
				}	
			
				
			  }else if(accion.equals("registrar")){
			System.out.println("estoy en registrar");
			//registrar
			AlumnoBean alumno= new AlumnoBean();
			
			alumno.setNombre(request.getParameter("nombre"));
			alumno.setApellidopat(request.getParameter("apellido"));
			alumno.setSexo(request.getParameter("sexo"));
			alumno.setIdfacultad(Integer.parseInt(request.getParameter("facultad")));
			alumno.setFecNac(request.getParameter("fecha"));
			alumno.setUsuario(request.getParameter("usuario"));

			String clave=(request.getParameter("clave"));
			
			MD5 claseMD5 = new MD5();
			String claveNueva= claseMD5.crypt(clave);
			alumno.setClave(claveNueva);
		
				boolean flag;
				
				flag=alu.registrar(alumno);
				if(flag && request.getParameter("accion")==null){
					request.setAttribute("mensaje", "alumno Guardado");
					//response.sendRedirect("Servlet_Alumno?accion=listar");
				}else{
					request.setAttribute("mensaje", "Error");
				}
				
			response.sendRedirect("Servlet_Alumno?accion=listar");
			  }	  	
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		}
	}

}

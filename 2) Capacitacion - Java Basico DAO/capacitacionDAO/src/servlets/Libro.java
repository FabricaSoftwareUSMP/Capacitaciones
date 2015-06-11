package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.GeneroBean;
import beans.LibroBean;

import dao.interfaces.GeneroDao;
import dao.interfaces.LibroDao;
import daofactory.DaoFactory;

/**
 * Servlet implementation class Libro
 */
@WebServlet("/Libro")
public class Libro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Libro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */// este metodo solo indentifica la accion que selecciones y llama de inmediato al jsp correspondiente.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion = request.getParameter("accion");
		
		if(accion.equals("agregar")){
			
			request.getRequestDispatcher("/admin/libros_agregar.jsp")
											.forward(request, response);
		}else if(accion.equals("listar")){
			try {
				
				DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
				LibroDao librodao = dao.getLibroDao();
				Vector<LibroBean> libros = librodao.seleccionarTodos();
				
				request.setAttribute("libros", libros);
				request.getRequestDispatcher("/admin/libros_listar.jsp")
												.forward(request, response);
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
		}else if(accion.equals("eliminar")){
			try {
				String id = request.getParameter("id");
				
				DaoFactory dao= DaoFactory.getDAOFactory(DaoFactory.MYSQL);
				LibroDao librodao = dao.getLibroDao();
				boolean flag = librodao.eliminar(Integer.parseInt(id));
				if(flag){
					request.setAttribute("mensaje", "Libro eliminado");
				}else{
					request.setAttribute("mensaje", "Ocurrió un error");
				}
				
				request.getRequestDispatcher("/admin/resultado.jsp").forward(request, response);	
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
		}else if(accion.equals("editar")){
			try {
				String id = request.getParameter("id");
				
				DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
				
				LibroDao librodao = dao.getLibroDao();
				LibroBean libro = librodao.seleccionarPorId(Integer.parseInt(id));
				request.setAttribute("libro", libro);
				
				GeneroDao generodao = dao.getGeneroDao();
				Vector<GeneroBean> generos = generodao.seleccionarTodos();
				request.setAttribute("generos", generos);
				
				request.getRequestDispatcher("/admin/libros_editar.jsp").forward(request, response);
				
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */// este metodo permite enviar datos para ser guardados por ende solo seutiliaran para als acciones crear(registrar) y actualizar
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {
			LibroBean libro = new LibroBean();
			libro.setTitulo( request.getParameter("txt_titulo") );
			libro.setPrecio( Double.parseDouble(request.getParameter("txt_precio")) );
			libro.setIsbn( request.getParameter("txt_isbn") );
			libro.setDescripcion( request.getParameter("txt_sinopsis") );
			libro.setGenero_id( Integer.parseInt(request.getParameter("sel_genero")) );
			libro.setEditorial_id( Integer.parseInt(request.getParameter("sel_editorial")) );
			
			DaoFactory dao= DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			LibroDao librodao = dao.getLibroDao();
			
			boolean flag;
			if(request.getParameter("accion") != null &&
					request.getParameter("accion").equals("actualizar")){
				libro.setId(Integer.parseInt(request.getParameter("txt_id")));
				flag = librodao.actualizar(libro);
			}else{
				flag = librodao.crear(libro);
			}
			
			if(flag){
				request.setAttribute("mensaje", "Libro guardado");
			}else{
				request.setAttribute("mensaje", "Ocurrió un error");
			}
			
			request.getRequestDispatcher("/admin/resultado.jsp").forward(request, response);	
		} catch (Exception e) {
			out.print(e.getMessage());
		}
	}

}

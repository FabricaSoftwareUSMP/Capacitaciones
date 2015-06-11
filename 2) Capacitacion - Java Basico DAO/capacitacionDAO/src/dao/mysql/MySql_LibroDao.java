package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.LibroBean;
import dao.interfaces.LibroDao;
import daofactory.MySqlDaoFactory;


public class MySql_LibroDao 
					extends MySqlDaoFactory
						implements LibroDao{

	@Override
	public boolean crear(LibroBean libro) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "insert into libros " +
			" (titulo, precio, isbn, sinopsis, genero_id, editorial_id) " +  
			" values " +
			" ('"+libro.getTitulo()+"', '"+libro.getPrecio()+"', " +
			" '"+libro.getIsbn()+"', '"+libro.getDescripcion()+"', " +
			" '"+libro.getGenero_id()+"', '"+libro.getEditorial_id()+"')";
			
			int filas = stmt.executeUpdate(query);
			if(filas == 1){
				flag = true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return flag;
	}

	@Override
	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "delete from libros where id=" + id;
			
			int filas = stmt.executeUpdate(query);
			if(filas == 1){
				flag = true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return flag;
	}

	@Override
	public boolean actualizar(LibroBean libro) throws Exception {
		boolean flag = false;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "update libros set " +
					"titulo='"+libro.getTitulo()+"', " +
					"precio='"+libro.getPrecio()+"', " +
					"isbn='"+libro.getIsbn()+"', " +
					"sinopsis='"+libro.getDescripcion()+"'," +
					"genero_id='"+libro.getGenero_id()+"', " +
					"editorial_id='"+libro.getEditorial_id()+"' " +
					"where id=" + libro.getId();
			
			int filas = stmt.executeUpdate(query);
			if(filas == 1){
				flag = true;
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
	}

	@Override
	public Vector<LibroBean> seleccionarTodos() throws Exception {
		Vector<LibroBean> libros = new Vector<LibroBean>();	
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String query = "select id, titulo, precio from libros";
			
			ResultSet rs = stmt.executeQuery(query);

			LibroBean libro = null;
			while(rs.next()){
				libro = new LibroBean();
				libro.setId(rs.getInt("id"));
				libro.setTitulo(rs.getString("titulo"));
				libro.setPrecio(rs.getDouble("precio"));
				
				libros.add(libro);
			}	
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return libros;
	}

	@Override
	public LibroBean seleccionarPorId(int id) throws Exception {
		// TODO Auto-generated method stub
		LibroBean libro = null;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String query = "select id, titulo, precio, isbn, " +
			"sinopsis, genero_id, editorial_id " +
			"from libros " +
			"where id=" + id;
			
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()){
				libro = new LibroBean();
				libro.setId( rs.getInt("id") );
				libro.setTitulo( rs.getString("titulo") );
				libro.setPrecio( rs.getDouble("precio") );
				libro.setIsbn( rs.getString("isbn") );
				libro.setDescripcion( rs.getString("sinopsis") );
				libro.setGenero_id( rs.getInt("genero_id") );
				libro.setEditorial_id( rs.getInt("editorial_id") );
			}			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return libro;
	}

	
}

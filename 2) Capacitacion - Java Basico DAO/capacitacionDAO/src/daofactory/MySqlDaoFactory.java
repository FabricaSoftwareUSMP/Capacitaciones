package daofactory;

import java.sql.Connection;
import java.sql.DriverManager;

import dao.interfaces.AdministradorDao;
import dao.interfaces.GeneroDao;
import dao.interfaces.LibroDao;
import dao.mysql.MySql_AdministradorDao;
import dao.mysql.MySql_GeneroDao;
import dao.mysql.MySql_LibroDao;

public class MySqlDaoFactory extends DaoFactory {

	public static Connection obtenerConexion(){
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/libreria";
			String user = "root";
			String password ="root";
			con = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return con;
	}
	
	public LibroDao getLibroDao(){
		return new MySql_LibroDao();
	}

	@Override
	public GeneroDao getGeneroDao() {
		// TODO Auto-generated method stub
		return new MySql_GeneroDao();
	}

	@Override
	public AdministradorDao getAdministradorDao() {
		// TODO Auto-generated method stub
		return new MySql_AdministradorDao();
	}

	
}

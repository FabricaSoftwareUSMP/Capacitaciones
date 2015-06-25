package daofactory;

import java.sql.Connection;
import java.sql.DriverManager;

import dao.interfaces.*;
import dao.mysql.*;

public class MySqlDaoFactory extends DaoFactory {

	public static Connection obtenerConexion(){
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/litos";
			String user = "root";
			String password ="root";
			con = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return con;
	}
	
	
	@Override
	public ProductoDao getProductoDao() {
		// TODO Auto-generated method stub
		return new MySql_ProductoDao();
	}

	@Override
	public HamburguesaDao getHamburguesaDao() {
		// TODO Auto-generated method stub
		return new MySql_HamburguesaDao();
	}

	@Override
	public PapasDao getPapasDao() {
		// TODO Auto-generated method stub
		return new MySql_PapasDao();
	}

	@Override
	public CremasDao getCremasDao() {
		// TODO Auto-generated method stub
		return new MySql_CremasDao();
	}
	
	



}
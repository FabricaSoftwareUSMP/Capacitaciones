package daofactory;

import java.sql.Connection;
import java.sql.DriverManager;

import dao.interfaces.AlumnoDAO;
import dao.interfaces.FacultadDAO;
import dao.mysql.MySql_AlumnoDAO;
import dao.mysql.MySql_Facultad;

public class MySqlDAOFactory extends DAOFactory {
		
	public static Connection obtenerConexion(){
		Connection conexion=null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				String url = "jdbc:mysql://localhost:3307/alumno";
				conexion = DriverManager.getConnection(url, "root", "root");
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e.getMessage());
			}
			return conexion;
	}



	@Override
	public AlumnoDAO getAlumnoDAO() {
		// TODO Auto-generated method stub
		return new MySql_AlumnoDAO();
	}

	@Override
	public FacultadDAO getFacultadDAO() {
		// TODO Auto-generated method stub
		return new MySql_Facultad();
	}
}

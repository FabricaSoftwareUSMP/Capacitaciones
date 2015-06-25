package daofactory;

import dao.interfaces.AlumnoDAO;
import dao.interfaces.FacultadDAO;

public abstract class DAOFactory {
	public static final int MYSQL=1;
	public static final int SQLSERVER=2;
	public static final int ORACLE=3;
	
	//abstract
	public abstract AlumnoDAO getAlumnoDAO();
	public abstract FacultadDAO getFacultadDAO();
	
	public static DAOFactory getDaoFactory(int factory){
		switch(factory){
		case MYSQL:
			return new MySqlDAOFactory();
		default:
			return null;
		}
	}
}

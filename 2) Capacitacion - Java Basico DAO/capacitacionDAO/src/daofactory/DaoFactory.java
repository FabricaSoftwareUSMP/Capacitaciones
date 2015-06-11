package daofactory;
import dao.interfaces.*;

public abstract class DaoFactory {
	public static final int MYSQL 		= 1;
	public static final int SQLSERVER 	= 2;
	public static final int ORACLE 		= 3;

	public abstract LibroDao getLibroDao();
	public abstract GeneroDao getGeneroDao();
	public abstract AdministradorDao getAdministradorDao();
	
	public static DaoFactory getDAOFactory(int factory){
		
		switch (factory) {
			case MYSQL:
				return new MySqlDaoFactory();
			case SQLSERVER:
				//return new SqlServerDaoFactory();
			case ORACLE:
				//return new OracleDaoFactory();
			default:
				return null;
		}
	}
}

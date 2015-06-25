package daofactory;

import dao.interfaces.*;

public abstract class DaoFactory {
	public static final int MYSQL 		= 1;
	public static final int SQLSERVER 	= 2;
	public static final int ORACLE 		= 3;

	public abstract ProductoDao getProductoDao();
	public abstract HamburguesaDao getHamburguesaDao();
	public abstract PapasDao getPapasDao();
	public abstract CremasDao getCremasDao();
	
	
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

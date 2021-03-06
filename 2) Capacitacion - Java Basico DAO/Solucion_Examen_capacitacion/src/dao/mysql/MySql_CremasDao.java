package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.CremasBean;
import beans.HamburguesaBean;
import dao.interfaces.CremasDao;
import dao.interfaces.HamburguesaDao;
import dao.interfaces.PapasDao;
import dao.interfaces.ProductoDao;
import daofactory.MySqlDaoFactory;

public class MySql_CremasDao extends MySqlDaoFactory implements CremasDao {

	@Override
	public Vector<CremasBean> seleccionarTodos() throws Exception {
		// TODO Auto-generated method stub
		Vector<CremasBean> cremas=new Vector<CremasBean>();
		try{
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String query = "select id, nombre from cremas";
			ResultSet rs = stmt.executeQuery(query);

			CremasBean crema = null;
			while(rs.next()){
				crema = new CremasBean();
				crema.setId(rs.getInt("id"));
				crema.setNombre(rs.getString("nombre"));
				
				cremas.add(crema);
			}	
			
			
		}catch(Exception e){
			System.out.print(e.getMessage());
		}
		
		
		return cremas;
	}
	
}

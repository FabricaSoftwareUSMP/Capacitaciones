package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.HamburguesaBean;
import dao.interfaces.HamburguesaDao;
import daofactory.MySqlDaoFactory;

public class MySql_HamburguesaDao extends MySqlDaoFactory implements HamburguesaDao{

	@Override
	public Vector<HamburguesaBean> seleccionarTodos() throws Exception {
		// TODO Auto-generated method stub
		Vector<HamburguesaBean> hamburguesas=new Vector<HamburguesaBean>();
		try{
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String query = "select id, nombre from hamburguesa";
			ResultSet rs = stmt.executeQuery(query);

			HamburguesaBean hamburguesa = null;
			while(rs.next()){
				hamburguesa = new HamburguesaBean();
				hamburguesa.setId(rs.getInt("id"));
				hamburguesa.setNombre(rs.getString("nombre"));
				
				hamburguesas.add(hamburguesa);
			}	
			
			
		}catch(Exception e){
			System.out.print(e.getMessage());
		}
		
		
		return hamburguesas;
	}
	


}

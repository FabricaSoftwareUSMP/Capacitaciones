package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.GeneroBean;
import beans.LibroBean;
import dao.interfaces.GeneroDao;
import daofactory.MySqlDaoFactory;

public class MySql_GeneroDao extends MySqlDaoFactory
									implements GeneroDao{

	@Override
	public Vector<GeneroBean> seleccionarTodos() throws Exception {
		Vector<GeneroBean> generos = new Vector<GeneroBean>();	
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String query = "select id, nombre from generos";
			
			ResultSet rs = stmt.executeQuery(query);

			GeneroBean genero = null;
			while(rs.next()){
				genero = new GeneroBean();
				genero.setId(rs.getInt("id"));
				genero.setNombre(rs.getString("nombre"));
				
				generos.add(genero);
			}	
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return generos;	
	}

	
}

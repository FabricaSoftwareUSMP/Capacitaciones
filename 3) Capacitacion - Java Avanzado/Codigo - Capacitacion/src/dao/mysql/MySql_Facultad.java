package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.AlumnoBean;
import beans.FacultadBean;
import dao.interfaces.FacultadDAO;
import daofactory.MySqlDAOFactory;

public class MySql_Facultad extends MySqlDAOFactory implements FacultadDAO{

	@Override
	public List<FacultadBean> listarFacultad() throws Exception {
		// TODO Auto-generated method stub
		List<FacultadBean> facultad=new ArrayList<FacultadBean>();
		try {
			Connection conexion=MySqlDAOFactory.obtenerConexion();
			Statement st=conexion.createStatement();
			
			String sql="select * from facultad";
			ResultSet rs=st.executeQuery(sql);
			FacultadBean facu=null;
			while(rs.next()){
				facu= new FacultadBean();
				facu.setIdfacultad(rs.getInt("idfacultad"));
				facu.setNombre(rs.getString("nombre"));
				
				facultad.add(facu);
			
			}
		} catch (Exception e) {
			// TODO: handle exceptions
			System.out.println(e.getMessage());
		}
		return facultad;
	}

}

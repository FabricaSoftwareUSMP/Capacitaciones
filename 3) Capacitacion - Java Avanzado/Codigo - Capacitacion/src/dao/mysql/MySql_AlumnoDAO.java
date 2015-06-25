package dao.mysql;

import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import util.MD5;

import beans.AdminBean;
import beans.AlumnoBean;
import dao.interfaces.AlumnoDAO;
import daofactory.MySqlDAOFactory;

public class MySql_AlumnoDAO extends MySqlDAOFactory implements AlumnoDAO{

	@Override
	public boolean registrar(AlumnoBean alumno) throws Exception {
		// TODO Auto-generated method stub
		boolean flag=false;
		try {
			Connection conexion=MySqlDAOFactory.obtenerConexion();
			Statement st=conexion.createStatement();
			
			String sql="insert into alumnos(nombre,apellidopat,sexo,fechNac,idfacultad,usuario,clave)" +
					"values('"+alumno.getNombre()+"','"+alumno.getApellidopat()+"','"+alumno.getSexo()+"'," +
							"'"+alumno.getFecNac()+"', '"+alumno.getIdfacultad()+"','"+alumno.getUsuario()+"' ," +
									"'"+alumno.getClave()+"')";
			System.out.println(sql);
			int filas=st.executeUpdate(sql);
			if(filas==1){
				flag=true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		return flag;
	}

	@Override
	public List<AlumnoBean> listarAlumnos() throws Exception {
		// TODO Auto-generated method stub
		List<AlumnoBean> alumnos=new ArrayList<AlumnoBean>();
		try {
			Connection conexion=MySqlDAOFactory.obtenerConexion();
			Statement st=conexion.createStatement();
			
			String sql="SELECT * FROM alumnos";
			System.out.println(sql);
			ResultSet rs=st.executeQuery(sql);
			AlumnoBean alu=null;
			while(rs.next()){
				alu= new AlumnoBean();
				alu.setId(rs.getInt("idalumno"));
				alu.setNombre(rs.getString("nombre"));
				alu.setApellidopat(rs.getString("apellidopat"));
				alu.setSexo(rs.getString("sexo"));
				alu.setFecNac(rs.getString("fechNac"));
				alu.setIdfacultad(Integer.parseInt((rs.getString("idfacultad"))));
				alu.setUsuario(rs.getString("usuario"));
				alu.setClave(rs.getString("clave"));
				
				alumnos.add(alu);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return alumnos;
	}

	@Override
	public AlumnoBean buscarAlumno(String apellido) throws Exception {
		// TODO Auto-generated method stub
		AlumnoBean alu=null;
		try {
			Connection conexion= MySqlDAOFactory.obtenerConexion();
			Statement st=conexion.createStatement();
			
			String sql="select * from alumnos where apellidopat='"+apellido+"'";
			ResultSet rs=st.executeQuery(sql);
			if(rs.next()){
				alu= new AlumnoBean();
				alu.setId(rs.getInt("idalumno"));
				alu.setNombre(rs.getString("nombre"));
				alu.setApellidopat(rs.getString("apellidopat"));
				alu.setSexo(rs.getString("sexo"));
				alu.setFecNac(rs.getString("fechNac"));
				alu.setIdfacultad(Integer.parseInt((rs.getString("idfacultad"))));
				alu.setUsuario(rs.getString("usuario"));
				alu.setUsuario(rs.getString("clave"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		return alu;
	}

	@Override
	public AlumnoBean capturarAlumno(String id) throws Exception {
		// TODO Auto-generated method stub
		AlumnoBean alu=null;
		try {
			Connection conexion= MySqlDAOFactory.obtenerConexion();
			Statement st=conexion.createStatement();
			
			String sql="select * from alumnos where idalumno="+id;
			ResultSet rs=st.executeQuery(sql);
			if(rs.next()){
				alu= new AlumnoBean();
				alu.setId(rs.getInt("idalumno"));
				alu.setNombre(rs.getString("alumno"));
				alu.setApellidopat(rs.getString("apellidopat"));
				alu.setSexo(rs.getString("sexo"));
				alu.setFecNac(rs.getString("fechNac"));
				alu.setIdfacultad(Integer.parseInt((rs.getString("idfacultad"))));
				alu.setUsuario(rs.getString("usuario"));
				alu.setClave(rs.getString("clave"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		return alu;
	}

	@Override
	public AlumnoBean confirmarLogin(String usuario, String clave) {
		// TODO Auto-generated method stub
		AlumnoBean alu=null;
		try {
			Connection conexion=MySqlDAOFactory.obtenerConexion();
			Statement st=conexion.createStatement();
			
			String sql="select idalumno from alumnos where usuario='"+usuario+"' and clave='"+MD5.crypt(clave)+"'";
			ResultSet rs=st.executeQuery(sql);
			
			if(rs.next()){
				alu= new AlumnoBean();
				alu.setId(rs.getInt("idalumno"));
			}
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
			// TODO: handle exception
		}
		return alu;
	}
	
}

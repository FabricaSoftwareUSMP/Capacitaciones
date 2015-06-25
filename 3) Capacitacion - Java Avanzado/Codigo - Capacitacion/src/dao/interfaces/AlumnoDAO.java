package dao.interfaces;

import java.util.List;

import beans.AdminBean;
import beans.AlumnoBean;


public interface AlumnoDAO {
	
	public AlumnoBean confirmarLogin(String usuario, String clave);
	public boolean registrar(AlumnoBean alumno) throws Exception;
	List<AlumnoBean> listarAlumnos() throws Exception;
	
	public AlumnoBean capturarAlumno(String id) throws Exception;
	//buscar
	public AlumnoBean buscarAlumno(String apellido) throws Exception;
}

package dao.interfaces;

import java.util.Vector;

import beans.LibroBean;

public interface LibroDao {

	public boolean crear(LibroBean libro) throws Exception;

	public boolean eliminar(int id) throws Exception;

	public boolean actualizar(LibroBean libro) throws Exception;
	
	public Vector<LibroBean> seleccionarTodos() throws Exception;
	
	public LibroBean seleccionarPorId(int id) throws Exception;
}

package dao.interfaces;

import java.util.Vector;

import beans.GeneroBean;

public interface GeneroDao {

	public Vector<GeneroBean> seleccionarTodos() throws Exception;
}

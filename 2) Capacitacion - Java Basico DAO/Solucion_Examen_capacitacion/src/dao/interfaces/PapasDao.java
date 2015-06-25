package dao.interfaces;

import java.util.Vector;
import beans.PapasBean;

public interface PapasDao {
	
	public Vector<PapasBean> seleccionarTodos() throws Exception;

}

package dao.interfaces;

import java.util.Vector;
import beans.HamburguesaBean;

public interface HamburguesaDao {
	
	public Vector<HamburguesaBean> seleccionarTodos() throws Exception;
}

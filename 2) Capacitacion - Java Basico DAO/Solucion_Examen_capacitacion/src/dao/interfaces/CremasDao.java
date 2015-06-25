package dao.interfaces;
import beans.CremasBean;
import java.util.Vector;


public interface CremasDao {

	public Vector<CremasBean> seleccionarTodos() throws Exception;
}

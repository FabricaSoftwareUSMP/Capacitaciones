package dao.interfaces;

import java.util.List;

import beans.FacultadBean;

public interface FacultadDAO {
	List<FacultadBean> listarFacultad() throws Exception;
}

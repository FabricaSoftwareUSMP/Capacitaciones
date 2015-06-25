package dao.mysql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import beans.ProductoBean;
import dao.interfaces.ProductoDao;
import daofactory.MySqlDaoFactory;

public class MySql_ProductoDao extends MySqlDaoFactory implements ProductoDao{

	@Override
	public boolean crear(ProductoBean producto) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "insert into producto " +
			" (nombre_cliente, hamburguesa_id, papas_id, precio, crema_id) " +  
			" values " +
			" ('"+producto.getNombre_cliente()+"', '"+producto.getHambuerguesa_id()+"', " +
			" '"+producto.getPapas_id()+"', '"+producto.getPrecio()+"', " +
			" '"+producto.getCrema_id()+"')";
			
			int filas = stmt.executeUpdate(query);
			if(filas == 1){
				flag = true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return flag;
	}

	@Override
	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "delete from producto where id=" + id;
			
			int filas = stmt.executeUpdate(query);
			if(filas == 1){
				flag = true;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return flag;
		
	}

	@Override
	public boolean actualizar(ProductoBean producto) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "update producto set " +
					"nombre_cliente='"+producto.getNombre_cliente()+"', " +
					"hamburguesa_id='"+producto.getHambuerguesa_id()+"', " +
					"papas_id='"+producto.getPapas_id()+"', " +
					"precio='"+producto.getPrecio()+"'," +
					"crema_id='"+producto.getCrema_id()+"' " +
					"where id="+producto.getId();
		
			
			
			int filas = stmt.executeUpdate(query);
			if(filas == 1){
				flag = true;
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return flag;
	
	}

	@Override
	public Vector<ProductoBean> seleccionarTodos() throws Exception {
		Vector<ProductoBean> productos = new Vector<ProductoBean>();	
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String query = "select id, nombre_cliente, precio from producto";
			
			ResultSet rs = stmt.executeQuery(query);

			ProductoBean producto = null;
			while(rs.next()){
				producto = new ProductoBean();
				producto.setId(rs.getInt("id"));
				producto.setNombre_cliente(rs.getString("nombre_cliente"));
				producto.setPrecio(rs.getDouble("precio"));
				
				productos.add(producto);
			}	
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return productos;
	
	}

	@Override
	public ProductoBean seleccionarPorId(int id) throws Exception {
		// TODO Auto-generated method stub
		ProductoBean producto = null;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			String query = "select id, nombre_cliente, hamburguesa_id, papas_id, " +
			"precio, crema_id " +
			"from producto " +
			"where id=" + id;
			
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()){
				producto = new ProductoBean();
				producto.setId( rs.getInt("id") );
				producto.setNombre_cliente( rs.getString("nombre_cliente") );
				producto.setHambuerguesa_id( rs.getInt("hamburguesa_id") );
				producto.setPapas_id( rs.getInt("papas_id"));
				producto.setPrecio( rs.getDouble("precio"));
				producto.setCrema_id( rs.getInt("crema_id") );
			}			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return producto;
	
	}
	
	

}

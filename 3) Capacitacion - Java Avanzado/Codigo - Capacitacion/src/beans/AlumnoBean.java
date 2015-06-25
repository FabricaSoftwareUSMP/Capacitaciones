package beans;

public class AlumnoBean {
	private int id;
	private String nombre;
	private String apellidopat;
	private String sexo;
	private String fecNac;
	private int idfacultad;
	private String clave;
	private String usuario;
	
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public int getIdfacultad() {
		return idfacultad;
	}
	public void setIdfacultad(int idfacultad) {
		this.idfacultad = idfacultad;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidopat() {
		return apellidopat;
	}
	public void setApellidopat(String apellidopat) {
		this.apellidopat = apellidopat;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getFecNac() {
		return fecNac;
	}
	public void setFecNac(String fecNac) {
		this.fecNac = fecNac;
	}
	
	
	
}

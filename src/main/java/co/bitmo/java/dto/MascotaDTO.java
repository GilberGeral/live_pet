package co.bitmo.java.dto;

public class MascotaDTO {
  private String nombre;
  private Short edad;
  private String tipoMascota; // Este campo representa el idMask del tipo de mascota

  // Getters y setters
  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public Short getEdad() {
    return edad;
  }

  public void setEdad(Short edad) {
    this.edad = edad;
  }

  public String getTipoMascota() {
    return tipoMascota;
  }

  public void setTipoMascota(String tipoMascota) {
    this.tipoMascota = tipoMascota;
  }
}
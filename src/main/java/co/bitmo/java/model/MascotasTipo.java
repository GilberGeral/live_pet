package main.java.co.bitmo.java.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "mascotas_tipo")
public class MascotasTipo {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer idTipoMascota;

  private String idMask;
  private String nombre;

  // Getters y Setters

  public Integer getIdTipoMascota() {
    return idTipoMascota;
  }

  public void setIdTipoMascota(Integer idTipoMascota) {
    this.idTipoMascota = idTipoMascota;
  }

  public String getIdMask() {
    return idMask;
  }

  public void setIdMask(String idMask) {
    this.idMask = idMask;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public MascotasTipo() {
    // Puedes usar este constructor si deseas crear un objeto vacío
  }

  public MascotasTipo(String nombre) {
    this.nombre = nombre;
  }

}

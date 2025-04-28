package co.bitmo.java.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Column;

@Entity
@Table(name = "mascotas_tipo")
public class MascotasTipo {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id_tipo_mascota")
  private Integer idTipoMascota;

  @Column(name = "id_mask")
  private String idMask;

  @Column(name = "nombre")
  private String nombre;

  @Column(name = "icono")
  private String icono;

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

  public String getIcono() {
    return icono;
  }

  public void setIcono(String icono) {
    this.icono = icono;
  }

  // Constructor vacío
  public MascotasTipo() {}

  // Constructor con nombre
  public MascotasTipo(String nombre) {
    this.nombre = nombre;
  }

}


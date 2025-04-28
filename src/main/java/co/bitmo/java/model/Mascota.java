package co.bitmo.java.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Column;
import java.time.LocalDateTime;

import co.bitmo.java.model.MascotasTipo;

@Entity
@Table(name = "mascotas")
public class Mascota {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id_mascota")
  private Integer idMascota;

  @Column(name = "id_mask", nullable = false, length = 16)
  private String idMask;

  @ManyToOne
  @JoinColumn(name = "id_tipo_mascota", referencedColumnName = "id_tipo_mascota")
  private MascotasTipo tipoMascota;

  @Column(name = "nombre", nullable = false, length = 64)
  private String nombre;

  @Column(name = "edad")
  private Short edad;

  @Column(name = "usable")
  private Boolean usable = true;

  @Column(name = "created_at")
  private LocalDateTime createdAt = LocalDateTime.now();

  @Column(name = "created_by")
  private Short createdBy;

  @Column(name = "updated_at")
  private LocalDateTime updatedAt;

  @Column(name = "updated_by")
  private Short updatedBy;

  public Mascota() {}
  
  public Mascota(Integer idMascota, String nombre, MascotasTipo tipoMascota) {
    this.idMascota = idMascota;
    this.nombre = nombre;
    this.tipoMascota = tipoMascota;
  }
  // Getters y Setters

  public Integer getIdMascota() {
    return idMascota;
  }

  public void setIdMascota(Integer idMascota) {
    this.idMascota = idMascota;
  }

  public String getIdMask() {
    return idMask;
  }

  public void setIdMask(String idMask) {
    this.idMask = idMask;
  }

  public MascotasTipo getTipoMascota() {
    return tipoMascota;
  }

  public void setTipoMascota(MascotasTipo tipoMascota) {
    this.tipoMascota = tipoMascota;
  }

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

  public Boolean getUsable() {
    return usable;
  }

  public void setUsable(Boolean usable) {
    this.usable = usable;
  }

  public LocalDateTime getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(LocalDateTime createdAt) {
    this.createdAt = createdAt;
  }

  public Short getCreatedBy() {
    return createdBy;
  }

  public void setCreatedBy(Short createdBy) {
    this.createdBy = createdBy;
  }

  public LocalDateTime getUpdatedAt() {
    return updatedAt;
  }

  public void setUpdatedAt(LocalDateTime updatedAt) {
    this.updatedAt = updatedAt;
  }

  public Short getUpdatedBy() {
    return updatedBy;
  }

  public void setUpdatedBy(Short updatedBy) {
    this.updatedBy = updatedBy;
  }

}

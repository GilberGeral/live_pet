package co.bitmo.java.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import co.bitmo.java.model.MascotasTipo;

@Repository
public interface MascotasTipoRepository extends JpaRepository<MascotasTipo, Integer> {
  MascotasTipo findByIdMask(String idMask);
}
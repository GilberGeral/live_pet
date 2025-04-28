package co.bitmo.java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import co.bitmo.java.model.Mascota;
import org.springframework.data.domain.Sort;

@Repository
public interface MascotasRepository extends JpaRepository<Mascota, Integer> {
  // Mascota findById(Integer _id);
  Mascota findByIdMask(String idMask);
  List<Mascota> findByUsableTrue(Sort sort);
}

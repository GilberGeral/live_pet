package co.bitmo.java.service;

import co.bitmo.java.model.Mascota;
import co.bitmo.java.repository.MascotasRepository;
import org.springframework.data.domain.Sort;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MascotasService {

  @Autowired
  private MascotasRepository mascotasRepository;

  public Mascota findById(Integer id) {
    return mascotasRepository.findById(id).orElse(null);
  }

  public Mascota findByIdMask(String idMask) {
    return mascotasRepository.findByIdMask(idMask); // <<< NO usar .orElse(null)
  }

  public List<Mascota> findAll() {    
    return mascotasRepository.findByUsableTrue(Sort.by(Sort.Order.desc("idMascota")));
  }
  
}

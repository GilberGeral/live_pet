package co.bitmo.java.service;

import co.bitmo.java.model.MascotasTipo;
import co.bitmo.java.repository.MascotasTipoRepository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MascotasTipoService {

  @Autowired
  private MascotasTipoRepository mascotasTipoRepository;

  public MascotasTipo findById(Integer id) {
    return mascotasTipoRepository.findById(id).orElse(null);
  }

  public List<MascotasTipo> findAll() {
    return mascotasTipoRepository.findAll();
  }
  
}
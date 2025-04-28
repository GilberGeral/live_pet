package co.bitmo.java.controller;

import co.bitmo.java.model.Mascota;
import co.bitmo.java.model.MascotasTipo;
import co.bitmo.java.repository.MascotasRepository;
import co.bitmo.java.repository.MascotasTipoRepository;
import co.bitmo.java.service.MascotasTipoService;
import co.bitmo.java.service.MascotasService;
import co.bitmo.java.util.Respuesta;
import co.bitmo.java.util.Utils;
import co.bitmo.java.dto.MascotaDTO;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.multipart.MultipartFile;//TODO: implementar la carga de la foto

import java.util.List;

@Controller
public class HelloController {
  @Autowired
  private MascotasTipoRepository mascotasTipoRepository;

  @Autowired
  private MascotasRepository mascotasRepository;

  @Autowired
  private MascotasTipoService mascotasTipoService;

  @Autowired
  private MascotasService mascotasService;

  @GetMapping("/")
  public String hello(Model model) {
    model.addAttribute("name", "Mundo desde Spring Boot");
    
    List<MascotasTipo> tiposMascotas = mascotasTipoService.findAll();    
    model.addAttribute("tiposMascotas", tiposMascotas);
    
    List<Mascota> mascotas = mascotasService.findAll();    
    model.addAttribute("mascotas", mascotas);
    
    return "index";//plantilla html de themeleaf
  }

  @GetMapping("/gestionar")
  public String gestionar(Model model) {
    
    List<MascotasTipo> tiposMascotas = mascotasTipoService.findAll();    
    model.addAttribute("tiposMascotas", tiposMascotas);
    
    List<Mascota> mascotas = mascotasService.findAll();    
    model.addAttribute("mascotas", mascotas);

    return "gestionar";
  }

  @PostMapping("/guardarMascota")
  @ResponseBody
  public ResponseEntity<Respuesta> guardarMascota(
    @RequestParam("nombre") String nombre,
    @RequestParam("edad") int edad,
    @RequestParam("tipoMascota") String uuidTipo ) {
  
      // System.out.println("Nombre: " + nombre);
      // System.out.println("Edad: " + edad);
      // System.out.println("Tipo de mascota: " + uuidTipo);

      MascotasTipo tipoMascota = null;
      
      tipoMascota = mascotasTipoRepository.findByIdMask(uuidTipo);
      
      if (tipoMascota == null) {
        return ResponseEntity.badRequest().body(new Respuesta(false, "Tipo de mascota no encontrado"));
      }
      
      Mascota mascota = new Mascota();
      mascota.setNombre(nombre);
      mascota.setEdad((short) edad);
      mascota.setTipoMascota(tipoMascota);
      mascota.setIdMask(Utils.generateRandomString(16));

      try {
        mascotasRepository.save(mascota);
      } catch (Exception e) {        
        System.err.println("Error al ejecutar la consulta (0x000345g): " + e.getMessage());
        e.printStackTrace();
      }
      
      return ResponseEntity.ok(new Respuesta(true, "Mascota guardada exitosamente"));
    
  }//fin de guardar mascota

  @PostMapping("/actualizarMascota")
  @ResponseBody
  public ResponseEntity<Respuesta> actualizarMascota(
    @RequestParam("nombre") String nombre,
    @RequestParam("edad") int edad,
    @RequestParam("tipoMascota") String uuidTipo,
    @RequestParam("idMascota") String idMask ) {
  
      System.out.println("Nombre: " + nombre);
      System.out.println("Edad: " + edad);
      System.out.println("Tipo de mascota: " + uuidTipo);
      System.out.println("ID de mascota: " + idMask);

      MascotasTipo tipoMascota = null;
      
      tipoMascota = mascotasTipoRepository.findByIdMask(uuidTipo);
      
      if (tipoMascota == null) {
        return ResponseEntity.badRequest().body(new Respuesta(false, "Tipo de mascota no encontrado"));
      }
      
      Mascota mascota = mascotasRepository.findByIdMask(idMask);
      if (mascota == null) {
        return ResponseEntity.badRequest().body(new Respuesta(false, "Mascota no encontrada"));
      }

      // mascota.setIdMask(idMask);
      mascota.setNombre(nombre);
      mascota.setEdad((short) edad);
      mascota.setTipoMascota(tipoMascota);

      try {
        mascotasRepository.save(mascota);
      } catch (Exception e) {        
        System.err.println("Error al ejecutar la consulta (0x000346g): " + e.getMessage());
        e.printStackTrace();
      }
      
      return ResponseEntity.ok(new Respuesta(true, "Mascota actualizada exitosamente"));
    
  }//fin de actualizar mascota

  @PostMapping("/borrarMascota")
  @ResponseBody
  public ResponseEntity<Respuesta> borrarMascota(
   
    @RequestParam("idMascota") String idMask ) {
  
      System.out.println("BORRAR ID de mascota: " + idMask);

      Mascota mascota = mascotasRepository.findByIdMask(idMask);
      if (mascota == null) {
        return ResponseEntity.badRequest().body(new Respuesta(false, "Mascota no encontrada"));
      }

      // mascota.setIdMask(idMask);      
      mascota.setUsable(false);

      try {
        mascotasRepository.save(mascota);
      } catch (Exception e) {        
        System.err.println("Error al ejecutar la consulta (0x000347g): " + e.getMessage());
        e.printStackTrace();
      }
      
      return ResponseEntity.ok(new Respuesta(true, "Mascota borrada exitosamente"));
    
  }//fin de actualizar mascota

}//fin del controller

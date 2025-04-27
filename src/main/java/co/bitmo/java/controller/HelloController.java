package co.bitmo.java.controller;

import main.java.co.bitmo.java.model.Mascota;
import main.java.co.bitmo.java.model.MascotasTipo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

  @GetMapping("/")
  public String hello(Model model) {
    model.addAttribute("name", "Mundo desde Spring Boot");
    
    Mascota[] mascotas = {
      new Mascota(1, "Rex", new MascotasTipo("Perro")),
      new Mascota(2, "Max", new MascotasTipo("Gato")),
      new Mascota(3, "Buddy", new MascotasTipo("Conejo")),
      new Mascota(4, "Charlie", new MascotasTipo("Tortuga")),
      new Mascota(5, "Bella", new MascotasTipo("Pájaro"))
    };
    model.addAttribute("mascotas", mascotas);
    
    return "index";//plantilla html de themeleaf
  }

  @GetMapping("/gestionar")
  public String gestionar(Model model) {

    model.addAttribute("name", "Mundo desde Spring Boot");
    return "gestionar";
  }
}

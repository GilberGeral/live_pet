package co.bitmo.java;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages = "co.bitmo.java.model")
public class CrudApplication {

  public static void main(String[] args) {
    SpringApplication.run(CrudApplication.class, args);
  }

}

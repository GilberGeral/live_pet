package co.bitmo.java.util;

public class Respuesta {
    private boolean success;
    private String mensaje;

    public Respuesta(boolean success, String mensaje) {
        this.success = success;
        this.mensaje = mensaje;
    }

    public boolean isSuccess() {
        return success;
    }

    public String getMensaje() {
        return mensaje;
    }
}

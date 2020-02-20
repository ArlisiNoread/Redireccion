/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Arlisi
 */
public class EventoDTO {
    private String evento, fecha, hora, lugar;

    public EventoDTO(String evento, String fecha, String hora, String lugar) {
        this.evento = evento;
        this.fecha = fecha;
        this.hora = hora;
        this.lugar = lugar;
    }

    public String getEvento() {
        return evento;
    }

    public void setEvento(String evento) {
        this.evento = evento;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    @Override
    public String toString() {
        return "EventoDTO{" + "evento=" + evento + ", fecha=" + fecha + ", hora=" + hora + ", lugar=" + lugar + '}';
    }
    
}

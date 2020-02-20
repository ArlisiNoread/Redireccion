package dao;

import dto.EventoDTO;
import dto.UserPass;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BaseDatos_DAO {

    private String ruta = "./";
    private String nombreArchivoUsuario = "baseDatosUsuarios.txt";
    private String nombreArchivoEventos = "baseDatosEventos.txt";

    public BaseDatos_DAO() {
        File tmpDir = new File(ruta + nombreArchivoUsuario);
        if (!tmpDir.exists()) {
            try {
                //Creo archivo en caso de que no exista
                tmpDir.createNewFile();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        File tmpDir2 = new File(ruta + nombreArchivoEventos);
        if (!tmpDir2.exists()) {
            try {
                //Creo archivo en caso de que no exista
                tmpDir2.createNewFile();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
    }

    public void guardarEvento(EventoDTO eventoDTO) {
        try {
            Files.write(Paths.get(this.ruta + this.nombreArchivoEventos), (eventoDTO.toString() + "\n").getBytes(), StandardOpenOption.APPEND);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    public ArrayList<String> listaEventos() {
        ArrayList<String> arrayListaEventos = new ArrayList<>();
        
        try {
            File myObj = new File(this.ruta + this.nombreArchivoEventos);
            Scanner myReader = new Scanner(myObj);
            while (myReader.hasNextLine()) {
                String data = myReader.nextLine();
                if(data != ""){
                    arrayListaEventos.add(data);
                }
            }
            myReader.close();
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        return arrayListaEventos;
    }

    public boolean confirmaUsuario(UserPass userPass) {

        File myObj = new File(ruta + nombreArchivoUsuario);
        boolean ret = false;
        try {
            Scanner myReader = new Scanner(myObj);
            while (myReader.hasNextLine()) {
                String data = myReader.nextLine().trim();
                System.out.println("datos: " + data.split(" ", 2)[0]);
                String tmpUser = data.split(" ", 2)[0].trim();
                String tmpPassword = data.split(" ", 2)[1].trim();
                if (tmpUser.equals(userPass.getUsuario()) && tmpPassword.equals(userPass.getContrasena())) {
                    System.out.println("TODO BIEN!");
                    ret = true;
                    break;
                }
            }
            myReader.close();
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        }

        return ret;
    }
}

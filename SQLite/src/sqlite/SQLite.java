/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package sqlite;
import java.sql.*;
/**
 *
 * @author ramon
 */
public class SQLite {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("Hola SQLite");
        //Connection conexion = null;
            // Declaro las variablas en las que guardo la informacion 
            int PS2 =0;
            int DS =0;
            int X360 =0;
            int GBA =0;
            int WII =0;
            String nPS2 ="";
            String nDS ="";
            String nX360 ="";
            String nGBA ="";
            String nWII ="";
        try{
            String ruta = "jdbc:sqlite:C:/Users/ramon/OneDrive/Desktop/Clases/Base de datos/base de datos/venta_de_video_juegos.db";
            Connection conexion = DriverManager.getConnection(ruta);
            Statement peticion = conexion.createStatement();
            //Pido cosas a la base de datos
            // PS2
            String consulta = "SELECT * FROM juegosps2vendidos";
            ResultSet resultados = peticion.executeQuery(consulta);
            while(resultados.next()){
            //System.out.println(resultados.getString("ps2"));
                PS2 = resultados.getInt("PS2");}
            //DS
            consulta = "SELECT * FROM juegosDSvendidos";
            resultados = peticion.executeQuery(consulta);
            while(resultados.next()){DS = resultados.getInt("DS");}
            //x360
            consulta = "SELECT * FROM juegosX360vendidos";
            resultados = peticion.executeQuery(consulta);
            while(resultados.next()){X360 = resultados.getInt("X360");}
            //GBA
            consulta = "SELECT * FROM juegosGBAvendidos";
            resultados = peticion.executeQuery(consulta);
            while(resultados.next()){GBA = resultados.getInt("GBA");}
            //WII
            consulta = "SELECT * FROM juegosWIIvendidos";
            resultados = peticion.executeQuery(consulta);
            while(resultados.next()){WII = resultados.getInt("WII");}
            for(int i=0;i<PS2;i+=100){nPS2 +="#";}
            for(int i=0;i<DS;i+=100){nDS +="#";}
            for(int i=0;i<X360;i+=100){nX360 +="#";}
            for(int i=0;i<GBA;i+=100){nGBA +="#";}
            for(int i=0;i<WII;i+=100){nWII +="#";}
            System.out.println("Los resultados para PS2 son: "+String.valueOf(PS2)+"\t"+nPS2);
            System.out.println("Los resultados para DS son: "+String.valueOf(DS)+"\t"+nDS);
            System.out.println("Los resultados para X360 son: "+String.valueOf(X360)+"\t"+nX360);
            System.out.println("Los resultados para GBA son: "+String.valueOf(GBA)+"\t"+nGBA);
            System.out.println("Los resultados para WII son: "+String.valueOf(WII)+"\t"+nWII);
            
        }catch(SQLException e){
            System.out.println(e.getMessage());}
    }
}

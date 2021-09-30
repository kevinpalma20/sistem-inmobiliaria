/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logic;

import java.sql.*; 

/**
 *
 * @author kpalmall
 */
public class Conexion {
    public static Connection getConexion() throws Exception{
        Connection con = null;
        String usuario = "root";
        String clave = "";//
        //String url = "jdbc:mysql://localhost/dlinmobiliaria";
        String url = "jdbc:mysql://localhost/dlinmobiliaria";
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = (Connection) DriverManager.getConnection(url, usuario, clave);
        return con;
    } 
}

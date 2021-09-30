package logic;

import java.sql.*;  
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

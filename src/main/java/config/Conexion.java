/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author tefhe
 */
public class Conexion //la hacemos para probar las conexiones, no tiene ningún valor en mi proyecto
{
    //atributos
    public String driver="com.mysql.jdbc.Driver";
    
    //metodo para invocar la conexion
    public Connection getConnection() //devuelve un tipo de dato connection
    {
        Connection conexion=null;
        //siempre dentro de un try catch porque hay muchas cosas que pueden estar mal
        try
        {
            Class.forName(driver);
            conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud22566", "root",""); //usuario y contraseña
        }
        catch(ClassNotFoundException|SQLException e)
        {
            System.out.println(e);
            
        } 
        return conexion;
    }
    
    public static void main(String[] args) throws SQLException
    {
        Connection conexion=null;
        Conexion con=new Conexion();
        conexion=con.getConnection();
        
        //consulta sql precargada por si la voy a usar varias veces para que este precompilada para que sea más rápido
        PreparedStatement ps; //iniciales de la variable
        ResultSet rs; //iniciales de variable. Devuelve un conjunto de registros, es como un array multidimencional
        
        ps=conexion.prepareStatement("select * from socios"); //nombre de la tabla
        rs=ps.executeQuery();
        
        
        //para parsear los datos
      while (rs.next())
        {
            int id=rs.getInt("idSocio");
           boolean estado=rs.getBoolean("activo");
            System.out.println("ID: "+id+" Estado: "+estado);
        }
        
        
    }
    
}

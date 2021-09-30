/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package interfaces;

import data.type_property;
import java.util.*;
import logic.Operations;

/**
 *
 * @author umbke
 */
public class type_propertyRepository {
    public type_property findById(String id) { 
         
        List<type_property> listype_property = new ArrayList(); 
        List lista = Operations.listar("SELECT * FROM type_property  WHERE id = '"+ id +"' ");
        
        if ( !lista.isEmpty() ) {
            Object[] row = (Object[]) lista.get(0) ;
            type_property obj = new type_property( row[0].toString() , row[1].toString());
            return obj;
        }
           
        return null;
    }
    
    public List<type_property> findAll() { 
         
        List<type_property> listype_property = new ArrayList(); 
        List lista = Operations.listar("SELECT * FROM type_property");
        
        if ( !lista.isEmpty() ) 
            for (int i = 0; i < lista.size(); i++) {
                Object[] row = (Object[]) lista.get(i) ;
                type_property obj = new type_property( row[0].toString() , row[1].toString());
                listype_property.add(obj);
            } 
        return listype_property;
    }
}

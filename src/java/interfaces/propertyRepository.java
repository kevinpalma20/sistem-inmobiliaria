/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package interfaces;

import data.property;
import java.util.ArrayList;
import java.util.List;
import logic.Operations;

/**
 *
 * @author umbke
 */
public class propertyRepository {
    public List<property> findAll() { 
        List<property> list_property = new ArrayList(); 
        List lista = Operations.listar("SELECT * FROM property");
        
        if ( !lista.isEmpty() ) 
            for (int i = 0; i < lista.size(); i++) {
                //type_propertyRepository type_propertyRepository = new type_propertyRepository();
                Object[] row = (Object[]) lista.get(i) ;
        System.err.println("44444444444444444444444fffff4444444 "+ row[5].toString()); 
                property obj = new property( 
                        row[0].toString(), 
                        row[1].toString(), 
                        row[2].toString(), 
                        Double.parseDouble(row[3].toString()) , 
                        row[4].toString(), 
                        row[5].toString(),
                        true );
                list_property.add(obj);
            } 
        return list_property;
    }
    
}

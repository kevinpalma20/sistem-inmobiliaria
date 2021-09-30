/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import data.employee;
import java.util.*;
import logic.Operations;

/**
 *
 * @author kpalmall
 */
public class employeeRepository {
     public List<employee> findAll() { 
         
        List<employee> lisemployee = new ArrayList(); 
        List lista = Operations.listar("SELECT * FROM employee");
        
        if ( !lista.isEmpty() ) 
            for (int i = 0; i < lista.size(); i++) {
                Object[] row = (Object[]) lista.get(i) ;
                employee obj = new employee( row[0].toString() , row[1].toString(), row[2].toString(), row[3].toString(), row[4].toString(), row[5].toString(), row[6].toString(), row[7].toString());
                lisemployee.add(obj);
            } 
        return lisemployee;
     }
}

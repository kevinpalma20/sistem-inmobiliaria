
package service;

import data.property;
import interfaces.propertyRepository;
import java.util.List;

/**
 *
 * @author umbke
 */
public class propertyService {
    private propertyRepository repository;
    
    public propertyService() {
        repository=new propertyRepository();  
    }
    
    public List<property> findAll() { 
        //System.err.println(repository.findAll().size());
        return repository.findAll();
    }
}

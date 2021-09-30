package service;

import data.employee; 
import interfaces.employeeRepository;
import logic.myFunctions;

public class authService {  
    private employeeRepository repository;
    
    public authService() {
        repository=new employeeRepository();  
    }
    
    public employee login(String emaPho, String password){   
        return repository.findAll().stream()
                .filter( e-> e.getEmail().equals(emaPho) || e.getNumber().equals(emaPho) ) 
                .filter(em->em.getPassword().equals( myFunctions.enMD5(password) ) )
                .findFirst().orElseGet(null);
    }
}

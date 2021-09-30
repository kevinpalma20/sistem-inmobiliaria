/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import data.employee; 
import interfaces.employeeRepository;
import logic.myFunctions;

/**
 *
 * @author kpalmall 
 */
public class authService {  
    private employeeRepository repository;
    
    public authService() {
        repository=new employeeRepository();  
    }
    
    public employee login(String emaPho, String password){ 
        System.err.println( "GAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" );
        System.err.println( repository.findAll().size()+"-" );
        return repository.findAll().stream()
                .filter( e-> e.getEmail().equals(emaPho) || e.getNumber().equals(emaPho) ) 
                .filter(em->em.getPassword().equals( myFunctions.enMD5(password) ) )
                .findFirst().orElseGet(null);
    }
}

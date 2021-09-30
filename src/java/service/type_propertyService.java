/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import data.type_property;
import interfaces.type_propertyRepository;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author umbke
 */
public class type_propertyService {
    private type_propertyRepository repository;
    
    public type_propertyService() {
        repository=new type_propertyRepository();  
    }
    
    public type_property findById(String id) {
        return repository.findAll()
                .stream()
                .filter(c->c.getId().equals(id))
                .collect(Collectors.toList())
                .get(0);
    }
    
    public List<type_property> findAll() {
        return repository.findAll();
    }
}

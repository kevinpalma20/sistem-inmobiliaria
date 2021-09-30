/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;

import java.util.UUID; 
public class type_property {
    private String id = "T"+UUID.randomUUID().toString().toUpperCase().subSequence(0,4); 
    private String name;
    
    public type_property() {  
    }
    
    public type_property(String name) { 
        this.name = name;
    }

    public type_property(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}

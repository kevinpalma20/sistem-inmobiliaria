/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;

import java.util.UUID;

/**
 *
 * @author umbke
 */
public class property {
    private String id = "T"+UUID.randomUUID().toString().toUpperCase().subSequence(0,9),
            name, description, photo;
    private Double price; 
    private String type;
    private Boolean state = true;

    public property() {
    }

    public property(String id, String name, String description, Double price, String type, String photo,  Boolean state) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.photo = photo;
        this.type = type;
        this.state = state;
    } 

    public property(String name, String description, Double price, String photo, String type) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.photo = photo;
        this.type = type;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Boolean getState() {
        return state;
    }

    public void setState(Boolean state) {
        this.state = state;
    }
    
    
}

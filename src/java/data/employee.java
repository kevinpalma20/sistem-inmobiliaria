package data;

import java.util.UUID; 
public class employee {
    private String id = "E"+UUID.randomUUID().toString().toUpperCase().subSequence(0,4); 
    private String firtsname, lastname, dni, email, number, photo; 
    private String password = ""+UUID.randomUUID().toString().toUpperCase().subSequence(0,7);   

    public employee() {  
    }

    public employee(  String firtsname, String lastname, String dni, String email, String number, String photo ) { 
        this.firtsname = firtsname;
        this.lastname = lastname;
        this.dni = dni;
        this.email = email;
        this.number = number;
        this.photo = photo; 
    }

    public employee(String id, String firtsname, String lastname, String dni, String email, String number, String photo , String password ) { 
        this.id = id;
        this.firtsname = firtsname;
        this.lastname = lastname;
        this.dni = dni;
        this.email = email;
        this.number = number;
        this.photo = photo; 
        this.password = password; 
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }
    

    public String getId() {
        return id;
    }

    public String getFirtsname() {
        return firtsname;
    }

    public String getLastname() {
        return lastname;
    }

    public String getEmail() {
        return email;
    }

    public String getNumber() {
        return number;
    }

    public String getPhoto() {
        return photo;
    }

    public String getPassword() {
        return password;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setFirtsname(String firtsname) {
        this.firtsname = firtsname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}

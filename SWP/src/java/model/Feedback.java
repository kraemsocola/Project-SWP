/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author canduykhanh
 */
public class Feedback {
    /*
    [id] int PRIMARY KEY IDENTITY(1, 1),
    [user_id] int,
    [product_id] int,
    [firstname] nvarchar(30),
    [lastname] nvarchar(30),
    [email] nvarchar(250),
    [phone_number] nvarchar(20),
    [note] nvarchar(1000),
    [created_at] datetime,
    [updated_at] datetime
    */
    private int id;
    private int user_id;
    private int product_id;
    private String firstname;
    private String lastname;
    private String email;
    private String phone_number;
    private String note;
    private Date created_at;
    private Date updated_at;

    public Feedback() {
    }

    public Feedback(int id, int user_id, int product_id, String firstname, String lastname, String email, String phone_number, String note, Date created_at, Date updated_at) {
        this.id = id;
        this.user_id = user_id;
        this.product_id = product_id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.phone_number = phone_number;
        this.note = note;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }
    
    
    
}

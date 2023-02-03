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
public class Product {
    private int id;
    private int category_id;
    private String title;
    private int gender_id;
    private int price_in;
    private int price_out;
    private int discount_id;
    private String thumbnail;
    private String description;
    private int size_id;
    private int quantity;
    private Date created_at;
    private Date updated_at;

    public Product() {
    }

    public Product(int id, int category_id, String title, int gender_id, int price_in, int price_out, int discount_id, String thumbnail, String description, int size_id, int quantity, Date created_at, Date updated_at) {
        this.id = id;
        this.category_id = category_id;
        this.title = title;
        this.gender_id = gender_id;
        this.price_in = price_in;
        this.price_out = price_out;
        this.discount_id = discount_id;
        this.thumbnail = thumbnail;
        this.description = description;
        this.size_id = size_id;
        this.quantity = quantity;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getGender_id() {
        return gender_id;
    }

    public void setGender_id(int gender_id) {
        this.gender_id = gender_id;
    }

    public int getPrice_in() {
        return price_in;
    }

    public void setPrice_in(int price_in) {
        this.price_in = price_in;
    }

    public int getPrice_out() {
        return price_out;
    }

    public void setPrice_out(int price_out) {
        this.price_out = price_out;
    }

    public int getDiscount_id() {
        return discount_id;
    }

    public void setDiscount_id(int discount_id) {
        this.discount_id = discount_id;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getSize_id() {
        return size_id;
    }

    public void setSize_id(int size_id) {
        this.size_id = size_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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

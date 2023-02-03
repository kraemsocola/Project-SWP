/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author canduykhanh
 */
public class OrderDetail {
    private int id;
    private int order_id;
    private int product_id;
    private int price;
    private int num;
    private int total_money_in;
    private int total_money_out;

    public OrderDetail() {
    }

    public OrderDetail(int id, int order_id, int product_id, int price, int num, int total_money_in, int total_money_out) {
        this.id = id;
        this.order_id = order_id;
        this.product_id = product_id;
        this.price = price;
        this.num = num;
        this.total_money_in = total_money_in;
        this.total_money_out = total_money_out;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getTotal_money_in() {
        return total_money_in;
    }

    public void setTotal_money_in(int total_money_in) {
        this.total_money_in = total_money_in;
    }

    public int getTotal_money_out() {
        return total_money_out;
    }

    public void setTotal_money_out(int total_money_out) {
        this.total_money_out = total_money_out;
    }
    
    
    
    
}

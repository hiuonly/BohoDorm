/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Nathenial
 */
public class Item {
    private Services services;
    private int quantity;
    private double price;

    public Item() {
    }

    public Item(Services services, int quantity, double price) {
        this.services = services;
        this.quantity = quantity;
        this.price = price;
    }

    public Services getServices() {
        return services;
    }

    public void setServices(Services services) {
        this.services = services;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Item{" + "services=" + services + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
    
}

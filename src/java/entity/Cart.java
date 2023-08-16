/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nathenial
 */
public class Cart {
    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    private Item getItemById(int id){
        for (Item i : items) 
            if(i.getServices().getSrid()==id)
                return i;
        return null;
    }
    
    public int getQuantity(int id){       
        return getItemById(id).getQuantity();
    }
    
    public void addItem(Item t){
        if(getItemById(t.getServices().getSrid()) != null){
            Item i = getItemById(t.getServices().getSrid());
            i.setQuantity(i.getQuantity()+t.getQuantity());
        }else{
            items.add(t);
        }
    }
    
    public void removeItem(int id){
        if(getItemById(id) != null){
            items.remove(getItemById(id));
        }
    }
    public double getTotalMoney(){
        double total = 0;
        for (Item i : items) 
            total += (i.getQuantity()*i.getServices().getPrice());
        return total;
    }
    
}

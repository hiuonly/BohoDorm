/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author MSII
 */
public class Service {
    private int sid;
    private String shimage;
    private String name;
    private String nametype;
    private String status;
    private float price;
    private String describlie;

    public Service() {
    }

    public Service(int sid, String shimage, String name, String nametype, String status, float price, String describlie) {
        this.sid = sid;
        this.shimage = shimage;
        this.name = name;
        this.nametype = nametype;
        this.status = status;
        this.price = price;
        this.describlie = describlie;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getShimage() {
        return shimage;
    }

    public void setShimage(String shimage) {
        this.shimage = shimage;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNametype() {
        return nametype;
    }

    public void setNametype(String nametype) {
        this.nametype = nametype;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescriblie() {
        return describlie;
    }

    public void setDescriblie(String describlie) {
        this.describlie = describlie;
    }

    @Override
    public String toString() {
        return "Service{" + "sid=" + sid + ", shimage=" + shimage + ", name=" + name + ", nametype=" + nametype + ", status=" + status + ", price=" + price + ", describlie=" + describlie + '}';
    }

   
    
}

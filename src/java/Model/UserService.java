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
public class UserService {
    private String cname;
    private int phid;
    private String sname;
    private String simg;
    private float sprice;
    private String stname;
    private int quantity;
    private float price;

    public UserService() {
    }

    public UserService(String cname, int phid, String sname, String simg, float sprice, String stname, int quantity, float price) {
        this.cname = cname;
        this.phid = phid;
        this.sname = sname;
        this.simg = simg;
        this.sprice = sprice;
        this.stname = stname;
        this.quantity = quantity;
        this.price = price;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getPhid() {
        return phid;
    }

    public void setPhid(int phid) {
        this.phid = phid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSimg() {
        return simg;
    }

    public void setSimg(String simg) {
        this.simg = simg;
    }

    public float getSprice() {
        return sprice;
    }

    public void setSprice(float sprice) {
        this.sprice = sprice;
    }

    public String getStname() {
        return stname;
    }

    public void setStname(String stname) {
        this.stname = stname;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "UserService{" + "cname=" + cname + ", phid=" + phid + ", sname=" + sname + ", simg=" + simg + ", sprice=" + sprice + ", stname=" + stname + ", quantity=" + quantity + ", price=" + price + '}';
    }

    
}

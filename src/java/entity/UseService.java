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
public class UseService {
    private int phid;
    private int srid;
    private String uname;
    private String uimg;
    private int quantity;
    private double price;
    private double sprice;

    public UseService() {
    }

    public UseService(int phid, int srid, String uname, String uimg, int quantity, double price, double sprice) {
        this.phid = phid;
        this.srid = srid;
        this.uname = uname;
        this.uimg = uimg;
        this.quantity = quantity;
        this.price = price;
        this.sprice = sprice;
    }

    public void setSprice(double sprice) {
        this.sprice = sprice;
    }

    public double getSprice() {
        return sprice;
    }

   

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg;
    }

    public int getPhid() {
        return phid;
    }

    public void setPhid(int phid) {
        this.phid = phid;
    }

    public int getSrid() {
        return srid;
    }

    public void setSrid(int srid) {
        this.srid = srid;
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
        return "UseService{" + "phid=" + phid + ", srid=" + srid + ", uname=" + uname + ", uimg=" + uimg + ", quantity=" + quantity + ", price=" + price + ", sprice=" + sprice + '}';
    }

}

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
public class Services {
    private int srid;
    private String urlimage;
    private String sname;
    private int stid;
    private double price;
    private String describle;

    public Services() {
    }

    public Services(int srid, String urlimage, String sname, int stid, double price, String describle) {
        this.srid = srid;
        this.urlimage = urlimage;
        this.sname = sname;
        this.stid = stid;
        this.price = price;
        this.describle = describle;
    }

    public int getSrid() {
        return srid;
    }

    public void setSrid(int srid) {
        this.srid = srid;
    }

    public String getUrlimage() {
        return urlimage;
    }

    public void setUrlimage(String urlimage) {
        this.urlimage = urlimage;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getStid() {
        return stid;
    }

    public void setStid(int stid) {
        this.stid = stid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescrible() {
        return describle;
    }

    public void setDescrible(String describle) {
        this.describle = describle;
    }

    @Override
    public String toString() {
        return "Services{" + "srid=" + srid + ", urlimage=" + urlimage + ", sname=" + sname + ", stid=" + stid + ", price=" + price + ", describle=" + describle + '}';
    }

}

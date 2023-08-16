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
public class BookRoom {
    private int phid;
    private int rid;
    private String bimg;
    private String datecheckin;
    private String datecheckout;
    private int bdate;
    private double rprice;
    private double price;

    public BookRoom() {
    }

    public BookRoom(int phid, int rid, String bimg, String datecheckin, String datecheckout, int bdate, double rprice, double price) {
        this.phid = phid;
        this.rid = rid;
        this.bimg = bimg;
        this.datecheckin = datecheckin;
        this.datecheckout = datecheckout;
        this.bdate = bdate;
        this.rprice = rprice;
        this.price = price;
    }

    public double getRprice() {
        return rprice;
    }

    public void setRprice(double rprice) {
        this.rprice = rprice;
    }


    public int getBdate() {
        return bdate;
    }

    public void setBdate(int bdate) {
        this.bdate = bdate;
    }

    

    public String getBimg() {
        return bimg;
    }

    public void setBimg(String bimg) {
        this.bimg = bimg;
    }

    public int getPhid() {
        return phid;
    }

    public void setPhid(int phid) {
        this.phid = phid;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getDatecheckin() {
        return datecheckin;
    }

    public void setDatecheckin(String datecheckin) {
        this.datecheckin = datecheckin;
    }

    public String getDatecheckout() {
        return datecheckout;
    }

    public void setDatecheckout(String datecheckout) {
        this.datecheckout = datecheckout;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "BookRoom{" + "phid=" + phid + ", rid=" + rid + ", bimg=" + bimg + ", datecheckin=" + datecheckin + ", datecheckout=" + datecheckout + ", bdate=" + bdate + ", rprice=" + rprice + ", price=" + price + '}';
    }

}

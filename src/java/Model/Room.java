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
public class Room {
    private int rid;
    private String aimg;
    private String bimg;
    private String cimg;
    private String roomtype;
    private int Peoplenumber;
    private String status;
    private int bednumber;
    private int priceroom;
    private String describle;

    public Room() {
    }

    public Room(int rid, String aimg, String bimg, String cimg, String roomtype, int Peoplenumber,  String status, int bednumber, int priceroom, String describle) {
        this.rid = rid;
        this.aimg = aimg;
        this.bimg = bimg;
        this.cimg = cimg;
        this.roomtype = roomtype;
        this.Peoplenumber = Peoplenumber;
        this.status = status;
        this.bednumber = bednumber;
        this.priceroom = priceroom;
        this.describle = describle;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getAimg() {
        return aimg;
    }

    public void setAimg(String aimg) {
        this.aimg = aimg;
    }

    public String getBimg() {
        return bimg;
    }

    public void setBimg(String bimg) {
        this.bimg = bimg;
    }

    public String getCimg() {
        return cimg;
    }

    public void setCimg(String cimg) {
        this.cimg = cimg;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    public int getPeoplenumber() {
        return Peoplenumber;
    }

    public void setPeoplenumber(int Peoplenumber) {
        this.Peoplenumber = Peoplenumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getBednumber() {
        return bednumber;
    }

    public void setBednumber(int bednumber) {
        this.bednumber = bednumber;
    }

    public int getPriceroom() {
        return priceroom;
    }

    public void setPriceroom(int priceroom) {
        this.priceroom = priceroom;
    }

    public String getDescrible() {
        return describle;
    }

    public void setDescrible(String describle) {
        this.describle = describle;
    }

    @Override
    public String toString() {
        return "Room{" + "rid=" + rid + ", aimg=" + aimg + ", bimg=" + bimg + ", cimg=" + cimg + ", roomtype=" + roomtype + ", Peoplenumber=" + Peoplenumber + ", status=" + status + ", bednumber=" + bednumber + ", priceroom=" + priceroom + ", describle=" + describle + '}';
    }

}

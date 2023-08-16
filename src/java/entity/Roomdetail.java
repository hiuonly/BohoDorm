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
public class Roomdetail {
    private int rid;
    private String urlimage1;
    private String urlimage2;
    private String urlimage3;
    private String roomType;
    private int peopleNumber;
    private int bedNumber;
    private double priceRoom;
    private String describle;

    public Roomdetail() {
    }

    public Roomdetail(int rid, String urlimage1, String urlimage2, String urlimage3, String roomType, int peopleNumber, int bedNumber, double priceRoom, String describle) {
        this.rid = rid;
        this.urlimage1 = urlimage1;
        this.urlimage2 = urlimage2;
        this.urlimage3 = urlimage3;
        this.roomType = roomType;
        this.peopleNumber = peopleNumber;
        this.bedNumber = bedNumber;
        this.priceRoom = priceRoom;
        this.describle = describle;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getUrlimage1() {
        return urlimage1;
    }

    public void setUrlimage1(String urlimage1) {
        this.urlimage1 = urlimage1;
    }

    public String getUrlimage2() {
        return urlimage2;
    }

    public void setUrlimage2(String urlimage2) {
        this.urlimage2 = urlimage2;
    }

    public String getUrlimage3() {
        return urlimage3;
    }

    public void setUrlimage3(String urlimage3) {
        this.urlimage3 = urlimage3;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public int getPeopleNumber() {
        return peopleNumber;
    }

    public void setPeopleNumber(int peopleNumber) {
        this.peopleNumber = peopleNumber;
    }

    public int getBedNumber() {
        return bedNumber;
    }

    public void setBedNumber(int bedNumber) {
        this.bedNumber = bedNumber;
    }

    public double getPriceRoom() {
        return priceRoom;
    }

    public void setPriceRoom(double priceRoom) {
        this.priceRoom = priceRoom;
    }

    public String getDescrible() {
        return describle;
    }

    public void setDescrible(String describle) {
        this.describle = describle;
    }

    @Override
    public String toString() {
        return "Roomdetail{" + "rid=" + rid + ", urlimage1=" + urlimage1 + ", urlimage2=" + urlimage2 + ", urlimage3=" + urlimage3 + ", roomType=" + roomType + ", peopleNumber=" + peopleNumber + ", bedNumber=" + bedNumber + ", priceRoom=" + priceRoom + ", describle=" + describle + '}';
    }

    
}

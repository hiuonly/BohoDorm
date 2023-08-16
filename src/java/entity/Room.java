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
public class Room {
    private int rid;
    private String urlimage1;
    private String roomType;
    private int peopleNumber;
    private int bedNumber;
    private double priceRoom;
    private String describle;

    public Room() {
    }

    public Room(int rid, String urlimage1, String roomType, int peopleNumber, int bedNumber, double priceRoom, String describle) {
        this.rid = rid;
        this.urlimage1 = urlimage1;
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
        return "Room{" + "rid=" + rid + ", urlimage1=" + urlimage1 + ", roomType=" + roomType + ", peopleNumber=" + peopleNumber + ", bedNumber=" + bedNumber + ", priceRoom=" + priceRoom + ", describle=" + describle + '}';
    }
    
}

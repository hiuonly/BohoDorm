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
public class RoomType {
    private int rtid;
    private String urlimage;
    private String roomType;

    public RoomType() {
    }

    public RoomType(int rtid, String urlimage, String roomType) {
        this.rtid = rtid;
        this.urlimage = urlimage;
        this.roomType = roomType;
    }

    public int getRtid() {
        return rtid;
    }

    public void setRtid(int rtid) {
        this.rtid = rtid;
    }

    public String getUrlimage() {
        return urlimage;
    }

    public void setUrlimage(String urlimage) {
        this.urlimage = urlimage;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    @Override
    public String toString() {
        return "RoomType{" + "rtid=" + rtid + ", urlimage=" + urlimage + ", roomType=" + roomType + '}';
    }

    
}

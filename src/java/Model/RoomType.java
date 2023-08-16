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
public class RoomType {
    private int rtid;
    private String urlimg;
    private String roomtype;

    public RoomType() {
    }

    public RoomType(int rtid, String urlimg, String roomtype) {
        this.rtid = rtid;
        this.urlimg = urlimg;
        this.roomtype = roomtype;
    }

    public int getRtid() {
        return rtid;
    }

    public void setRtid(int rtid) {
        this.rtid = rtid;
    }

    public String getUrlimg() {
        return urlimg;
    }

    public void setUrlimg(String urlimg) {
        this.urlimg = urlimg;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    @Override
    public String toString() {
        return "Roomtype{" + "rtid=" + rtid + ", urlimg=" + urlimg + ", roomtype=" + roomtype + '}';
    }
    
}

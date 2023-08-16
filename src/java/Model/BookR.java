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
public class BookR {
    private int rid;
    private String rimg;
    private String rankroom;
    private String roomtype;
    private float rprice;
    private String checkin;
    private String checkout;
    private float rtotal;
    private int phid;
    private int rdate;

    public BookR() {
    }

    public BookR(int rid, String rimg, String rankroom, String roomtype, float rprice, String checkin, String checkout, float rtotal, int phid, int rdate) {
        this.rid = rid;
        this.rimg = rimg;
        this.rankroom = rankroom;
        this.roomtype = roomtype;
        this.rprice = rprice;
        this.checkin = checkin;
        this.checkout = checkout;
        this.rtotal = rtotal;
        this.phid = phid;
        this.rdate = rdate;
    }

    public int getRdate() {
        return rdate;
    }

    public void setRdate(int rdate) {
        this.rdate = rdate;
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

    public String getRimg() {
        return rimg;
    }

    public void setRimg(String rimg) {
        this.rimg = rimg;
    }

    public String getRankroom() {
        return rankroom;
    }

    public void setRankroom(String rankroom) {
        this.rankroom = rankroom;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    public float getRprice() {
        return rprice;
    }

    public void setRprice(float rprice) {
        this.rprice = rprice;
    }

    public String getCheckin() {
        return checkin;
    }

    public void setCheckin(String checkin) {
        this.checkin = checkin;
    }

    public String getCheckout() {
        return checkout;
    }

    public void setCheckout(String checkout) {
        this.checkout = checkout;
    }

    public float getRtotal() {
        return rtotal;
    }

    public void setRtotal(float rtotal) {
        this.rtotal = rtotal;
    }

    @Override
    public String toString() {
        return "BookR{" + "rid=" + rid + ", rimg=" + rimg + ", rankroom=" + rankroom + ", roomtype=" + roomtype + ", rprice=" + rprice + ", checkin=" + checkin + ", checkout=" + checkout + ", rtotal=" + rtotal + ", phid=" + phid + ", rdate=" + rdate + '}';
    }

}

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
public class bill {
    private int phid;
    private int cid;
    private String cname;
    private String cimg;
    private String sdt;
    private String caddress;
    private String paydate;
    private float total;
    private int vid;
    private String vname;
    private int discout;
    private String status;
    private String ct;

    public bill() {
    }

    public bill(int phid, int cid, String cname, String cimg, String sdt, String caddress, String paydate, float total, int vid, String vname, int discout, String status, String ct) {
        this.phid = phid;
        this.cid = cid;
        this.cname = cname;
        this.cimg = cimg;
        this.sdt = sdt;
        this.caddress = caddress;
        this.paydate = paydate;
        this.total = total;
        this.vid = vid;
        this.vname = vname;
        this.discout = discout;
        this.status = status;
        this.ct = ct;
    }

    public String getCt() {
        return ct;
    }

    public void setCt(String ct) {
        this.ct = ct;
    }

    public int getPhid() {
        return phid;
    }

    public void setPhid(int phid) {
        this.phid = phid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCimg() {
        return cimg;
    }

    public void setCimg(String cimg) {
        this.cimg = cimg;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getCaddress() {
        return caddress;
    }

    public void setCaddress(String caddress) {
        this.caddress = caddress;
    }

    public String getPaydate() {
        return paydate;
    }

    public void setPaydate(String paydate) {
        this.paydate = paydate;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public int getDiscout() {
        return discout;
    }

    public void setDiscout(int discout) {
        this.discout = discout;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "bill{" + "phid=" + phid + ", cid=" + cid + ", cname=" + cname + ", cimg=" + cimg + ", sdt=" + sdt + ", caddress=" + caddress + ", paydate=" + paydate + ", total=" + total + ", vid=" + vid + ", vname=" + vname + ", discout=" + discout + ", status=" + status + ", ct=" + ct + '}';
    }

}

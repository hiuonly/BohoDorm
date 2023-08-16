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
public class Bill {
    private int phid;
    private int cid;
    private int vid;
    private int discout;
    private String pdate;
    private double totalmoney;
    private String Status;

    public Bill() {
    }

    public Bill(int phid, int cid, int vid, int discout, String pdate, double totalmoney, String Status) {
        this.phid = phid;
        this.cid = cid;
        this.vid = vid;
        this.discout = discout;
        this.pdate = pdate;
        this.totalmoney = totalmoney;
        this.Status = Status;
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

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public int getDiscout() {
        return discout;
    }

    public void setDiscout(int discout) {
        this.discout = discout;
    }

    public String getPdate() {
        return pdate;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate;
    }

    public double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "Bill{" + "phid=" + phid + ", cid=" + cid + ", vid=" + vid + ", discout=" + discout + ", pdate=" + pdate + ", totalmoney=" + totalmoney + ", Status=" + Status + '}';
    }
    
}

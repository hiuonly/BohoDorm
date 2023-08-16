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
public class Voucher {
    private int vid;
    private String urlimage;
    private String vname;
    private String describle;
    private int discout;

    public Voucher() {
    }

    public Voucher(int vid, String urlimage, String vname, String describle, int discout) {
        this.vid = vid;
        this.urlimage = urlimage;
        this.vname = vname;
        this.describle = describle;
        this.discout = discout;
    }

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public String getUrlimage() {
        return urlimage;
    }

    public void setUrlimage(String urlimage) {
        this.urlimage = urlimage;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public String getDescrible() {
        return describle;
    }

    public void setDescrible(String describle) {
        this.describle = describle;
    }

    public int getDiscout() {
        return discout;
    }

    public void setDiscout(int discout) {
        this.discout = discout;
    }

    @Override
    public String toString() {
        return "Voucher{" + "vid=" + vid + ", urlimage=" + urlimage + ", vname=" + vname + ", describle=" + describle + ", discout=" + discout + '}';
    }
   
}

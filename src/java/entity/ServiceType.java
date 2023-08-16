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
public class ServiceType {
    private int stid;
    private String urlimage;
    private String stname;

    public ServiceType() {
    }

    public ServiceType(int stid, String urlimage, String stname) {
        this.stid = stid;
        this.urlimage = urlimage;
        this.stname = stname;
    }

    public int getStid() {
        return stid;
    }

    public void setStid(int stid) {
        this.stid = stid;
    }

    public String getUrlimage() {
        return urlimage;
    }

    public void setUrlimage(String urlimage) {
        this.urlimage = urlimage;
    }

    public String getStname() {
        return stname;
    }

    public void setStname(String stname) {
        this.stname = stname;
    }

    @Override
    public String toString() {
        return "ServiceType{" + "stid=" + stid + ", urlimage=" + urlimage + ", stname=" + stname + '}';
    }
    
}

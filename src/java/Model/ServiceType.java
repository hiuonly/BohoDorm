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
public class ServiceType {
    private int stid;
    private String simage;
    private String name;

    public ServiceType() {
    }

    public ServiceType(int stid, String simage, String name) {
        this.stid = stid;
        this.simage = simage;
        this.name = name;
    }

    public int getStid() {
        return stid;
    }

    public void setStid(int stid) {
        this.stid = stid;
    }

    public String getSimage() {
        return simage;
    }

    public void setSimage(String simage) {
        this.simage = simage;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "ServiceType{" + "stid=" + stid + ", simage=" + simage + ", name=" + name + '}';
    }
    
}

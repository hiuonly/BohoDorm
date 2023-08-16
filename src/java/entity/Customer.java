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
public class Customer {
    private int cid;
    private String urlimage;
    private String cname;
    private String birthofday;
    private String cccd;
    private String sdt;
    private String gender;
    private String caddress;
    private String country;
    private int usid;

    public Customer() {
    }

    public Customer(int cid, String urlimage, String cname, String birthofday, String cccd, String sdt, String gender, String caddress, String country, int usid) {
        this.cid = cid;
        this.urlimage = urlimage;
        this.cname = cname;
        this.birthofday = birthofday;
        this.cccd = cccd;
        this.sdt = sdt;
        this.gender = gender;
        this.caddress = caddress;
        this.country = country;
        this.usid = usid;
    }

    @Override
    public String toString() {
        return "Customer{" + "cid=" + cid + ", urlimage=" + urlimage + ", cname=" + cname + ", birthofday=" + birthofday + ", cccd=" + cccd + ", sdt=" + sdt + ", gender=" + gender + ", caddress=" + caddress + ", country=" + country + ", usid=" + usid + '}';
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getUrlimage() {
        return urlimage;
    }

    public void setUrlimage(String urlimage) {
        this.urlimage = urlimage;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getBirthofday() {
        return birthofday;
    }

    public void setBirthofday(String birthofday) {
        this.birthofday = birthofday;
    }

    public String getCccd() {
        return cccd;
    }

    public void setCccd(String cccd) {
        this.cccd = cccd;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCaddress() {
        return caddress;
    }

    public void setCaddress(String caddress) {
        this.caddress = caddress;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getUsid() {
        return usid;
    }

    public void setUsid(int usid) {
        this.usid = usid;
    }
    
    
    
}

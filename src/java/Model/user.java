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
public class user {
    private int cid;
    private String cimage;
    private String name;
    private String birthday;
    private String cccd;
    private String sdt;
    private String gender;
    private String address;
    private String country;
    private int usid;
    private String user;
    private String pass;
    private String email;
    private int role;

    public user() {
    }

    public user(int cid, String cimage, String name, String birthday, String cccd, String sdt, String gender, String address, String country, int usid, String user, String pass, String email, int role) {
        this.cid = cid;
        this.cimage = cimage;
        this.name = name;
        this.birthday = birthday;
        this.cccd = cccd;
        this.sdt = sdt;
        this.gender = gender;
        this.address = address;
        this.country = country;
        this.usid = usid;
        this.user = user;
        this.pass = pass;
        this.email = email;
        this.role = role;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCimage() {
        return cimage;
    }

    public void setCimage(String cimage) {
        this.cimage = cimage;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "user{" + "cid=" + cid + ", cimage=" + cimage + ", name=" + name + ", birthday=" + birthday + ", cccd=" + cccd + ", sdt=" + sdt + ", gender=" + gender + ", address=" + address + ", country=" + country + ", usid=" + usid + ", user=" + user + ", pass=" + pass + ", email=" + email + ", role=" + role + '}';
    }

}

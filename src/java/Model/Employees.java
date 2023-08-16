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
public class Employees {
    private int eid;
    private String eimage;
    private String name;
    private String birthday;
    private String position;
    private String gender;
    private String address;
    private String sdt;
    private String cccd;
    private int salary;
    private int usid;
    private String user;
    private String pass;
    private String email;
    private int role;

    public Employees() {
    }

    public Employees(int eid, String eimage, String name, String birthday, String position, String gender, String address, String sdt, String cccd, int salary, int usid, String user, String pass, String email, int role) {
        this.eid = eid;
        this.eimage = eimage;
        this.name = name;
        this.birthday = birthday;
        this.position = position;
        this.gender = gender;
        this.address = address;
        this.sdt = sdt;
        this.cccd = cccd;
        this.salary = salary;
        this.usid = usid;
        this.user = user;
        this.pass = pass;
        this.email = email;
        this.role = role;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEimage() {
        return eimage;
    }

    public void setEimage(String eimage) {
        this.eimage = eimage;
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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
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

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getCccd() {
        return cccd;
    }

    public void setCccd(String cccd) {
        this.cccd = cccd;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
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
        return "Employees{" + "eid=" + eid + ", eimage=" + eimage + ", name=" + name + ", birthday=" + birthday + ", position=" + position + ", gender=" + gender + ", address=" + address + ", sdt=" + sdt + ", cccd=" + cccd + ", salary=" + salary + ", usid=" + usid + ", user=" + user + ", pass=" + pass + ", email=" + email + ", role=" + role + '}';
    }

}

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
public class QLusers {
    private int usid;
    private String username;
    private String passwork;
    private String email;
    private int urole;

    public QLusers() {
    }

    public QLusers(int usid, String username, String passwork, String email, int urole) {
        this.usid = usid;
        this.username = username;
        this.passwork = passwork;
        this.email = email;
        this.urole = urole;
    }

    public int getUsid() {
        return usid;
    }

    public void setUsid(int usid) {
        this.usid = usid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasswork() {
        return passwork;
    }

    public void setPasswork(String passwork) {
        this.passwork = passwork;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getUrole() {
        return urole;
    }

    public void setUrole(int urole) {
        this.urole = urole;
    }

    @Override
    public String toString() {
        return "QLusers{" + "usid=" + usid + ", username=" + username + ", passwork=" + passwork + ", email=" + email + ", urole=" + urole + '}';
    }
    
}

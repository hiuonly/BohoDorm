/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class Account {
    private int usid;
    private String user;
    private String pass;
    private String email;
    private int role;

    public Account() {
    }

    public Account(int usid, String user, String pass, String email, int role) {
        this.usid = usid;
        this.user = user;
        this.pass = pass;
        this.email = email;
        this.role = role;
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
        return "Account{" + "usid=" + usid + ", user=" + user + ", pass=" + pass + ", email=" + email + ", role=" + role + '}';
    }

    
}

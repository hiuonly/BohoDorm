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
public class Voucher {
    private int vid;
    private String img;
    private String name;
    private String descible;
    private int discount;

    public Voucher() {
    }

    public Voucher(int vid, String img, String name, String descible, int discount) {
        this.vid = vid;
        this.img = img;
        this.name = name;
        this.descible = descible;
        this.discount = discount;
    }

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescible() {
        return descible;
    }

    public void setDescible(String descible) {
        this.descible = descible;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "Voucher{" + "vid=" + vid + ", img=" + img + ", name=" + name + ", descible=" + descible + ", discount=" + discount + '}';
    }

    
}

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
public class Revenue {
    private String year;
    private String month;
    private double totalMoney;

    public Revenue() {
    }

    public Revenue(String year, String month, double totalMoney) {
        this.year = year;
        this.month = month;
        this.totalMoney = totalMoney;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    @Override
    public String toString() {
        return "Revenue{" + "year=" + year + ", month=" + month + ", totalMoney=" + totalMoney + '}';
    }
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.boho.dorm.connect;

import org.apache.commons.lang3.StringUtils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author Nathenial
 */
public class DBConnect {

    public Connection connection;

    private static final String DATABASE_URL = getEnvOrElse("DATABASE_URL", "jdbc:mysql://localhost:3306/hotel");
    private static final String DATABASE_USERNAME = getEnvOrElse("DATABASE_USERNAME", "hotel");
    private static final String DATABASE_PASSWORD = getEnvOrElse("DATABASE_PASSWORD", "12345");

    public DBConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private static String getEnvOrElse(String envVar, String other) {
        String envValue = System.getenv(envVar);
        return StringUtils.isNotBlank(envValue) ? envValue : other;
    }
}

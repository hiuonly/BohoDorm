/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.boho.dorm.dao;

import com.boho.dorm.Model.Account;
import com.boho.dorm.Model.BookR;
import com.boho.dorm.entity.Employees;
import com.boho.dorm.Model.Room;
import com.boho.dorm.Model.RoomType;
import com.boho.dorm.Model.Service;
import com.boho.dorm.Model.ServiceType;
import com.boho.dorm.Model.UserService;
import com.boho.dorm.Model.Voucher;
import com.boho.dorm.Model.bill;
import com.boho.dorm.Model.user;
import com.boho.dorm.connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MSII
 */
public class DAOA {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account Login(String user, String pass) {
        String query = "select * from qlusers\n"
                + "where username = ?\n"
                + "and password = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public List<Account> getQluser() {
        List<Account> list = new ArrayList<Account>();
        String query = "select * from qlusers";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public void DUQ(String sid) {
        String query = "delete from qlusers where username= ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, sid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public Account checkAccountExist(String user) {
        String query = "select * from qlusers\n"
                + "where usid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Employees checkEmployees(String user) {
        String query = "select eid, urlimage, ename, birthofday, position, gender, eaddress, sdt,\n"
                + "cccd, salary, employees.usid, qlusers.username, qlusers.password, qlusers.email, qlusers.urole\n"
                + "from employees, QLusers\n"
                + "where employees.usid = qlusers.usid and qlusers.username = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Employees(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getInt(15));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public void singup(String user, String pass, String email) {
        String query = "INSERT INTO `hotel`.`qlusers` (`username`, `password`, `email`, `urole`) VALUES (?,?,?,0);";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public List<RoomType> getAllRoomtype() {
        List<RoomType> list = new ArrayList<RoomType>();
        String query = "select * from roomtype";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new RoomType(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Room> getRoom() {
        List<Room> list = new ArrayList<Room>();
        String query = "select r.rid, r.urlimage1, r.urlimage2, r.urlimage3, t.roomtype, r.peopleNumber , r.rstatus, r.bedNumber , r.priceRoom, r.describle\n"
                + "from room as r, roomtype as t \n"
                + "where t.rtid = r.rtid";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Room> getARoomtype(String status) {
        ArrayList<Room> list = new ArrayList<Room>();
        String query = "select r.rid, r.urlimage1, r.urlimage2, r.urlimage3, t.roomtype, r.peopleNumber , r.rstatus, r.bedNumber , r.priceRoom, r.describle\n"
                + "                        from room as r inner join roomtype as t on r.rtid=t.rtid where r.rstatus = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10)));
            }
            System.out.println(list);
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public Room getRoom(String de) {
        String query = "select * from room as r\n"
                + "where r.rid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, de);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10));
            }

        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public List<ServiceType> getAllServicetype() {
        List<ServiceType> list = new ArrayList<ServiceType>();
        String query = "select * from servicetype";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ServiceType(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Service> getAllService() {
        List<Service> list = new ArrayList<Service>();
        String query = "select s.srid, s.urlimage, s.sname, t.stname, s.srstatus, s.price, s.describle\n"
                + "from services as s, servicetype t\n"
                + "where s.stid = t.stid";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Service> getAService(String name) {
        List<Service> list = new ArrayList<Service>();
        String query = "select s.srid, s.urlimage, s.sname, t.stname, s.srstatus, s.price, s.describle\n"
                + "from services as s, servicetype t\n"
                + "where s.stid = t.stid and t.stname = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Room> getSearchR(String txtSearch) {
        List<Room> list = new ArrayList<Room>();
        String query = "select r.rid, r.urlimage1, r.urlimage2, r.urlimage3, t.roomtype, r.peopleNumber, r.rstatus, r.bedNumber , r.priceRoom, r.describle\n"
                + "from room as r, roomtype as t \n"
                + "where t.rtid = r.rtid and CONCAT(r.rid,t.roomtype, r.peopleNumber ,r.bedNumber , r.priceRoom) like ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Service> getSearchS(String txtSearch) {
        List<Service> list = new ArrayList<Service>();
        String query = "select s.srid, s.urlimage, s.sname, t.stname, s.srstatus, s.price, s.describle\n"
                + "from services as s, servicetype t\n"
                + "where s.stid = t.stid and CONCAT(s.sname,t.stname,s.price) like ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Employees> getSE(String txtSearch) {
        List<Employees> list = new ArrayList<Employees>();
        String query = "select eid, urlimage, ename, birthofday, position, gender, eaddress, sdt,\n"
                + "cccd, salary, employees.usid, qlusers.username, qlusers.password, qlusers.email, qlusers.urole\n"
                + "from employees, qlusers\n"
                + "where employees.usid = qlusers.usid and CONCAT(employees.ename,qlusers.email,birthofday, position, eaddress, sdt,cccd,salary) like ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Employees(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getInt(15)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<user> getSC(String txtSearch) {
        List<user> list = new ArrayList<user>();
        String query = "select cid, urlimage, cname, birthofday, cccd, sdt,gender,caddress,country\n"
                + "                        ,customer.usid, qlusers.username, qlusers.password, qlusers.email, qlusers.urole\n"
                + "                        from customer, qlusers\n"
                + "                        where customer.usid = qlusers.usid and CONCAT(customer.cname,qlusers.email,birthofday, cccd, sdt,caddress,country) like ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new user(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getInt(14)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public Service getService(int de) {
        String query = "select * from services as r\n"
                + "where r.srid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, de);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Service(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7));
            }

        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public void addRoom(int rid, String aimg, String bimg, String cimg, String roomtype, int Peoplenumber, int bednumber, String rankRoom, int priceroom, String status, String describle) {
        String query = "INSERT INTO `hotel`.`room` (`rid`, `urlimage1`, `urlimage2`, `urlimage3`, `rtid`, `peopleNumber`, `rstatus`, `bedNumber`, `priceRoom`, `describle`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, rid);
            ps.setString(2, aimg);
            ps.setString(3, bimg);
            ps.setString(4, cimg);
            ps.setString(5, roomtype);
            ps.setInt(6, Peoplenumber);
            ps.setString(7, rankRoom);
            ps.setString(8, status);
            ps.setInt(9, bednumber);
            ps.setInt(10, priceroom);
            ps.setString(11, describle);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void addService(String shimage, String name, String nametype, String status, float price, String describlie) {
        String query = "INSERT INTO `hotel`.`services` (`urlimage`, `sname`, `stid`, `srstatus`, `price`, `describle`) VALUES (?, ?, ?, ?, ?, ?);";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, shimage);
            ps.setString(2, name);
            ps.setString(3, nametype);
            ps.setString(4, status);
            ps.setFloat(5, price);
            ps.setString(6, describlie);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void deleteR(int idroom) {
        String query = "delete from room where rid=?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, idroom);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void deleteS(int sid) {
        String query = "delete from services where srid=?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, sid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void DE(String sid) {
        String query = "delete from employees where usid = ?\n"
                + "delete from qlusers where usid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, sid);
            ps.setString(2, sid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void DU(String sid) {
        String query = "delete from customer where usid= ?\n"
                + "delete from qlusers where usid= ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, sid);
            ps.setString(2, sid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void AcceptRoom(int rid, String status) {
        String query = "UPDATE `hotel`.`room` SET `rstatus` = ? WHERE (`rid` = ?);";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setInt(2, rid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void AcceptService(int sid, String status) {
        String query = "UPDATE `hotel`.`services` SET `srstatus` = ? WHERE (`srid` = ?);";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setInt(2, sid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void UpdateR(int rid, String aimg, String bimg, String cimg, String roomtype, int Peoplenumber, int bednumber, String rankRoom, int priceroom, String describle) {
        String query = "update room set urlimage1 = ?, urlimage2 = ?, urlimage3 = ?, rtid = ?, peopleNumber = ?, \n"
                + "bedNumber= ?, priceRoom = ?, describle = ?\n"
                + "where rid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, aimg);
            ps.setString(2, bimg);
            ps.setString(3, cimg);
            ps.setString(4, roomtype);
            ps.setInt(5, Peoplenumber);
            ps.setString(6, rankRoom);
            ps.setInt(7, bednumber);
            ps.setInt(8, priceroom);
            ps.setString(9, describle);
            ps.setInt(10, rid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void UpdateS(int sid, String shimage, String name, String nametype, float price, String describlie) {
        String query = "update services set urlimage = ?, sname = ?, stid = ?, price = ?, describle = ?\n"
                + "where srid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, shimage);
            ps.setString(2, name);
            ps.setString(3, nametype);
            ps.setFloat(4, price);
            ps.setString(5, describlie);
            ps.setInt(6, sid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public List<Voucher> getAllVoucher() {
        List<Voucher> list = new ArrayList<Voucher>();
        String query = "select * from voucher";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Voucher(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Voucher> getSVoucher(String search) {
        List<Voucher> list = new ArrayList<Voucher>();
        String query = "select * from voucher \n"
                + "where vname like ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Voucher(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public void addVoucher(int vid, String img, String name, String descible, int discount) {
        String query = "INSERT INTO `hotel`.`voucher` (`vid`, `urlimage`, `vname`, `describle`, `discount`) VALUES (?, ?, ?, ?, ?);";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, vid);
            ps.setString(2, img);
            ps.setString(3, name);
            ps.setString(4, descible);
            ps.setInt(5, discount);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void UpdateV(int vid, String img, String name, String descible, int discount) {
        String query = "update voucher set urlimage = ?, vname = ?, describle = ?, discout = ? where vid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, img);
            ps.setString(2, name);
            ps.setString(3, descible);
            ps.setInt(4, discount);
            ps.setInt(5, vid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void UDU(int usid, String user, String pass, String email, int role) {
        String query = " UPDATE qlusers set username = ?, password = ?, email = ?, urole = ?\n"
                + " where usid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.setInt(4, role);
            ps.setInt(5, usid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public Voucher getVoucher(int de) {
        String query = "select * from voucher as r\n"
                + "where r.vid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, de);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Voucher(
                        rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }

        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public void deleteV(int sid) {
        String query = "delete from voucher where vid=?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, sid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void Employees(String eimage, String name, String birthday, String position, String gender, String address, String sdt, String cccd, int salary, String user) {
        String query = "INSERT INTO `hotel`.`employees` (`urlimage`, `ename`, `birthofday`, `position`, `gender`, `eaddress`, `sdt`, `cccd`, `salary`, `usid`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, eimage);
            ps.setString(2, name);
            ps.setString(3, birthday);
            ps.setString(4, position);
            ps.setString(5, gender);
            ps.setString(6, address);
            ps.setString(7, sdt);
            ps.setString(8, cccd);
            ps.setInt(9, salary);
            ps.setString(10, user);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void UDE(int eid, String eimage, String name, String birthday, String position, String gender, String address, String sdt, String cccd, int salary, int usid) {
        String query = "update employees set urlimage = ?, ename = ?, birthofday = ?, position = ?,\n"
                + "gender = ?, eaddress = ?, sdt = ?, cccd = ?, salary = ?, usid = ?\n"
                + "where eid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, eimage);
            ps.setString(2, name);
            ps.setString(3, birthday);
            ps.setString(4, position);
            ps.setString(5, gender);
            ps.setString(6, address);
            ps.setString(7, sdt);
            ps.setString(8, cccd);
            ps.setInt(9, salary);
            ps.setInt(10, usid);
            ps.setInt(11, eid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public List<Employees> getEmployees() {
        List<Employees> list = new ArrayList<Employees>();
        String query = "select eid, urlimage, ename, birthofday, position, gender, eaddress, sdt,\n"
                + "cccd, salary, employees.usid, qlusers.username, qlusers.password, qlusers.email, qlusers.urole\n"
                + "from employees, qlusers\n"
                + "where employees.usid = qlusers.usid ";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Employees(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getInt(15)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public Employees getAEmployees(int a) {
        String query = "select eid, urlimage, ename, birthofday, position, gender, eaddress, sdt,\n"
                + "cccd, salary, employees.usid, qlusers.username, qlusers.password, qlusers.email, qlusers.urole\n"
                + "from employees, qlusers\n"
                + "where employees.usid = qlusers.usid and employees.eid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, a);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Employees(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getInt(15));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public List<user> getCustomer() {
        List<user> list = new ArrayList<user>();
        String query = "select cid, urlimage, cname, birthofday, cccd, sdt, gender, caddress, country, \n"
                + "customer.usid, qlusers.username, qlusers.password, qlusers.email, qlusers.urole \n"
                + "from customer, qlusers\n"
                + "where customer.usid = qlusers.usid";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new user(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getInt(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getInt(14)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<UserService> getUService() {
        List<UserService> list = new ArrayList<UserService>();
        String query = "select c.cname,u.phid, s.sname, s.urlimage, s.price, e.stname, u.quantity, u.price\n"
                + "                        from bill as b, useservice as u, services as s, servicetype as e, customer as c\n"
                + "                        where u.srid = s.srid and s.stid = e.stid and u.phid = b.phid and b.cid=c.cid";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UserService(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getFloat(8)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;

    }

    public List<UserService> getAUS(int a) {
        List<UserService> list = new ArrayList<>();
        String query = "select c.cname,u.phid, s.sname, s.urlimage, s.price, e.stname, u.quantity, u.price\n"
                + "from bill as b, useservice as u, services as s, servicetype as e, customer as c\n"
                + "where u.srid = s.srid and s.stid = e.stid and u.phid = b.phid and b.cid=c.cid and b.phid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, a);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UserService(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getFloat(8)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<UserService> getSearchUseSC(String search) {
        List<UserService> list = new ArrayList<>();
        String query = "select c.cname,u.phid, s.sname, s.urlimage, s.price, e.stname, u.quantity, u.price\n"
                + "                        from bill as b, useservice as u, services as s, servicetype as e, customer as c\n"
                + "                        where u.srid = s.srid and s.stid = e.stid and u.phid = b.phid and b.cid=c.cid and CONCAT(c.cname, s.sname, u.price, e.stname) LIKE ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UserService(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getFloat(8)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<BookR> getBRoom() {
        List<BookR> list = new ArrayList<BookR>();
        String query = "SELECT r.rid, r.urlimage1, t.roomType, r.priceRoom,\n"
                + "       o.datecheckin, o.datecheckout, DATEDIFF(o.datecheckout, o.datecheckin) * r.priceRoom AS total_price,\n"
                + "       o.phid, DATEDIFF(o.datecheckout, o.datecheckin) AS rdate\n"
                + "FROM bookroom AS o\n"
                + "JOIN room AS r ON o.rid = r.rid\n"
                + "JOIN roomtype AS t ON r.rtid = t.rtid;";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BookR(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getFloat(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<BookR> getSearchBRoom(String search) {
        List<BookR> list = new ArrayList<BookR>();
        String query = "select r.rid, r.urlimage1,  t.roomType, r.priceRoom,\n"
                + "o.datecheckin, o.datecheckout, DATEDIFF(day, o.datecheckin, o.datecheckout) * r.priceRoom, o.phid, DATEDIFF(day, o.datecheckin, o.datecheckout) as rdate\n"
                + "from bookroom as o , room as r, roomtype as t\n"
                + "where o.rid = r.rid and r.rtid = t.rtid and CONCAT(r.rid,o.datecheckin, o.datecheckout) LIKE ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BookR(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getFloat(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;

    }

    public List<BookR> getABR(int a) {
        List<BookR> list = new ArrayList<>();
        String query = "SELECT r.rid, r.urlimage1, t.roomType, r.priceRoom,\n"
                + "       o.datecheckin, o.datecheckout, \n"
                + "       DATEDIFF(o.datecheckout, o.datecheckin) * r.priceRoom AS total_price,\n"
                + "       o.phid, DATEDIFF(o.datecheckout, o.datecheckin) AS rental_days\n"
                + "FROM bookroom AS o\n"
                + "JOIN room AS r ON o.rid = r.rid\n"
                + "JOIN roomtype AS t ON r.rtid = t.rtid\n"
                + "WHERE o.phid = ?;";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, a);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BookR(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getFloat(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<bill> getBill() {
        List<bill> list = new ArrayList<bill>();
        String query = "select b.phid, c.cid, c.cname, c.urlimage, c.sdt, c.caddress, b.datePay, b.totalmoney, v.vid, v.vname, v.discount, b.bstatus, c.country\n"
                + "from bill as b, voucher as v, customer as c\n"
                + "where b.cid = c.cid and v.vid = b.vid";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new bill(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getFloat(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;

    }

    public bill getAbill(int a) {
        String query = "select b.phid, c.cid, c.cname, c.urlimage, c.sdt, c.caddress, b.datePay, b.totalmoney, v.vid, v.vname, v.discount, b.bstatus, c.country\n"
                + "from bill as b, voucher as v, customer as c\n"
                + "where b.cid = c.cid and v.vid = b.vid and b.phid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setInt(1, a);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new bill(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getFloat(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public void UDBILL(int phid, String status) {
        String query = "update bill set bstatus = ?\n"
                + "where phid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setInt(2, phid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public bill Sumbill() {
        String query = "select Sum(totalmoney) as total\n"
                + "from bill";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new bill(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getFloat(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public void UPP(String pas, String mail, int usid) {
        String query = "update qlusers set password = ?, email = ? where usid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, pas);
            ps.setString(2, mail);
            ps.setInt(3, usid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void UPE(String img, String ename, String sdt, String bir, int usid) {
        String query = "update employees set urlimage = ?, ename = ?, sdt = ?, birthofday = ? where usid = ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, img);
            ps.setString(2, ename);
            ps.setString(3, sdt);
            ps.setString(4, bir);
            ps.setInt(5, usid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public List<bill> getSBill(String search) {
        List<bill> list = new ArrayList<bill>();
        String query = "select b.phid, c.cid, c.cname, c.urlimage, c.sdt, c.caddress, b.datePay, b.totalmoney, v.vid, v.vname, v.discout, b.bstatus, c.country\n"
                + "from bill as b, voucher as v, customer as c\n"
                + "where b.cid = c.cid and v.vid = b.vid and CONCAT(b.phid,c.cname,c.sdt) like ?";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new bill(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getFloat(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Account> getSearchAccount(String search) {
        List<Account> list = new ArrayList<Account>();
        String query = "select * from qlusers where CONCAT(username,email) LIKE '%" + search + "%'";
        try {
            conn = new DBConnect().connection;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAOA.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public static void main(String[] args) {
        DAOA dao = new DAOA();
        List<BookR> a = dao.getBRoom();
        for (BookR bookR : a) {
            System.out.println(bookR);
        }
    }
}

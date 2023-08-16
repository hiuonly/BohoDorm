/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DBConnect;
import entity.Customer;
import entity.QLusers;
import entity.Room;
import entity.RoomType;
import entity.Roomdetail;
import entity.ServiceType;
import entity.Services;
import entity.Voucher;
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
 * @author Nathenial
 */
public class DAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<RoomType> getAllTypeRoom() {
        List<RoomType> list = new ArrayList<>();
        String query = "select * from RoomType";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new RoomType(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<ServiceType> getAllTypeService() {
        List<ServiceType> list = new ArrayList<>();
        String query = "select * from ServiceType";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ServiceType(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Services> getAllServicesByid1() {
        List<Services> list = new ArrayList<>();
        String query = "select s.srid,s.urlimage,s.sname,st.stid,s.price,s.describle from Services as s INNER JOIN ServiceType as st on s.stid = st.stid  where srstatus = 1 and st.stid =1";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Services(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Services> getAllServicesByid2() {
        List<Services> list = new ArrayList<>();
        String query = "select s.srid,s.urlimage,s.sname,st.stid,s.price,s.describle from Services as s INNER JOIN ServiceType as st on s.stid = st.stid  where srstatus = 1 and st.stid =2";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Services(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Services> getAllServicesByid3() {
        List<Services> list = new ArrayList<>();
        String query = "select s.srid,s.urlimage,s.sname,st.stid,s.price,s.describle from Services as s INNER JOIN ServiceType as st on s.stid = st.stid  where srstatus = 1 and st.stid =3";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Services(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Services> getAllServicesById(int id) {
        List<Services> list = new ArrayList<>();
        String query = "select s.srid,s.urlimage,s.sname,st.stid,s.price,s.describle from Services as s INNER JOIN ServiceType as st on s.stid = st.stid  where srstatus = 1 and st.stid = "+id+"";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Services(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Services> getAllServices() {
        List<Services> list = new ArrayList<>();
        String query = "select srid,urlimage,sname,stid,price,describle from Services where srstatus = 1";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Services(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public Services getServiceById(int id) {
        String query = "select srid,urlimage,sname,stid,price,describle from Services where srstatus = 1 and srid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Services(id, rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public List<Voucher> getAllVoucher() {
        List<Voucher> list = new ArrayList<>();
        String query = "select * from Voucher";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Voucher(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Room> getAllRoom() {
        List<Room> list = new ArrayList<>();
        String query = "select r.rid,r.urlimage1, rt.roomType,r.peopleNumber,r.bedNumber,r.priceRoom,r.describle from Room as r INNER JOIN RoomType as rt on r.rtid=rt.rtid where rstatus = 1";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getDouble(6), rs.getString(7)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Room> searchRoom(int peopleNumber) {
        List<Room> list = new ArrayList<>();
        String query = "select r.rid,r.urlimage1, rt.roomType,r.peopleNumber,r.bedNumber,r.priceRoom,r.describle from Room as r INNER JOIN RoomType as rt on r.rtid=rt.rtid \n"
                + "where rstatus = 1 and r.peopleNumber = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setInt(1, peopleNumber);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getDouble(6), rs.getString(7)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Room> getRoomByID(String rid) {
        List<Room> list = new ArrayList<>();
        String query = "select r.rid,r.urlimage1, rt.roomType,r.peopleNumber,r.bedNumber,r.priceRoom,r.describle from Room as r INNER JOIN RoomType as rt on r.rtid=rt.rtid where rstatus = 1 and rt.rtid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, rid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getDouble(6), rs.getString(7)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public Roomdetail getRoomDetailByRID(String rid) {
        String query = "select r.rid,r.urlimage1,r.urlimage2,r.urlimage3, rt.roomType,r.peopleNumber,r.bedNumber,r.priceRoom,r.describle from Room as r INNER JOIN RoomType as rt on r.rtid=rt.rtid where rstatus = 1 and r.rid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, rid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Roomdetail(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getDouble(8), rs.getString(9));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Room getRoomIForPayByID(String rid) {
        String query = "select r.rid,r.urlimage1, rt.roomType,r.peopleNumber,r.bedNumber,r.priceRoom,r.describle from Room as r INNER JOIN RoomType as rt on r.rtid=rt.rtid where rstatus = 1 and r.rid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, rid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Room(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getDouble(6), rs.getString(7));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Voucher checkVoucherExist(String vid) {
        String query = "select * from Voucher where vid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, vid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Voucher(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public QLusers Login(String user, String pass) {
        String query = "select * from QLusers where username = ? and password = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new QLusers(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public QLusers checkAccountExist(String user) {
        String query = "select * from QLusers where  username = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new QLusers(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public QLusers getAccountByid(String id) {
        String query = "select * from QLusers where  usid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new QLusers(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void singup(String user, String pass, String email) {
        String query = "insert into QLusers values(?,?,?,0)";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void AddCustomer(String urlimage, String cname, String birthofday, String cccd, String sdt, String gender, String caddress, String country, int usid) {
        String query = "insert into Customer values(?,?,?,?,?,?,?,?,?)";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, urlimage);
            ps.setString(2, cname);
            ps.setString(3, birthofday);
            ps.setString(4, cccd);
            ps.setString(5, sdt);
            ps.setString(6, gender);
            ps.setString(7, caddress);
            ps.setString(8, country);
            ps.setInt(9, usid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void UpCustomer(int cid, String urlimage, String cname, String birthofday, String cccd, String sdt, String gender, String caddress, String country) {
        try {
            String query1 = "update Customer\n"
                    + "set urlimage = ?, cname = ?, birthofday = ?, cccd = ?,\n"
                    + "                        sdt = ?, gender = ?, caddress = ?, country = ?\n"
                    + "from Customer as c INNER JOIN QLusers as q on c.usid = q.usid\n"
                    + "where c.cid = ?";
            con = new DBConnect().connection;
            ps = con.prepareStatement(query1);
            ps.setString(1, urlimage);
            ps.setString(2, cname);
            ps.setString(3, birthofday);
            ps.setString(4, cccd);
            ps.setString(5, sdt);
            ps.setString(6, gender);
            ps.setString(7, caddress);
            ps.setString(8, country);
            ps.setInt(9, cid);

            ps.executeUpdate();

        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void UpQlUser(String username, String passwork, String email, int usid) {
        String query = "UPDATE QLusers set username = ?, passwork = ?, email = ? where usid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, passwork);
            ps.setString(3, email);
            ps.setInt(4, usid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void NewPass(String passwork, String email) {
        String query = "UPDATE QLusers set passwork = ? where email = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, passwork);
            ps.setString(2, email);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public Customer getCustomer(int id) {
        String query = "select * from Customer where usid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Customer Customers() {
        String query = "select count(c.cid) cid\n"
                + "from customer c";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setCid(rs.getInt("cid"));
                return customer;
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Customer getCustomerByEmail(String email) {
        String query = "select c.cid,c.urlimage,c.cname,c.birthofday,c.cccd,c.sdt,c.gender,c.caddress,c.country,c.usid\n"
                + "from Customer as c inner join QLusers as ql on c.usid=ql.usid\n"
                + "where ql.email = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Customer getCustomerbyUse(String user) {
        String query = "select c.cid, c.urlimage, c.cname, c.birthofday, c.cccd, c.sdt, c.gender, c.caddress, c.country, q.usid\n"
                + "from Customer as c, QLusers as q\n"
                + "where c.usid = q.usid and q.username = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public Customer checkCustomerExist(int id) {
        String query = "select * from Customer where cid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        System.out.println(dao.getCustomerByEmail("quanghuytran2812@gmail.com"));
//        List<RoomType> list = dao.getAllTypeRoom();
//        List<ServiceType> list = dao.getAllTypeService();
//        List<Room> listR = dao.getRoomByID("1");
//        Roomdetail listrd = dao.getRoomDetailByRID("1");
//        List<Voucher> list = dao.getAllVoucher();
//        for (Voucher voucher : list) {
//            System.out.println(voucher);
//        }
//          List<Room> list = dao.searchRoom(4,"VIP");
//          for (Room room : list) {
//              System.out.println(room);   
//        }

//          System.out.println(dao.getAllServices("4"));
//          System.out.println(dao.checkVoucherExist("992"));
//        for (ServiceType serviceType : list) {
//            System.out.println(serviceType);
//        }
//        for (Room room : listR) {
//            System.out.println(room);
//        }
//          for (RoomType roomType : list) {
//              System.out.println(roomType);
//        }
    }
}

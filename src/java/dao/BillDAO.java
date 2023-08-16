/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Model.bill;
import connect.DBConnect;
import entity.Bill;
import entity.BookRoom;
import entity.Cart;
import entity.Customer;
import entity.Item;
import entity.Revenue;
import entity.UseService;
import entity.Voucher;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nathenial
 */
public class BillDAO extends DBConnect {

    Connection con = null;
    ResultSet rs = null;
    PreparedStatement ps = null;

    public void AddBill(Customer c, BookRoom bk, Voucher v) throws SQLException {
        try (Connection con = connection) {
            String selectOrderQuery = "SELECT * FROM hotel.bill WHERE cid = ? AND bstatus != 2";
            try (PreparedStatement selectOrderStatement = con.prepareStatement(selectOrderQuery)) {
                selectOrderStatement.setInt(1, c.getCid());
                try (ResultSet orderResultSet = selectOrderStatement.executeQuery()) {
                    int orderId;
                    if (orderResultSet.next()) {
                        orderId = orderResultSet.getInt(1);
                    } else {
                        String insertOrderQuery = "INSERT INTO hotel.bill (cid, vid, datePay, totalmoney, bstatus) VALUES (?, ?, NOW(), 0, '0')";
                        try (PreparedStatement insertOrderStatement = con.prepareStatement(insertOrderQuery, Statement.RETURN_GENERATED_KEYS)) {
                            insertOrderStatement.setInt(1, c.getCid());
                            insertOrderStatement.setInt(2, v.getVid());
                            int affectedRows = insertOrderStatement.executeUpdate();
                            if (affectedRows == 0) {
                                throw new SQLException("Creating book failed, no rows affected.");
                            }
                            try (ResultSet generatedKeys = insertOrderStatement.getGeneratedKeys()) {
                                if (generatedKeys.next()) {
                                    orderId = generatedKeys.getInt(1);
                                } else {
                                    throw new SQLException("Creating book failed, no ID obtained.");
                                }
                            }
                        }
                    }
                    String insertBookRoomQuery = "INSERT INTO hotel.bookroom (phid, rid, datecheckin, datecheckout) VALUES (?, ?, ?, ?)";
                    try (PreparedStatement insertBookRoomStatement = con.prepareStatement(insertBookRoomQuery)) {
                        insertBookRoomStatement.setInt(1, orderId);
                        insertBookRoomStatement.setInt(2, bk.getRid());
                        insertBookRoomStatement.setString(3, bk.getDatecheckin());
                        insertBookRoomStatement.setString(4, bk.getDatecheckout());
                        insertBookRoomStatement.executeUpdate();
                    }
                }
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void UserService(Customer c, Cart cart) {
        try {
            String sql1 = "SELECT * FROM hotel.bill WHERE cid = ? AND bstatus != 2";
            con = new DBConnect().connection;
            ps = con.prepareStatement(sql1);
            ps.setInt(1, c.getCid());
            rs = ps.executeQuery();
            if (rs.next()) {
                int bid = rs.getInt(1);
                for (Item i : cart.getItems()) {
                    String sql3 = "INSERT INTO `hotel`.`useservice` (`phid`, `srid`, `quantity`, `price`) VALUES (?,?,?,?);";
                    PreparedStatement st3 = con.prepareStatement(sql3);
                    st3.setInt(1, bid);
                    st3.setInt(2, i.getServices().getSrid());
                    st3.setInt(3, i.getQuantity());
                    st3.setDouble(4, i.getPrice() * i.getQuantity());
                    st3.executeUpdate();
                }
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public List<UseService> getUser(int cid) {
        List<UseService> list = new ArrayList<>();
        String query = "select l.phid, u.srid, s.sname, s.urlimage, u.quantity, u.price, s.price\n"
                + "from UseService as u, Services as s, Bill as l, Customer as c\n"
                + "where u.phid = l.phid and s.srid = u.srid and c.cid = l.cid and l.bstatus != 2 and l.cid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UseService(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getDouble(6),
                        rs.getDouble(7)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<BookRoom> getBook(int cid) {
        List<BookRoom> list = new ArrayList<>();
        String query = "SELECT l.phid, b.rid, r.urlimage1, b.datecheckin, b.datecheckout, \n"
                + "       DATEDIFF(b.datecheckout, b.datecheckin) AS bday, r.priceRoom, \n"
                + "       (DATEDIFF(b.datecheckout, b.datecheckin)) * r.priceRoom AS total\n"
                + "FROM BookRoom AS b\n"
                + "JOIN Room AS r ON b.rid = r.rid\n"
                + "JOIN Bill AS l ON b.phid = l.phid\n"
                + "WHERE l.bstatus != 2 AND l.cid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BookRoom(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getDouble(7),
                        rs.getDouble(8)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public Bill getABill(int cid) {
        String query = "select b.phid, b.cid, b.vid, v.discount, b.datePay, b.totalmoney, b.bstatus\n"
                + "from Bill as b, Voucher as v\n"
                + "where b.vid = v.vid and b.bstatus != 2 and b.cid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Bill(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getString(7));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public void upBill(int phid, double total) {
        String sql = "update Bill set totalmoney = ?, bstatus = 1  where phid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(sql);
            ps.setDouble(1, total);
            ps.setInt(2, phid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void DeleteBill(int phid) {
        String sql = "Begin Try\n"
                + "	Begin Tran\n"
                + "\n"
                + "	Declare @phidtoDelete int = ?\n"
                + "\n"
                + "	DELETE FROM BookRoom WHERE phid= @phidtoDelete\n"
                + "	DELETE FROM UseService WHERE phid= @phidtoDelete\n"
                + "	\n"
                + "	DELETE FROM Bill WHERE phid= @phidtoDelete\n"
                + "\n"
                + "	Commit Tran\n"
                + "End Try\n"
                + "\n"
                + "Begin Catch\n"
                + "	Rollback Tran\n"
                + "End Catch";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(sql);
            ps.setDouble(1, phid);
            ps.executeUpdate();
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public List<Bill> vBill(String usid) {
        List<Bill> list = new ArrayList<>();
        String query = "select b.phid, b.cid, b.vid, v.discount, b.datePay, b.totalmoney, b.bstatus\n"
                + "from Bill as b, Customer as c, Voucher as v\n"
                + "where b.cid = c.cid and b.vid = v.vid and c.usid = ?";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            ps.setString(1, usid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Bill(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getString(7)));
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
    }

    public List<Revenue> RevenueOfMonth() {
        List<Revenue> list = new ArrayList<>();
        String sql = "SELECT YEAR(datePay) AS [Year],MONTH(datePay) AS [Month], SUM(totalmoney) AS Total\n"
                + "FROM Bill\n"
                + "WHERE bstatus = 2\n"
                + "GROUP BY YEAR(datePay),MONTH(datePay)";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
                list.add(new Revenue(rs.getString(1), rs.getString(2), rs.getDouble(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Bill> getBill() {
        List<Bill> list = new ArrayList<Bill>();
        String query = "SELECT DATE_FORMAT(datePay, '%Y-%m') AS datePay, SUM(totalmoney) AS totalmoney\n"
                + "FROM bill\n"
                + "GROUP BY datePay, totalmoney\n"
                + "ORDER BY datePay, totalmoney;";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Bill bill = new Bill();
                bill.setPdate(rs.getString("datePay"));
                bill.setTotalmoney(rs.getDouble("totalmoney"));
                list.add(bill);
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;

    }

    public Bill Revenue() {
        String query = "select SUM(totalmoney) AS totalmoney\n"
                + "FROM bill";
        try {
            con = new DBConnect().connection;
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Bill bill = new Bill();
                bill.setTotalmoney(rs.getDouble("totalmoney"));
                return bill;
            }
        } catch (SQLException e) {
            // Handle any exceptions that occur
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public static void main(String[] args) {
        BillDAO dao = new BillDAO();
        List<Bill> b = dao.getBill();
        for (Bill bill : b) {
            System.out.println(bill);
        }
    }
}

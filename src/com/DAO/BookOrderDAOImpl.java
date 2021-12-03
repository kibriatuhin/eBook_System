package com.DAO;

import com.entity.Book_order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookOrderDAOImpl implements BookOrderDAO {

    private Connection connection;
    public BookOrderDAOImpl(Connection connection){
        super();
        this.connection = connection;
    }
    @Override
    public int getOrderNo() {
        int i=1;
        try {
            String sql = "select * from book_order";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                i++;
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return i;
    }

    @Override
    public boolean saveOrder(List<Book_order> book_order) {
        boolean f = false;
        try {
            String sql = "insert into book_order(order_id,user_name,email,address,phone,book_name,author,price,payment) values(?,?,?,?,?,?,?,?,?)";
            connection.setAutoCommit(false);
            PreparedStatement ps = connection.prepareStatement(sql);
            for (Book_order b: book_order){
                ps.setString(1,b.getOrderId());
                ps.setString(2,b.getUser_name());
                ps.setString(3,b.getEmail());
                ps.setString(4,b.getFulladd());
                ps.setString(5,b.getPhone());
                ps.setString(6,b.getBookName());
                ps.setString(7,b.getAuthor());
                ps.setString(8,b.getPrice());
                ps.setString(9,b.getPaymentType());
                ps.addBatch();

            }
           int[] count =  ps.executeBatch();
            connection.commit();
            f=true;
            connection.setAutoCommit(true );
        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<Book_order> getBook(String email) {
        List<Book_order> list = new ArrayList<>();
        Book_order order = null;

        try {
            String sql = "select * from book_order where email=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                order = new Book_order();
                order.setId(rs.getInt(1));
                order.setOrderId(rs.getString(2));
                order.setUser_name(rs.getString(3));
                order.setEmail(rs.getString(4));
                order.setFulladd(rs.getString(5));
                order.setPhone(rs.getString(6));
                order.setBookName(rs.getString(7));
                order.setAuthor(rs.getString(8));
                order.setPrice(rs.getString(9));
                order.setPaymentType(rs.getString(10));
                list.add(order);

            }



        }catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public List<Book_order> getAllBook() {
        List<Book_order> list = new ArrayList<>();
        Book_order order = null;

        try {
            String sql = "select * from book_order";
            PreparedStatement ps = connection.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                order = new Book_order();
                order.setId(rs.getInt(1));
                order.setOrderId(rs.getString(2));
                order.setUser_name(rs.getString(3));
                order.setEmail(rs.getString(4));
                order.setFulladd(rs.getString(5));
                order.setPhone(rs.getString(6));
                order.setBookName(rs.getString(7));
                order.setAuthor(rs.getString(8));
                order.setPrice(rs.getString(9));
                order.setPaymentType(rs.getString(10));
                list.add(order);

            }



        }catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }
}

package com.DAO;

import com.entity.BookDtls;
import com.entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDAOImpl implements CartDAO {
    private Connection connection;
    public CartDAOImpl(Connection connection){
        this.connection = connection;
    }

    @Override
    public boolean addCart(Cart c) {
        boolean f = false;

        try {
            String sql = "insert into cart(bid,uid,bookName,author,price,total_price) values(?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,c.getBid());
            ps.setInt(2,c.getUid());
            ps.setString(3,c.getBookName());
            ps.setString(4,c.getAuthor());
            ps.setDouble(5,c.getPrice());
            ps.setDouble(6,c.getTotalPrice());
            int i = ps.executeUpdate();
            if (i==1){
                f=true;
            }

        }catch (Exception e){

        }
        System.out.println(f);
        return f;
    }

    @Override
    public List<Cart> getBookByUser(int userId) {
        List<Cart> list = new ArrayList<>();
        Cart c = null;
        double totalPrice=0 ;
        try {
            String sql = "select * from cart where uid=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,userId);

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                c = new Cart();
                 c.setCid(rs.getInt(1));
                 c.setBid(rs.getInt(2));
                 c.setUid(rs.getInt(3));
                 c.setBookName(rs.getString(4));
                 c.setAuthor(rs.getString(5));
                 c.setPrice(rs.getDouble(6));

                 totalPrice = totalPrice + rs.getDouble(7);
                 c.setTotalPrice(totalPrice);
                 list.add(c);


            }


        }catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public boolean deleteBook(int bid , int uid ,int cid) {
        boolean b = false;
        try {
            String sql = "delete  from  cart where bid=? and uid =? and cid=?";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1,bid);
            ps.setInt(2,uid);
            ps.setInt(3,cid);

            int i = ps.executeUpdate();
            if (i==1){
                b = true;
            }


        }catch (Exception e){
            e.printStackTrace();
        }
        return b;
    }
}

package com.DAO;

import com.entity.BookDtls;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookDAOImpl implements BookDAO {
    private Connection connection;

    public BookDAOImpl(Connection connection) {
        super();
        this.connection = connection;
    }

    @Override
    public boolean addBooks(BookDtls bookDtls) {
        boolean f = false;
        try {

            String sql = "insert into book_dtls(bookname,author,price,bookCategory,status,photo,user_email) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,bookDtls.getBookName());
            ps.setString(2,bookDtls.getAuthor());
            ps.setString(3 ,bookDtls.getPrice());
            ps.setString(4,bookDtls.getBookCategory());
            ps.setString(5,bookDtls.getStatus());
            ps.setString(6,bookDtls.getPhotoName());
            ps.setString(7,bookDtls.getEmail());

            int i = ps.executeUpdate();
            if (i==1){
                f= true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<BookDtls> getALlBooks()
    {
        List<BookDtls> list = new ArrayList<>();
        BookDtls b = null;



        try {
            String sql = "select * from book_dtls";

            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                b = new BookDtls();
                b.setBookId(rs.getInt(1));
                b.setBookName(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setBookCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhotoName(rs.getString(7));
                b.setEmail(rs.getString(8));
                list.add(b);

            }

        }catch (Exception e){
            e.printStackTrace();
        }


        return list;
    }

    @Override
    public BookDtls getBookById(int id) {

        BookDtls b = null;
        try {

            String sql = "select * from book_dtls where bookId=?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                b = new BookDtls();
                b.setBookId(rs.getInt(1));
                b.setBookName(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setBookCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhotoName(rs.getString(7));
                b.setEmail(rs.getString(8));
            }


        }catch (Exception e){
            e.printStackTrace();
        }
        return b;
    }

    @Override
    public Boolean updateEditBooks(BookDtls b) {
        boolean f = false;
        try {
            String sql = "update book_dtls set bookname=? , author=? , price=? , status=? where bookId=? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,b.getBookName());
            ps.setString(2,b.getAuthor());
            ps.setString(3,b.getPrice());
            ps.setString(4,b.getStatus());
            ps.setInt(5,b.getBookId());

           int i =  ps.executeUpdate();
           if (i==1){
               f = true;
           }


        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public boolean deleteBooks(int id) {
        boolean f = false;
        try {
            String sql = "delete from book_dtls where bookId=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,id);
            int i = ps.executeUpdate();
            if (i==1){
                f = true;
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<BookDtls> getNewBook() {
        List<BookDtls> list = new ArrayList<>();
        BookDtls b = null;

        try {
            String sql = "select * from book_dtls where bookCategory=? and status=?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,"New");
            ps.setString(2,"Active");

            ResultSet rs = ps.executeQuery();
            int i=1 ;
            while (rs.next() && i<=4){
                b= new BookDtls();
                b.setBookId(rs.getInt(1));
                b.setBookName(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setBookCategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhotoName(rs.getString(7));
                b.setEmail(rs.getString(8));
                list.add(b);
                i++;
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }
}

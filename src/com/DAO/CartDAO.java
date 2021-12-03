package com.DAO;

import com.entity.BookDtls;
import com.entity.Cart;

import java.util.List;

public interface CartDAO {
    public abstract boolean addCart(Cart c);

    public abstract List<Cart> getBookByUser(int userId);

    public abstract  boolean deleteBook(int bid , int uid,int cid);
}

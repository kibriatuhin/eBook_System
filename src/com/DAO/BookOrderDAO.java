package com.DAO;

import com.entity.Book_order;

import java.util.List;

public interface BookOrderDAO {

    public abstract int getOrderNo();

    public abstract boolean saveOrder(List<Book_order> book_order);

    public abstract List<Book_order> getBook(String email);

    public abstract List<Book_order> getAllBook();
}

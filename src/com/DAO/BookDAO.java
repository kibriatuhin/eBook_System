package com.DAO;

import com.entity.BookDtls;

import java.util.List;

public interface BookDAO {
    public abstract boolean addBooks(BookDtls bookDtls);

    public abstract List<BookDtls> getALlBooks();

    public abstract BookDtls getBookById(int id);

    public abstract Boolean updateEditBooks(BookDtls b);

    public abstract boolean deleteBooks(int id);

    public List<BookDtls> getNewBook();

    public List<BookDtls> getRecentBook();

    public List<BookDtls> getOldBook();

    public List<BookDtls> getAllRecentBook();

    public List<BookDtls> getAllNewBook();

    public List<BookDtls> getAllOldBook();

    public List<BookDtls> getBookByOld(String email , String cate );


    public boolean OldBookDelete(String email,String cat,int id);

    public List<BookDtls> getBookBySearch(String ch);

}

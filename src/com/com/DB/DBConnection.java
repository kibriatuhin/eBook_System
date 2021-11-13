package com.com.DB;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static Connection con ;
    public static Connection getConn(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eBook_app" , "root" , "");


        }catch (Exception e){
            e.printStackTrace();
        }

        return con;

    }

}

package com.DAO;

import com.entity.User;

public interface UserDAO {
    public boolean userRegistration(User user);

    public User login(String email, String password);

    public boolean checkPassword(int id,String ps);

    public boolean updateProfile(User user);

    public boolean checkUser(String em);
}

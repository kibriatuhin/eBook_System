package com.DAO;

import com.entity.User;

public interface UserDAO {
    public boolean userRegistration(User user);

    public User login(String email, String password);
}

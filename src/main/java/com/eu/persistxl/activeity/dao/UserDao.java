package com.eu.persistxl.activeity.dao;

import com.eu.persistxl.activeity.entity.UserBean;

import java.util.List;


/**
 * Created by point on 17-11-30.
 */
public interface UserDao {
   List<UserBean> login(UserBean userBean);
    UserBean username(int  u_id);
    void updatepsw(UserBean userBean)throws Exception;
}


package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.dao.UserDao;
import com.eu.persistxl.activeity.dao.impl.UserDaoImpl;
import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.service.UserService;

import java.util.List;

/**
 *
 * @author point
 * @date 17-11-30
 */
public class UserServiceImpl implements UserService {
    UserDao userDao =new UserDaoImpl();
    @Override
    public List<UserBean> login(UserBean userBean) {
        try {
            return userDao.login(userBean);
        }catch(Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public UserBean username(int u_id) {
        return userDao.username(u_id);
    }

    @Override
    public void updatepsw(UserBean userBean) throws Exception{
        userDao.updatepsw(userBean);
    }

}

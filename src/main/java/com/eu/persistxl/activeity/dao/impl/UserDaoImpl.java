package com.eu.persistxl.activeity.dao.impl;


import com.eu.persistxl.activeity.dao.UserDao;
import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.utils.BaseDaoutil;

import java.util.List;

/**
 *
 * @author point
 * @date 17-11-30
 */
 public class UserDaoImpl extends BaseDaoutil implements UserDao{

    @Override
    public List<UserBean> login(UserBean userBean) {
        String sql =" SELECT * FROM user WHERE u_userid=? AND u_password=?; ";
        Object[] num={userBean.getU_userid(), userBean.getU_password()};
        List <UserBean> list =super.query(sql,num,UserBean.class);
        return  (list!=null && list.size()>0 ? list : null);
    }

}

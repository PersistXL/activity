package com.eu.persistxl.activeity.dao.impl;

import com.eu.persistxl.activeity.dao.AdminDao;
import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.utils.BaseDaoutil;

import java.util.List;

/**
 * @author 李昕励 ${date}
 * @date ${time}
 */
public class AdminDaoImpl extends BaseDaoutil implements AdminDao  {
    @Override
    public void Admin_addInfo(UserBean userBean) {
        String sql="INSERT INTO user(u_userid,u_username,u_password,u_sex,u_rank) VALUES (?,?,?,?,?);";
        Object[] num={userBean.getU_userid(),userBean.getU_username(),userBean.getU_password(),userBean.getU_sex(),userBean.getU_rank()};
        super.update(sql,num);
    }

    @Override
    public List<UserBean> Admin_UserInfo() {
        String sql = "select * from user;";
        List<UserBean> list = super.query(sql, null, UserBean.class);
        return list != null && list.size() > 0 ? list : null;
    }

    @Override
    public void Admin_deleteInfo(int u_id) {
        String sql = "delete from user where u_id = ?;";
        Object[] num = {u_id};
        super.update(sql, num);
    }

    @Override
    public List<UserBean> findUserToId(int u_id) {
        String sql = "select * from user where u_id = ?;";
        Object []  num={u_id};
        List<UserBean> list = super.query(sql, num, UserBean.class);
        return list != null && list.size() > 0 ? list : null;
    }
}

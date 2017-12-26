package com.eu.persistxl.activeity.dao.impl;

import com.eu.persistxl.activeity.dao.AdminDao;
import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.utils.BaseDaoutil;

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
}

package com.eu.persistxl.activeity.service;

import com.eu.persistxl.activeity.entity.UserBean;

import java.util.List;

/**
 * @author 李昕励 ${date}
 * @date ${time}
 */
public interface AdminService {
    /**
    添加用户的个人信息
    */
    void Admin_addInfo(UserBean userBean);
    /**
     查询用户的信息
     * */
    List<UserBean> Admin_UserInfo();
    /**
     删除用户信息
     * */
    void Admin_deleteInfo(int u_id);
    /**
     根据用户的id查询用户
     * */
    List<UserBean> findUserToId(int u_id);

    void Admin_updateInfo(UserBean userBean);
}

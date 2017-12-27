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
}

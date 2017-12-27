package com.eu.persistxl.activeity.dao;

import com.eu.persistxl.activeity.entity.UserBean;

import java.util.List;

/**
 * @author 李昕励 ${date}
 * @date ${time}
 */
public interface AdminDao {
    void Admin_addInfo(UserBean userBean);

    List<UserBean> Admin_UserInfo();
}

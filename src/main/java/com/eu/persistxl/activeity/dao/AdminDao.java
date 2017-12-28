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

    void Admin_deleteInfo(int u_id);

    List<UserBean> findUserToId(int u_id);

    void Admin_updateInfo(UserBean userBean);
}

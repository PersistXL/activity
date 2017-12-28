package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.dao.AdminDao;
import com.eu.persistxl.activeity.dao.impl.AdminDaoImpl;
import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.service.AdminService;

import java.util.List;

/**
 * @author 李昕励 ${date}
 * @date ${time}
 */
public class AdminServiceImpl implements AdminService {
    AdminDao adminDao = new AdminDaoImpl();

    @Override
    public void Admin_addInfo(UserBean userBean) {
            adminDao.Admin_addInfo(userBean);
    }

    @Override
    public List<UserBean> Admin_UserInfo() {
        {
            try {
                return adminDao.Admin_UserInfo();
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        return null;
    }

    @Override
    public void Admin_deleteInfo(int u_id) {
        adminDao.Admin_deleteInfo(u_id);
    }

    @Override
    public List<UserBean> findUserToId(int u_id) {
        try {
            return adminDao.findUserToId(u_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.dao.AdminDao;
import com.eu.persistxl.activeity.dao.impl.AdminDaoImpl;
import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.service.AdminService;

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
}

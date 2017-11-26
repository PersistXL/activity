package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.dao.IUserDao;
import com.eu.persistxl.activeity.entity.AdminBean;
import com.eu.persistxl.activeity.entity.StudentBean;
import com.eu.persistxl.activeity.entity.TeacherBean;
import com.eu.persistxl.activeity.service.IUserSerivce;
import com.eu.persistxl.activeity.dao.impl.UserDao;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/6/6.
 */
public class UserService  implements IUserSerivce {
    IUserDao userDao = new UserDao();
    public List<StudentBean> Slogin(StudentBean studentBean) {
        try {
            return userDao.Slogin(studentBean);
        }catch(Exception e){
            throw new RuntimeException(e);
        }
    }

    public List<TeacherBean> Tlogin(TeacherBean teacherBean) {
        try{
            return userDao.Tlogin(teacherBean);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    public List<AdminBean> Alogin(AdminBean adminBean) {
        try{
            return userDao.Alogin(adminBean);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}

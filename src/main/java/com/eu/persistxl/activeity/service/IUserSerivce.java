package com.eu.persistxl.activeity.service;

import com.eu.persistxl.activeity.entity.AdminBean;
import com.eu.persistxl.activeity.entity.TeacherBean;
import com.eu.persistxl.activeity.entity.StudentBean;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/6/6.
 */
public interface IUserSerivce {
    /**
     * 学生登录
     */
    List<StudentBean> Slogin (StudentBean studentBean);

    /**
     * 老师登录
     */
    List<TeacherBean> Tlogin (TeacherBean teacherBean);

    /**
     * 管理员登录
     *
     */
    List<AdminBean> Alogin (AdminBean adminBean);
}

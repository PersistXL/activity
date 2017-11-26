package com.eu.persistxl.activeity.service;

import com.eu.persistxl.activeity.entity.CurriseBean;
import com.eu.persistxl.activeity.entity.StudentBean;
import com.eu.persistxl.activeity.entity.TeacherBean;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/6/12.
 */
public interface IAdminStuCurriseService {
    /**
     * 查找所有的课程
     */
    List<CurriseBean> Admin_TeacherFindCourse();
    /**
     * 查找所有老师
     */
    List<TeacherBean> Student_findTeacher();
    /**
     * 通过学生ID查找学生姓名
     */
    List<StudentBean> StudentIdFindName(String s_studentid);
}
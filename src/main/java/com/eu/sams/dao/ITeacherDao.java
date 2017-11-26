package com.eu.sams.dao;

import com.eu.sams.entity.StudentBean;
import com.eu.sams.entity.TeacherBean;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/6/6.
 */
public interface ITeacherDao {
    /**
     * 查找学生信息
     */
    List<TeacherBean> teacherInfo(String t_teacherid);

}

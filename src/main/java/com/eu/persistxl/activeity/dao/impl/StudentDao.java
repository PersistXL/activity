package com.eu.persistxl.activeity.dao.impl;

import com.eu.persistxl.activeity.entity.StudentBean;
import com.eu.persistxl.activeity.utils.BaseDaoutil;
import com.eu.persistxl.activeity.dao.IStudentDao;

import java.util.List;

/**
 * Created by 杨路鹏 on 2017/6/8.
 */
public class StudentDao extends BaseDaoutil implements IStudentDao {
    public List<StudentBean> studentInfo(String s_studentid) {
        String sql="SELECT * FROM students WHERE s_studentid=?;";
        Object []info={s_studentid};
        List<StudentBean> studentBeans=super.query(sql,info,StudentBean.class);
        return (studentBeans!=null&&studentBeans.size()>0?studentBeans:null);
    }
}

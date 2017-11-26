package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.entity.StudentBean;
import com.eu.persistxl.activeity.dao.IStudentDao;
import com.eu.persistxl.activeity.dao.impl.StudentDao;
import com.eu.persistxl.activeity.service.IStudentService;

import java.util.List;

/**
 * Created by 杨璐鹏 on 2017/6/8.
 */
public class StudentService implements IStudentService {
    IStudentDao studentDao=new StudentDao();
    public List<StudentBean> studentInfo(String s_studentid) {
        try{
            return studentDao.studentInfo(s_studentid);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}

package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.dao.ITeacherDao;
import com.eu.persistxl.activeity.dao.impl.TeacherDao;
import com.eu.persistxl.activeity.entity.TeacherBean;
import com.eu.persistxl.activeity.service.ITeacherService;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/6/13.
 */
public class TeacherService implements ITeacherService {
ITeacherDao teacherDao =new TeacherDao();
    public List<TeacherBean> teacherInfo(String t_teacherid) {
        try{
            return teacherDao.teacherInfo(t_teacherid);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}

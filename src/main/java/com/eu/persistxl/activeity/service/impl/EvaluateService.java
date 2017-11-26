package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.dao.impl.EvaluateDao;
import com.eu.persistxl.activeity.entity.EvaluateBean;
import com.eu.persistxl.activeity.service.IEvaluateService;
import com.eu.persistxl.activeity.dao.IEvaluateDao;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/6/9.
 */
public class EvaluateService implements IEvaluateService {
    private IEvaluateDao evaluateDao = new EvaluateDao();
    public void teacherEvaluateStudent(EvaluateBean evaluateBean) {
        try {
            evaluateDao.teacherEvaluateStudent(evaluateBean);
        }catch(Exception e){
            throw new RuntimeException(e);
        }
    }

    public List<EvaluateBean> findteacherEvaluateStudent(EvaluateBean evaluateBean) {
        try {
            return  evaluateDao.findteacherEvaluateStudent(evaluateBean);
        }catch(Exception e){
            throw new RuntimeException(e);
        }
    }
    public void studentMessage(EvaluateBean evaluateBean) {
        try{
            evaluateDao.studentMessage(evaluateBean);
        }catch (Exception e){
            throw new RuntimeException(e);

        }
    }

    public List<EvaluateBean> find_studentMessage(String e_studentid) {
        try{
            return evaluateDao.find_studentMessage(e_studentid);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    public List<EvaluateBean> findStudentToTeacherEvaluate(EvaluateBean evaluateBean) {
        try{
            return evaluateDao.findStudentToTeacherEvaluate(evaluateBean);
        }catch (Exception e){
            throw new RuntimeException(e);
        }

    }
    public List<EvaluateBean> find_teacherMessage(String e_discern) {
        try {
            return evaluateDao.find_teacherMessage(e_discern);

        }catch (Exception e){
            throw  new  RuntimeException(e);
        }

    }
}

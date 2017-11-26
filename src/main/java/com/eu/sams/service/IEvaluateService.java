package com.eu.sams.service;

import com.eu.sams.entity.EvaluateBean;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/6/9.
 */
public interface IEvaluateService {
    /**
     * 老师给学生发布任务
     */
    void teacherEvaluateStudent(EvaluateBean evaluateBean);
    /**
     * 将老师发布任务查找到该老师页面
     */
    List<EvaluateBean > findteacherEvaluateStudent(EvaluateBean evaluateBean);
    /**
     * 学生留言版
     * */
    void studentMessage(EvaluateBean evaluateBean);
    /**
     * find学生留言版
     * */
    List<EvaluateBean> find_studentMessage(String e_studentid);
    /**
     *通过老师工号和 状态属性e_discern查找学生留言
     */
    List <EvaluateBean> findStudentToTeacherEvaluate(EvaluateBean evaluateBean);
    /**
     * 查询老师留言
     * */
    List<EvaluateBean> find_teacherMessage(String e_discern);

}

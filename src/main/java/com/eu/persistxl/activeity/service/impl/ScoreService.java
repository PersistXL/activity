package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.dao.IScoreDao;
import com.eu.persistxl.activeity.dao.impl.ScoreDao;
import com.eu.persistxl.activeity.entity.ScoreBean;
import com.eu.persistxl.activeity.service.IScoreService;

import java.util.List;

/**
 * Created by 马欢欢 on 2017/6/6.
 */
public class ScoreService implements IScoreService {
    IScoreDao scoreDao = new ScoreDao();
    public List<ScoreBean> score() {
        try {
            return scoreDao.score();
        }catch(Exception e){
            throw new RuntimeException(e);
        }
    }
    public List<ScoreBean> idscore(String s_studentid){
        try {
            return scoreDao.idscore(s_studentid);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
    public List<ScoreBean> idFindscore(int sc_id) {
        try {
            return scoreDao.idFindscore(sc_id);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    public void saveById(ScoreBean scoreBean) {
        try {
           scoreDao.saveById(scoreBean);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
    public void saveById1(ScoreBean scoreBean) {
        try {
            scoreDao.saveById1(scoreBean);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    public void sc_idDelete(int sc_id) {
        try {
            scoreDao.sc_idDelete(sc_id);
        }catch (Exception e){
            throw new RuntimeException(e);
        }

    }

    public void addStudentResult(ScoreBean scoreBean) {
        try {
            scoreDao.addStudentResult(scoreBean);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}

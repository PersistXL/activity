package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.dao.EvaluateDao;
import com.eu.persistxl.activeity.dao.impl.EvaluateDaoImpl;
import com.eu.persistxl.activeity.entity.EvaluateBean;
import com.eu.persistxl.activeity.service.EvaluateService;

import java.util.List;

/**
 * @author point
 */
public class EvaluateServiceImpl implements EvaluateService {
    EvaluateDao evaluateDao = new EvaluateDaoImpl();

    @Override
    public void Message(EvaluateBean evaluateBeane) {
        try{
            evaluateDao.Message(evaluateBeane);
        }catch (Exception e){
            throw new RuntimeException(e);

        }
    }

    @Override
    public List<EvaluateBean> find_Message(int u_id) {
      try {
          return evaluateDao.find_Message(u_id);
      }catch (Exception e){
          throw new RuntimeException(e);
      }
    }

    @Override
    public List<EvaluateBean> query() {
        return evaluateDao.query();
    }
}

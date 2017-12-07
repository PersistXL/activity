package com.eu.persistxl.activeity.service.impl;

import com.eu.persistxl.activeity.dao.EvaluateDao;
import com.eu.persistxl.activeity.dao.impl.EvaluateDaoImpl;
import com.eu.persistxl.activeity.entity.EvaluateBean;
import com.eu.persistxl.activeity.service.EvaluateService;

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
}

package com.eu.persistxl.activeity.dao;

import com.eu.persistxl.activeity.entity.EvaluateBean;

import java.util.List;

/**
 * @author point
 */
public interface EvaluateDao {
    void Message(EvaluateBean evaluateBean);

    List<EvaluateBean> query();
}

package com.eu.persistxl.activeity.dao;

import com.eu.persistxl.activeity.entity.EvaluateBean;

import java.util.List;

/**
 * @author point
 */
public interface EvaluateDao {
    void Message(EvaluateBean evaluateBean);
    List<EvaluateBean> find_Message(int u_id);
    List<EvaluateBean> query();
}

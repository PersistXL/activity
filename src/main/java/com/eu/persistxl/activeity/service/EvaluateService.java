package com.eu.persistxl.activeity.service;

import com.eu.persistxl.activeity.entity.EvaluateBean;

import java.util.List;

/**
 * @author point
 */
public interface EvaluateService {
    void Message(EvaluateBean evaluateBeane);

    List<EvaluateBean> find_Message(int u_id);

    List<EvaluateBean> query();
}

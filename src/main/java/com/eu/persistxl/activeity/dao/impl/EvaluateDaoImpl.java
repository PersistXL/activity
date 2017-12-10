package com.eu.persistxl.activeity.dao.impl;

import com.eu.persistxl.activeity.dao.EvaluateDao;
import com.eu.persistxl.activeity.entity.EvaluateBean;
import com.eu.persistxl.activeity.utils.BaseDaoutil;

import java.util.List;

/**
 * @author point
 */
public class EvaluateDaoImpl extends BaseDaoutil implements EvaluateDao {

    @Override
    public void Message(EvaluateBean evaluateBean) {
        String sql = "INSERT INTO evaluate(e_userid,e_motif,e_theme,e_date,e_img) VALUE(?,?,?,?,?);";
        Object[] eva = {evaluateBean.getE_userid(), evaluateBean.getE_motif(),
                evaluateBean.getE_theme(), evaluateBean.getE_date(), evaluateBean.getE_img()};
        super.update(sql, eva);
    }

    @Override
    public List<EvaluateBean> query() {
        String sql = " SELECT * FROM evaluate ; ";
        List<EvaluateBean> list = super.query(sql, null, EvaluateBean.class);
        return list != null && list.size() > 0 ? list : null;
    }
}

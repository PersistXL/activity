package com.eu.persistxl.activeity.dao.impl;


import com.eu.persistxl.activeity.dao.UserDao;
import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.utils.BaseDaoutil;
import com.eu.persistxl.activeity.utils.ConnUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author point
 * @date 17-11-30
 */
 public class UserDaoImpl extends BaseDaoutil implements UserDao{

    @Override
    public List<UserBean> login(UserBean userBean) {
        String sql =" SELECT * FROM user WHERE u_userid=? AND u_password=?; ";
        Object[] num={userBean.getU_userid(), userBean.getU_password()};
        List <UserBean> list =super.query(sql,num,UserBean.class);
        return  (list!=null && list.size()>0 ? list : null);
    }

    @Override
    public UserBean username(int u_id){
        //在数据库中查询信息
        try{
            UserBean userBean = new UserBean();
            Connection conn = ConnUtil.getConnextion();
            String changeSql = "select * from user WHERE u_id = ?";
            PreparedStatement pstm = conn.prepareStatement(changeSql);
            pstm.setInt(1, u_id);
            ResultSet rs = pstm.executeQuery();
            if(rs.next()) {
               userBean.setU_userid(rs.getString(2));
               userBean.setU_username(rs.getString(3));
               userBean.setU_password(rs.getString(4));
               userBean.setU_sex(rs.getString(5));
               userBean.setU_img(rs.getString(6));
                return userBean;
            }
        }catch (Exception e){
            System.out.println(e);
        }
        return null;
    }

}

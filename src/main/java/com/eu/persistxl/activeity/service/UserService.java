package com.eu.persistxl.activeity.service;

import com.eu.persistxl.activeity.entity.StudentBean;
import com.eu.persistxl.activeity.entity.UserBean;

import java.util.List;

/**
 * Created by point on 17-11-30.
 */
public interface UserService {
    List<UserBean> login (UserBean userBean);
}

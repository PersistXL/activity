package com.eu.persistxl.activeity.servlet;

import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.service.AdminService;
import com.eu.persistxl.activeity.service.impl.AdminServiceImpl;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author 李昕励 ${date}
 * @date ${time}
 */
@WebServlet(name = "AdminServlet", urlPatterns = "/AdminServlet")
public class AdminServlet extends HttpServlet {
    AdminService adminService = new AdminServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");
        if(method.equals("Admin_UserInfo")){
            Admin_UserInfo(request,response);
        }else if(method.equals("findUserToId")){
            findUserToId(request,response);
        }else if(method.equals("Admin_deleteInfo")){
            Admin_deleteInfo(request,response);
        }else if(method.equals("Admin_addInfo")){
            Admin_addInfo(request,response);
        }else if(method.equals("Admin_updateInfo")){
            Admin_updateInfo(request,response);
        }
    }

    private void Admin_updateInfo(HttpServletRequest request, HttpServletResponse response) {
    }

    private void Admin_addInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserBean userBean=new UserBean();
        userBean.setU_userid(request.getParameter("u_userid"));
        userBean.setU_username(request.getParameter("u_username"));
        userBean.setU_password(request.getParameter("u_password"));
        userBean.setU_sex(request.getParameter("u_sex"));
        userBean.setU_rank(request.getParameter("u_rank"));
        adminService.Admin_addInfo(userBean);
        System.out.println(userBean);
        response.sendRedirect(request.getContextPath()+"/change/user.jsp");
    }

    private void Admin_deleteInfo(HttpServletRequest request, HttpServletResponse response) {
        int u_id= Integer.parseInt(request.getParameter("u_id"));
        adminService.Admin_deleteInfo(u_id);
    }

    private void findUserToId(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int u_id= Integer.parseInt(request.getParameter("u_id"));
        List<UserBean> userBeans= adminService.findUserToId(u_id);
        JSONArray jsonArray = JSONArray.fromObject(userBeans);
        System.out.println(jsonArray);
        response.getWriter().print(jsonArray);
    }

    private void Admin_UserInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<UserBean> userBeans=adminService.Admin_UserInfo();
        JSONArray jsonArray=JSONArray.fromObject(userBeans);
        System.out.println(jsonArray);
        response.getWriter().print(jsonArray);
    }

}

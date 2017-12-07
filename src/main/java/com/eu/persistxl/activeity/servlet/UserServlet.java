package com.eu.persistxl.activeity.servlet;


import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.service.UserService;
import com.eu.persistxl.activeity.service.impl.UserServiceImpl;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author 李昕勵
 * @date 2017/11/30
 */
@WebServlet(name = "UserServlet",urlPatterns = "/UserServlet")
public class UserServlet extends HttpServlet {
    UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String method = req.getParameter("method");
        if (method.equals("login")) {
            login(req, resp);
        } else if (method.equals("logout")) {
            logout(req, resp);
        }else if (method.equals("username")) {
            username(req, resp);
        }
    }

    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserBean userBean = new UserBean();
        userBean.setU_userid(req.getParameter("username"));
        userBean.setU_password(req.getParameter("password"));
        List<UserBean> list = userService.login(userBean);
        if (list != null) {
            req.getSession().setAttribute("info", list);
            resp.sendRedirect(req.getContextPath() + "/Admin/index1.jsp");
        } else {
            req.setAttribute("err", "用户名或密码有误，请重新登录");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }
    /*
    protected void alogin(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        System.out.println("mahuan");
        AdminBean adminBean=new AdminBean();
        adminBean.setA_nameid(request.getParameter("userName"));
        adminBean.setA_password(request.getParameter("password"));
        List<AdminBean> alist=userSerivce.Alogin(adminBean);
        if (alist!=null){
            request.getSession().setAttribute("info",alist);
            request.getSession().setAttribute("identity","admin");
            response.sendRedirect(request.getContextPath()+"/Admin/index1.jsp");
        }else {
            request.setAttribute("err","用户名或密码错误，请重新登录");
            response.sendRedirect(request.getContextPath()+"/Admin/index.jsp");
        }*/

    protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().removeAttribute("info");
        request.getSession().removeAttribute("err");
        request.getSession().removeAttribute("identity");
    }

    protected void username(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*UserBean userBean = new UserBean();*/
        List list = (List) request.getSession().getAttribute("info");
        UserBean userBean = (UserBean) list.get(0);
        int u_id = userBean.getU_id();

        UserBean userBean1 = userService.username(u_id);
        System.out.println(userBean1);
        JSONArray jsonArray = JSONArray.fromObject(userBean1);
        response.getWriter().print(jsonArray);
    }
}

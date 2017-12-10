package com.eu.persistxl.activeity.servlet;

import com.eu.persistxl.activeity.entity.EvaluateBean;
import com.eu.persistxl.activeity.entity.UserBean;
import com.eu.persistxl.activeity.service.EvaluateService;
import com.eu.persistxl.activeity.service.impl.EvaluateServiceImpl;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author point
 */
@WebServlet(name = "EvaluateServlet",urlPatterns = "/EvaluateServlet")
public class EvaluateServlet extends HttpServlet {
    EvaluateService evaluateService =new EvaluateServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        String method = req.getParameter("method");
        if (method.equals("Message")) {
            Message(req, resp);
        }else  if(method.equals("find_Message")){
            find_Message(req,resp);
        }else if(method.equals("query")){
            query(req,resp);
        }
    }

    private void query(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{

        List<EvaluateBean> list  = evaluateService.query();
        req.getSession().setAttribute("message" ,list);
        JSONArray jsonArray = JSONArray.fromObject(list);
        resp.getWriter().print(jsonArray);

    }

    private void find_Message(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        List<UserBean> list1= (List) req.getSession().getAttribute("info");
        int u_id = list1.get(0).getU_id();
        List<EvaluateBean> list = evaluateService.find_Message(u_id);
        JSONArray jsonArray = JSONArray.fromObject(list);
        resp.getWriter().print(jsonArray);

    }

    private void Message(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        EvaluateBean evaluateBean = new EvaluateBean();
        evaluateBean.setE_motif(req.getParameter("e_motif"));
        evaluateBean.setE_theme(req.getParameter("e_theme"));
        evaluateBean.setE_date(req.getParameter("e_date"));
        List<UserBean> list= (List) req.getSession().getAttribute("info");
        int u_id = list.get(0).getU_id();
        String u_username = list.get(0).getU_username();
        evaluateBean.setE_username(u_username);
        evaluateBean.setE_userid(u_id);
        evaluateService.Message(evaluateBean);
    }
}

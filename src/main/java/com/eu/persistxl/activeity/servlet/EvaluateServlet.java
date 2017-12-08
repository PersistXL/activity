package com.eu.persistxl.activeity.servlet;

import com.eu.persistxl.activeity.entity.EvaluateBean;
import com.eu.persistxl.activeity.service.EvaluateService;
import com.eu.persistxl.activeity.service.impl.EvaluateServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
        }
    }

    private void find_Message(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void Message(HttpServletRequest req, HttpServletResponse resp) {
        EvaluateBean evaluateBean = new EvaluateBean();
//        List<EvaluateBean> studentBean= (List<EvaluateBean>) req.getSession().getAttribute("info");
//        evaluateBean.setE_userid(studentBean.get(0).getE_userid());
        evaluateBean.setE_motif(req.getParameter("e_motif"));
        evaluateBean.setE_theme(req.getParameter("e_theme"));
        evaluateBean.setE_date(req.getParameter("e_date"));

        evaluateService.Message(evaluateBean);
    }
}

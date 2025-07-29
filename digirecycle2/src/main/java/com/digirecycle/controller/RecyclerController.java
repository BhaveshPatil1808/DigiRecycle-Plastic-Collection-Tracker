package com.digirecycle.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.digirecycle.dao.collectionLogDao;
import com.digirecycle.dao.recyclerdao;
import com.digirecycle.getset.getsetRecycler;
import com.digirecycle.model.collectionLogs;
import com.digirecycle.model.recycler;

@Controller
public class RecyclerController {

    ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
    recyclerdao rd = context.getBean("recyclerdao1", recyclerdao.class);
    collectionLogDao cld = context.getBean("collection",collectionLogDao.class);

    @RequestMapping(value = "/recyclerlogin", method = RequestMethod.GET)
    public String showRecyclerLogin() {
        return "recyclerlogin";
    }

    @RequestMapping(value = "/recyclerlogin", method = RequestMethod.POST)
    public String processRecyclerLogin(HttpServletRequest req) {
        String contact = req.getParameter("contact");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        System.out.println(contact);
        System.out.println(email);
        getsetRecycler.setContact(contact);
        getsetRecycler.setEmail(email);

        recycler r = rd.getRecyclerByEmailAndPassword(email, password);

        if (r != null) {	
           // req.getSession().setAttribute("recyclerContact", r.getContact());
            return "recyclerdashboard";
        } else {
            req.setAttribute("error", "Invalid contact or password");
            return "recyclerlogin";
        }
    }
    
    @RequestMapping("/mycollections")
    public String viewAssignedCollections(HttpServletRequest req) {
        String recyclerContactId = (String) req.getSession().getAttribute("recyclerContact");
        
        if (recyclerContactId == null) {
            return "redirect:/recyclerlogin";
        }

        List<collectionLogs> logs = cld.getByRecyclerContact(recyclerContactId);
        req.setAttribute("collectionLogs", logs);

        return "recyclercollections";  // forwards to recyclercollections.jsp
    }

    
    @RequestMapping("/recyclercollections")
    public String showRecyclerCollections(HttpServletRequest req, Model m) {
        String contact = getsetRecycler.getContact();
        System.out.println(contact);
        List<collectionLogs> list = cld.getByRecyclerContact(contact);
        m.addAttribute("collectionLogs", list);
        return "recyclercollections"; // maps to recyclercollections.jsp
    }
    
    
    @RequestMapping(value = "/updatestatus", method = RequestMethod.POST)
    public String updateStatus(HttpServletRequest req) {
        int id = Integer.parseInt(req.getParameter("id"));
        String status = req.getParameter("status");

        collectionLogs log = cld.getById(id);
        if (log != null) {
            log.setStatus(status);
            cld.update(log);
        }

        return "redirect:/recyclercollections"; // or wherever the recycler dashboard is
    }

}

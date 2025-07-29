package com.digirecycle.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.digirecycle.dao.collectionLogDao;
import com.digirecycle.dao.recyclerdao;
import com.digirecycle.model.collectionLogs;
import com.digirecycle.model.recycler;

@Controller
public class admin {
	ApplicationContext contex = new ClassPathXmlApplicationContext("config.xml");
	
	recyclerdao rd = contex.getBean("recyclerdao1",recyclerdao.class);
	collectionLogDao cld = contex.getBean("collection",collectionLogDao.class);
 

	@RequestMapping("/")
	public String home() {
	    return "adminlogin";
	}

	// GET: Show login page
	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public String adminLoginPage() {
	    return "adminlogin"; // adminlogin.jsp
	}

	// POST: Handle login form
	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
	public String adminLoginAction(HttpServletRequest request) {
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");

	    if ("admin@gmail.com".equals(email) && "123".equals(password)) {
	    	System.out.println("admin login successfuly");
	        request.getSession().setAttribute("adminEmail", email);
	        return "admindashboard"; // admindashboard.jsp
	    } else {
	        request.setAttribute("error", "Invalid Email or Password");
	        return "adminlogin";
	    }
	}

	@RequestMapping("/addrecycler")
	public String showForm() {
	    return "addrecycler";
	}

	@RequestMapping(value = "/saverecycler", method = RequestMethod.POST)
    public String saveRecycler(HttpServletRequest req) {
		System.out.println("Saving page");
        recycler r = new recycler();
        r.setName(req.getParameter("name"));
        r.setEmail(req.getParameter("email"));
        r.setContact(req.getParameter("contact"));
        r.setLocation(req.getParameter("location"));
        r.setPassword(req.getParameter("password"));

        System.out.println(r.getName());
        System.out.println(r.getEmail());
        System.out.println(r.getLocation());
        System.out.println(r.getContact());
        System.out.println(r.getPassword());

        // This is line 70 causing the crash
        rd.saveRecycler(r);

        return "redirect:/viewrecyclers";
    }
	
	
	
	@RequestMapping("/viewrecyclers")
	public String viewAllRecyclers(Model m) {
	    List<recycler> list = rd.getAll();
	    m.addAttribute("recyclers", list);
	    
	    for(recycler r : list){
	    	System.out.println(r);
	    }
	    return "viewrecyclers";
	}
	
	
	@RequestMapping("/viewcollectionslog")
	public String viewCollectionsLog(HttpServletRequest req) {
	    List<collectionLogs> logs = cld.getAll(); // DAO method to get all logs
	    req.setAttribute("collectionLogs", logs);
	    return "viewcollectionslog"; // refers to viewcollectionslog.jsp
	}


}

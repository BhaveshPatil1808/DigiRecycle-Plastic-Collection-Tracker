package com.digirecycle.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.digirecycle.dao.collectionLogDao;
import com.digirecycle.getset.getsetUser;
import com.digirecycle.model.collectionLogs;

@Controller
public class CollectionController {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	collectionLogDao cld = context.getBean("collection",collectionLogDao.class);

	@RequestMapping(value = "/savecollection", method = RequestMethod.POST)
	public String savePlasticCollection(HttpServletRequest req) {
		collectionLogs log = new collectionLogs();

		log.setRecyclerContactId(req.getParameter("recyclerContactId"));
		log.setPlasticType(req.getParameter("plasticType"));
		log.setQuantity(Integer.parseInt(req.getParameter("quantity")));
		log.setRequestDate(req.getParameter("date"));
		log.setStatus("Pending"); // set default status
		log.setUserContactId(getsetUser.getUserEmail());

		cld.insert(log);

		return "redirect:/userdashboard";
	}
}

package net.srhtss.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping(value = {"/", "/anasayfa", "/index"})
	public ModelAndView index() {
		
		ModelAndView mv =new ModelAndView("page");
		mv.addObject("title","Anasayfa");
		mv.addObject("userClickAnasayfa",true);
		return mv;
		
	}
	 
	@RequestMapping(value = "/hakkimizda")
	public ModelAndView about() {
		
		ModelAndView mv =new ModelAndView("page");
		mv.addObject("title","Hakkýmýzda");
		mv.addObject("userClickAbout",true);
		return mv;
		
	}
 
	@RequestMapping(value = "/iletisim")
	public ModelAndView iletisim() {
		
		ModelAndView mv =new ModelAndView("page");
		mv.addObject("title","Ýletiþim");
		mv.addObject("userClickiletisim",true);
		return mv;		
	}
	

}

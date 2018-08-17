package net.srhtss.onlineshopping.exception;

import java.io.PrintWriter;
import java.io.StringWriter;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException() {
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "Sayfa olu�turulmad�!");
		mv.addObject("errorDescription", "Arad���n�z sayfa art�k mevcut de�il!");
		mv.addObject("title", "404 Hata Sayfas�");
		
		
		return mv;
	}
	
	
	@ExceptionHandler(ProductNotFoundException.class)
	public ModelAndView handlerProductNotFoundException() {
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "�r�n mevcut de�il!");
		mv.addObject("errorDescription", "Arad���n�z �r�n art�k mevcut de�il!");
		mv.addObject("title", "�r�n Kullan�lam�yor");
		
		
		return mv;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerException(Exception ex) {
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "L�tfen Bizimle �leti�ime Ge�in!");
		
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		
		ex.printStackTrace(pw);
		
		mv.addObject("errorDescription", sw.toString());
		mv.addObject("title", "�r�n Kullan�lam�yor");
		
		
		return mv;
	}
	
}

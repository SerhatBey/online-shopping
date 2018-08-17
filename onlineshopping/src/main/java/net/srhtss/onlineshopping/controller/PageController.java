package net.srhtss.onlineshopping.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.srhtss.onlineshopping.exception.ProductNotFoundException;
import net.srhtss.shoppingbackend.dao.CategoryDAO;
import net.srhtss.shoppingbackend.dao.ProductDAO;
import net.srhtss.shoppingbackend.dto.Category;
import net.srhtss.shoppingbackend.dto.Product;

@Controller
public class PageController {
	
	private static final Logger logger = LoggerFactory.getLogger(PageController.class);

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = { "/", "/anasayfa", "/index" })
	public ModelAndView index() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Anasayfa");
		
		logger.info("PageController dizin yöntemi içinde - INFO");
		logger.debug("PageController dizin yöntemi içinde - DEBUG");
		

		// passing the list of categories
		mv.addObject("categories", categoryDAO.list());

		mv.addObject("userClickAnasayfa", true);
		return mv;

	} 

	@RequestMapping(value = "/hakkimizda")
	public ModelAndView about() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Hakkýmýzda");
		mv.addObject("userClickAbout", true);
		return mv;

	}

	@RequestMapping(value = "/iletisim")
	public ModelAndView iletisim() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Ýletiþim");
		mv.addObject("userClickiletisim", true);
		return mv;
	}

	/* Methods to load all the products and based on category */

	@RequestMapping(value = { "/show/all/products" })
	public ModelAndView showAllProducts() {

		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Satýþtaki Ürünler");

		// passing the list of categories
		mv.addObject("categories", categoryDAO.list());

		mv.addObject("userClickAllProducts", true);
		return mv;

	}

	@RequestMapping(value = { "/show/category/{id}/products" })
	public ModelAndView showCatogoryProducts(@PathVariable("id") int id) {

		ModelAndView mv = new ModelAndView("page");

		// CategoryDAO Tek bir kategori almak için.
		Category category = null;
		category = categoryDAO.get(id);

		mv.addObject("title", category.getName());

		// passing the list of categories
		mv.addObject("categories", categoryDAO.list());

		// passing the single category object
		mv.addObject("category", category);

		mv.addObject("userClickCategoryProducts", true);
		return mv;

	}
    
	//--------------------------------------------------------------
	// Datebase ayarlarý

	// DATABASE_URL="jdbc:h2:tcp://localhost/~/onlineshopping3";
	// DATABASE_DRIVER="org.h2.Driver";
	// DATABASE_DIALECT="org.hibernate.dialect.H2Dialect";
	// DATABASE_USERNAME="sa";
	// DATABASE_PASSWORD="";
	//-------------------------------------------------------------

	/*
	 * Tek bir ürünü görüntüleme
	 */
	@RequestMapping(value = "/show/{id}/product")
	public ModelAndView showSingleProduct(@PathVariable int id) throws ProductNotFoundException {

		ModelAndView mv = new ModelAndView("page");

		Product product = productDAO.get(id);
		
		if(product == null) throw new ProductNotFoundException();
		
		//Görüntüleme sayýsýný güncelle.
		product.setViews(product.getViews() + 1);
		productDAO.update(product);
		//------------------------------
		
		mv.addObject("title", product.getName());
		mv.addObject("product", product);
		mv.addObject("userClickShowProduct", true);

		return mv;
	}

}

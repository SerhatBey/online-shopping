package net.srhtss.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.srhtss.shoppingbackend.dao.ProductDAO;
import net.srhtss.shoppingbackend.dto.Product;

public class ProductTestCase {
	
private static AnnotationConfigApplicationContext context;
	
	
	private static ProductDAO productDAO;
	
	
	private Product product;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.srhtss.shoppingbackend");
		context.refresh();
		productDAO = (ProductDAO)context.getBean("productDAO");
	}
	
/*		@Test
	public void testCRUDProduct() {
		
		// create operation
		product = new Product();
				
		product.setName("Nokia Selfie S53");
		product.setBrand("Nokia");
		product.setDescription("Bu nokia cep telefonları için bazı açıklama!");
		product.setUnitPrice(25000);
		product.setActive(true);
		product.setCategoryId(3);
		product.setSupplierId(3);
		
		assertEquals("Yeni bir ürün eklerken bir şeyler ters gitti!",
				true,productDAO.add(product));		
		
		
		// reading and updating the category
		product = productDAO.get(2);
		product.setName("Samsung Galaxy S7");
		assertEquals("Mevcut kaydı güncellerken bir şeyler ters gitti!",
				true,productDAO.update(product));		
				
		assertEquals("Mevcut kayıt silinirken bir şeyler ters gitti!",
				true,productDAO.delete(product));		
		
		// list
		assertEquals("Ürün listesi alınırken bir şeyler ters gitti!",
				6,productDAO.list().size());		
				
	}
	
	
	@Test
	public void testListActiveProducts() {
		assertEquals("Ürün listesi alınırken bir şeyler ters gitti!",
				5,productDAO.listActiveProducts().size());				
	} 
		
	
	@Test
	public void testListActiveProductsByCategory() {
		assertEquals("Ürün listesi alınırken bir şeyler ters gitti!",
				3,productDAO.listActiveProductsByCategory(3).size());
		assertEquals("Ürün listesi alınırken bir şeyler ters gitti!",
				2,productDAO.listActiveProductsByCategory(1).size());
	} */
	
	@Test
	public void testGetLatestActiveProduct() {
		assertEquals("Ürün listesi alınırken bir şeyler ters gitti!",
				3,productDAO.getLatestActiveProducts(3).size());
		
	} 

}

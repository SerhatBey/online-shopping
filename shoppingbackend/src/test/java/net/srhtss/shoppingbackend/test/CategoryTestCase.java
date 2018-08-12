package net.srhtss.shoppingbackend.test;


import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.srhtss.shoppingbackend.dao.CategoryDAO;
import net.srhtss.shoppingbackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init() {
		
		context= new AnnotationConfigApplicationContext();
		context.scan("net.srhtss.shoppingbackend");
		context.refresh();
		categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
	}
	
/*	@Test
	public void testAddCategory() {
		
		category= new Category();
		
		category.setName("Oyuncak");
		category.setDescription("Oyuncak Bazlı Kategori");
		category.setImageURL("CAT_6.png");
		
		assertEquals("Categeory Test İşlemi Başarılı.",true,categoryDAO.add(category));
	}
	*/
	
/*	@Test
	public void testGetCategory() {
		
		category=categoryDAO.get(1);
		assertEquals("Tablodan tek bir kategori başarıyla alındı.","Bilgisayar",category.getName());
	}
	*/
	
/*	@Test
	public void testUpdateCategory() {
		
		category=categoryDAO.get(1);
		category.setName("Televizyon");
		assertEquals("Tablodan tek bir kategori başarıyla alındı.",true,categoryDAO.update(category));
	}
	*/
	
/*	@Test
	public void testDeleteCategory() {
		
		category=categoryDAO.get(1);
		assertEquals("Tablodan tek bir kategori başarıyla silindi.",true,categoryDAO.delete(category));
	}
	*/

/*	@Test
	public void testListCategory() {
		//0.1.2.3
		assertEquals("Tablodan kategoriler listesi başarıyla alındı.",3,categoryDAO.list().size());
	}
	*/
	
/*	@Test
	public void testCRUDCategory() {
		
		
		YAPILMADI GEREKSİZ DİYE.
		
	}
	*/
}

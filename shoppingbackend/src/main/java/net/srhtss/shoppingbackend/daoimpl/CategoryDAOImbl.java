package net.srhtss.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.srhtss.shoppingbackend.dao.CategoryDAO;
import net.srhtss.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImbl implements CategoryDAO {
	
	private static List<Category> categories = new ArrayList<>();
	
	static {
		
		Category category = new Category();
		
		category.setId(1);
		category.setName("Televizyon");
		category.setDescription("Lcd ekran televizyonlarımız gelmiştir.");
		category.setImageURL("CAT_1.png");
		categories.add(category);
		
		category = new Category();
		category.setId(2);
		category.setName("Mobil");
		category.setDescription("Android ve Ios telefonlar gelmiştir.");
		category.setImageURL("CAT_2.png");
		categories.add(category);
		
		category = new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("Oyun bilgisayarları gelmiştir.");
		category.setImageURL("CAT_3.png");
		categories.add(category);

	}
	
	

	@Override
	public List<Category> list() {
		
		return categories;
	}



	@Override
	public Category get(int id) {
	
		for (Category category: categories) {
			
			if (category.getId() == id) return category;
			
		}
		return null;
	}

}

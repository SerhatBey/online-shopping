package net.srhtss.shoppingbackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
 
@Configuration
@ComponentScan(basePackages= {"net.srhtss.shoppingbackend.dto"})
@EnableTransactionManagement
public class HibernateConfig {
	
	//Seçeceğimiz Veritabı temel olarak aşağıdaki bilgiler ile değiştirilecektir.
	
	private final static String DATABASE_URL="jdbc:h2:tcp://localhost/~/onlineshopping3";
	private final static String DATABASE_DRIVER="org.h2.Driver";
	private final static String DATABASE_DIALECT="org.hibernate.dialect.H2Dialect";
	private final static String DATABASE_USERNAME="sa";
	private final static String DATABASE_PASSWORD="";
	
	//dataSource bean mevcut olacak.
	
	@Bean
	public DataSource getDataSoruce() {
		
		BasicDataSource dataSoruce = new BasicDataSource();
		
		//Veri tabanı bağlantı bilgilerinin sağlanması.
		dataSoruce.setDriverClassName(DATABASE_DRIVER);
		dataSoruce.setUrl(DATABASE_URL);
		dataSoruce.setUsername(DATABASE_USERNAME);
		dataSoruce.setPassword(DATABASE_PASSWORD);
		
		return dataSoruce;
	}
	
	//sessionFaktory bean mevcut olacak.
	
	@Bean
	public SessionFactory getSessionFactory(DataSource dataSoruce) {
		
		
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSoruce);
		
		builder.addProperties(getHibernateProperties());
		builder.scanPackages("net.srhtss.shoppingbackend.dto");
		
		return builder.buildSessionFactory();
	}

	
	//Hibernate özelikleri burada iyade edilecek.
	private Properties getHibernateProperties() {
		
		Properties properties = new Properties();
		
		properties.put("hibernate.dialect", DATABASE_DIALECT);
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.format_sql", "true");	
		
		return properties;
	}
	
	
	//transactionManager  bean mevcut olacak.
	
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		
		HibernateTransactionManager transactionManager= new HibernateTransactionManager(sessionFactory);
	
		
		return transactionManager;
	}

}
